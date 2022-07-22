namespace Maxcut {

    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Arrays;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Logical;
    
    /// # Summary
    /// This operation applies the X-rotation to each qubit with parameter beta.

    /// # Input
    /// ## Beta
    /// Angle by which to perform X rotation 
    /// ## target
    /// Target qubit register
    operation MixerHamiltonian(beta: Double, target: Qubit[]) : Unit is Adj + Ctl {
        ApplyToEachCA(Rx(2.0 * beta, _), target);
    }

    /// # Summary
    /// This operation applies the cost Hamiltonian to evaluate each edge in the graph.
    /// It applies a CNOT to the endpoints, with an RX in the middle, with parameter gamma.

    /// # Input
    /// ## gamma
    /// Parameter to describe rotation.
    /// ## edges
    /// Edges which describe the graph instance
    /// ## target
    /// Qubit register.
    operation InstanceHamiltonian(gamma : Double, edges: Int[][], target : Qubit[]) : Unit {
        for edge in edges {
            CNOT(target[edge[0]], target[edge[1]]);
            Rz(gamma, target[edge[1]]);
            CNOT(target[edge[0]], target[edge[1]]);
        }
    }

    /// # Summary
    /// Perform the QAOA
    ///
    /// # Input
    /// ## numVertices
    /// The number of vertices in the input graph
    /// ## edges
    /// The edges which make up the input graph
    /// ## Betas
    /// Parameters for the mixing layer.
    /// ## Gammas
    /// Parameters for the cost layer. The length of the shorter array between betas
    /// and gammas will determine p, how many layers are in the QAOA circuit

    /// # Output
    /// ## Measurement results as bool array which define a cut
    operation PerformQAOA(numVertices : Int, edges : Int[][], betas : Double[], gammas : Double[]) : Bool[] {
        // Run the QAOA circuit
        mutable result = [false, size = numVertices];
        use bitString = Qubit[numVertices];
        ApplyToEach(H, bitString); // prepare the uniform distribution
        for (beta, gamma) in Zipped(betas, gammas) {
            InstanceHamiltonian(gamma, edges, bitString); // do Exp(-i H_C tz)
            MixerHamiltonian(beta, bitString); // do Exp(-i H_0 tx)
        }
        return ResultArrayAsBoolArray(MultiM(bitString)); // measure in the computational basis
    }

    /// # Summary
    /// Calculate the total cost for the given result.
    ///
    /// # Input
    /// ## measureResults
    /// Bit string returned by circuit
    ///
    /// # Output
    /// ## finalCost
    /// Calculated cost of the specified cut
    function CalculatedVal(edges : Int[][], measuredResults : Bool[]) : Double {
        mutable finalCost = 0.0;
        for edge in edges {
            if Xor(measuredResults[edge[0]], measuredResults[edge[1]]) {
                set finalCost -= 1.0;
            }
        }
        return finalCost;
    }


    /// # Summary
    /// Run QAOA for a given number of trials on the defined graph.
    /// Reports on the max cut for the graph and how many of the runs resulted in the answer.
    
    /// # Input
    /// ## numTrials
    /// Number of trials to run the QAOA algorithm for.
    @EntryPoint()
    operation RunQAOATrials(numTrials : Int, verbose : Bool) : Unit {
        let gammas = [0.75666764];
        let betas = [1.0414764];

        let limit = 1E-6;
        let numVertices = 4;
        let edges = [[0, 1], [0, 3], [1, 2], [2, 3]];

        mutable bestValue = 0.0;
        mutable maxCut = [false, false, false, false];
        mutable successNumber = 0;

        for trial in 0..numTrials {
            let result = PerformQAOA(numVertices, edges, betas, gammas);
            let value = -1.0 * CalculatedVal(edges, result);
            if (verbose) {
                Message($"result = {result}, value = {value}");
            }
            if (value > bestValue + limit) {
                // New maxCut found - update
                set bestValue = value;
                set maxCut = result;
                set successNumber = 1;
            } elif (AbsD(value - bestValue) < limit) {
                set successNumber += 1;
            }
        }
        
        let runPercentage = IntAsDouble(successNumber) * 100.0 / IntAsDouble(numTrials);
        Message("Simulation is complete\n");
        Message($"Best bitstring found: {maxCut}, cost = {bestValue}");
        Message($"{runPercentage}% of runs found the max cut\n");
    }
}