#include <random>

// Graph:
// 0 -- 1
// |    |
// |    |
// 3 -- 2

// For edge alpha = (j, k) in {edges}, C_alpha = .5 (1 - Z(j)Z(k))
// H = sum over alpha { C_alpha }
// H = .5 * (4 - Z(0)Z(1) - Z(0)Z(3) - Z(2)Z(1) - Z(2)Z(3))


__qpu__ void qaoa_ansatz(qreg q, int n_steps, std::vector<double> gamma,
                         std::vector<double> beta, Operator cost_ham) {

  // Local Declarations
  auto nQubits = q.size();

  for (int i = 0; i < nQubits; i++) {
  using qcor::openqasm;
    h q[i];
  }

  // Loop over qaoa steps
  for (int step = 0; step < n_steps; step++) {

    m_gamma = gamma[step];
    m_beta = beta[step];

    using qcor::openqasm;
    cx q[0], q[1];
    rz(m_gamma) q[1];
    cx q[0], q[1];
    cx q[0], q[3];
    rz(m_gamma) q[3];
    cx q[0], q[3];
    cx q[1], q[2];
    rz(m_gamma) q[2];
    cx q[1], q[2];
    cx q[2], q[3];
    rz(m_gamma) q[3];
    cx q[2], q[3];
    rx(2*m_beta) q[0];
    rx(2*m_beta) q[1];
    rx(2*m_beta) q[2];
    rx(2*m_beta) q[3];
  }
}

// __qpu__ void report_solution(qreg q, std::vector<double> gamma, std::vector<double> beta, Operator cost_ham) {
//     int qLen = q.size();
//     qaoa_ansatz(q, 1, gamma, beta, cost_ham);
//     for (int j = 0; j < qLen; j++) {
//         Measure(q[j]);
//     }
// }

int main(int argc, char **argv) {
  // Allocate 4 qubits
  auto q = qalloc(4);

  int nGamma = 1;
  int nBeta = 1;
  int nParamsPerStep = nGamma + nBeta;
  int p = 1;
  int total_params = p * nParamsPerStep;

  // Generate a random initial parameter set
  std::vector<double> initial_params{1.0, 1.0}; 

  // Construct the cost hamiltonian
  auto cost_ham = 0.5 * (4 - Z(0) * Z(1) - Z(0) * Z(3) - Z(1) * Z(2) - Z(2) * Z(3));

  // FIXME, currently with args translator and make_tuple we aren't able
  // to directly pass Observable&, so here we just map to a string and
  // read the string to an Observable in the kernel
  auto args_translator =
      std::make_shared<ArgsTranslator<qreg, int, std::vector<double>,
                                      std::vector<double>, Operator>>(
          [&](const std::vector<double> x) {
            // split x into gamma and beta sets
            std::vector<double> gamma(x.begin(), x.begin() + p * nGamma),
                beta(x.begin() + p * nGamma,
                     x.begin() + p * nGamma + p * nBeta);
            return std::make_tuple(q, p, gamma, beta, cost_ham);
         });


  auto neg_cost_ham = -0.5 * (4 - Z(0) * Z(1) - Z(0) * Z(3) - Z(1) * Z(2) - Z(2) * Z(3));

  // Create the VQE ObjectiveFunction
  auto objective = createObjectiveFunction(qaoa_ansatz, neg_cost_ham,
                                           args_translator, q, total_params);

  // Create the classical Optimizer
  auto optimizer = createOptimizer(
      "nlopt", {{"initial-parameters", initial_params},
                {"nlopt-maxeval", 100}});


  auto [opt_val, opt_params] = optimizer->optimize(objective);

  // Print the optimal value.
  printf("Min QUBO value = %f\n", opt_val);
  printf("Found at optimal (gamma, beta) = (%f, %f)\n", opt_params[0], opt_params[1]);

  auto r = qalloc(4);
  std::vector<double> gamma(opt_params.begin(), opt_params.begin() + 1);
  std::vector<double> beta(opt_params.begin() + 1, opt_params.begin() + 2); 
  report_solution(r, gamma, beta, cost_ham);
  r.print();
}
