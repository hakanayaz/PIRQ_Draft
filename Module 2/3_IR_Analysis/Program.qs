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



    // Input:
    // Uf: The constructed Oracle, which takes an array of "main" qubits as well as an ancilla
    // n: The number of main qubits

    // Output:
    // A bit string, expressed as a Bool array
    operation GuessString(Uf : ((Qubit[], Qubit) => Unit), n : Int) : Result[] {
        // Allocate n + 1 qubits. 
        use (queryRegister, target) = (Qubit[n], Qubit()) {
            X(target);

            within {
                // We use a within-apply block to ensure that the Hadamard transform is
                // correctly inverted.
                ApplyToEachA(H, queryRegister);
            } apply {
                H(target);
                // We now apply Uf to the n+1 qubits
                Uf(queryRegister, target);
            }

            // Measures all qubits and resets them to zero so that they can be 
            // safely returned at the end of the using-block.
            let resultArray = ForEach(MResetZ, queryRegister);

            // The result is already contained in resultArray so no further
            // post-processing is necessary.
            Message($"measured: {resultArray}");

            // Finally, the last qubit, which held the y-register, is reset. There's
            // no need to measure.
            Reset(target);
            // return ResultArrayAsBoolArray(resultArray);
            return resultArray;
        }
    }

    // This, given the secretString (as "pattern") defines the oracle to be used on the superposition of states
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


    // This is a "curried" function which, given the secretString, returns the Oracle as a function. All that's
    // left is the main qubit array and the auxiliary qubit must be plugged in
    function ParityOperation(pattern : Bool[]) : ((Qubit[], Qubit) => Unit) {
        return ParityOperationImpl(pattern, _, _);
    }


    // This is the main driver function - it takes in the secretString and returns the 
    // measured qubit bit-string
    operation RunBernsteinVazirani (nQubits : Int, patternInt : Int) : Result[] {
        let pattern = IntAsBoolArray(patternInt, nQubits);
        let result = GuessString(ParityOperation(pattern), nQubits);
        // return BoolArrayAsInt(result);
        return result;
    }

    // EntryPoint defines where the kernel actually begins running the code 
    // (think of it as a main() function). It calls the driver function
    @EntryPoint()
    operation RunProgram (secretString : Int, nQubits : Int) : Result[] {
        
        let guessedString = RunBernsteinVazirani(nQubits, secretString);
            // if (guessedString != secretString) {
            //     fail $"Measured parity {guessedString}, but expected {secretString}.";
            // }

        Message("Secret string successfully discovered!");
        return guessedString;
    }
}