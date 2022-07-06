// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.
// Source: https://quantumcomputing.com/strangeworks/projects/q-simple-quantum-algorithms/files/BernsteinVazirani.ipynb

namespace BV {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Arrays;
    open Microsoft.Quantum.Convert;

    //////////////////////////////////////////////////////////////////////////
    // Bernstein-Vazirani Quantum Algorithm //////////////////////////////////
    //////////////////////////////////////////////////////////////////////////


    /// # Input
    /// ## Uf
    /// A quantum operation that implements |ð¥ã|ð¦ã â¦ |ð¥ã|ð¦ â ð(ð¥)ã,
    /// where ð is a Boolean function that implements a parity Î£áµ¢ ðáµ¢ ð¥áµ¢.
    /// ## n
    /// The number of bits of the input register |ð¥ã.
    ///
    /// # Output
    /// An array of type `Bool[]` that contains the parity ðâ = (ðâ, â¦, ðâââ).
   
    /// # References
    /// - [ *Ethan Bernstein and Umesh Vazirani*,
    ///     SIAM J. Comput., 26(5), 1411â1473, 1997 ](https://doi.org/10.1137/S0097539796300921)
    operation LearnParityViaFourierSampling(Uf : ((Qubit[], Qubit) => Unit), n : Int) : Bool[] {
        // Now, we allocate n + 1 clean qubits. Note that the function Uf is defined
        // on inputs of the form (x, y), where x has n bits and y has 1 bit.
        use (queryRegister, target) = (Qubit[n], Qubit()) {
            // The last qubit needs to be flipped so that the function will
            // actually be computed into the phase when Uf is applied.
            X(target);

            within {
                // Now, a Hadamard transform is applied to each of the qubits.
                // As the last step before the measurement, a Hadamard transform is
                // applied to all qubits except last one. We could apply the transform to
                // the last qubit also, but this would not affect the final outcome.
                // We use a within-apply block to ensure that the Hadmard transform is
                // correctly inverted.
                ApplyToEachA(H, queryRegister);
            } apply {
                H(target);
                // We now apply Uf to the n+1 qubits, computing |x, yã â¦ |x, y â f(x)ã.
                Uf(queryRegister, target);
            }

            // The following for-loop measures all qubits and resets them to
            // zero so that they can be safely returned at the end of the
            // using-block.
            let resultArray = ForEach(MResetZ, queryRegister);

            // The result is already contained in resultArray so no further
            // post-processing is necessary.
            Message($"measured: {resultArray}");

            // Finally, the last qubit, which held the y-register, is reset.
            Reset(target);
            return ResultArrayAsBoolArray(resultArray);
        }
    }


    // As is idiomatic in Q#, we define an operation that we will typically
    // only call by partially applying it from within a matching function.
    // To indicate that we are using this idiom, we name the operation
    // with an initial underscore to mark it as private, and provide
    // documentation comments for the function itself.
    internal operation ParityOperationImpl(pattern : Bool[], queryRegister : Qubit[], target : Qubit) : Unit {
        if (Length(queryRegister) != Length(pattern)) {
            fail "Length of input register must be equal to the pattern length.";
        }

        for (patternBit, controlQubit) in Zipped(pattern, queryRegister) {
            if (patternBit) {
                Controlled X([controlQubit], target);
            }
        }
    }


    /// # Summary
    /// Given a bitstring ðâ = (râ, â¦, râââ), returns an operation implementing
    /// a unitary ð that acts on ð + 1 qubits as
    ///
    ///       ð |ð¥ã|ð¦ã = |ð¥ã|ð¦ â ð(ð¥)ã,
    /// where ð(ð¥) = Î£áµ¢ ð¥áµ¢ ðáµ¢ mod 2.
    ///
    /// # Input
    /// ## pattern
    /// The bitstring ðâ used to define the function ð.
    ///
    /// # Output
    /// An operation implementing ð.
    function ParityOperation(pattern : Bool[]) : ((Qubit[], Qubit) => Unit) {
        return ParityOperationImpl(pattern, _, _);
    }


    // For convenience, we provide an additional operation with a signature
    // that's easy to call from C#. In particular, we define our new operation
    // to take an Int as input and to return an Int as output, where each
    // Int represents a bitstring using the little endian convention.
    operation RunBernsteinVazirani (nQubits : Int, patternInt : Int) : Int {
        let pattern = IntAsBoolArray(patternInt, nQubits);
        let result = LearnParityViaFourierSampling(ParityOperation(pattern), nQubits);
        return BoolArrayAsInt(result);
    }

    @EntryPoint()
    operation RunProgram (secretString : Int, nQubits : Int) : Unit {
        
        let guessedString = RunBernsteinVazirani(nQubits, secretString);
            if (guessedString != secretString) {
                fail $"Measured parity {guessedString}, but expected {secretString}.";
            }

        Message("Secret string successfully discovered!");
    }
}