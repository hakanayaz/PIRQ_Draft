# QIR and OpenQASM 3

Here, we examine the suitability of two widely used quantum computing IR's to be a Practical Intermediate Representation for Quantum, namely Microsoft's [Quantum Intermediate Representation (QIR)](https://devblogs.microsoft.com/qsharp/introducing-quantum-intermediate-representation-qir/) and IBM's [OpenQASM 3](https://github.com/openqasm/openqasm). For a detailed comparison of the functionality of each, feel free to read through their respective documentations ([here](https://github.com/qir-alliance/qir-spec/tree/main/specification) for QIR and [here](https://openqasm.com/intro.html) for OpenQASM), or read [this prepared report](https://docs.google.com/document/d/1Mm8Awpg9EmYd_EZ174gTj6gb3GCTL2kfzUekGIlJap8/edit?usp=sharing) for insight into their respective capabilities and expected roles.

## A Q# Code Example

While the documentations and analysis may be informative, it can be tough to get a clear and concrete idea of how these differences may manifest themselves in the actual representation of a single code snippet. To that end, we will examine the Bernstein-Vazirani algorithm implemented in Q#, and generate both its QIR and (hopefully; WIP) OpenQASM 3.

## Q# Setup

Q# can be written and run in many ways. Choose the way which is most convenient for you, and follow the steps given [here](https://docs.microsoft.com/en-us/azure/quantum/install-command-line-qdk) to setup an environment. 

For our part, we will be using VS Code; if you'd like to follow along, all you have to do is download and install [.NET SDK 6.0](https://dotnet.microsoft.com/download) and install the Microsoft Quantum Development Kit from VS Code's Extensions tab.

> Setup Check: Type `dotnet` into your terminal. Is it a recognized command?

## Bernstein-Vazirani

Now, you're ready to run the Bernstein-Vazirani project. The actual Q# code is found in [Program.qs](Program.qs), and some added settings and properties for the project are in [Bernstein-Vazirani.csproj](Bernstein-Vazirani.csproj) (this will be important later). As input, the program takes a decimal number, the binary string of which serves as the "secret string" for the algorithm, and the number of bits in its string. For example, to have the program attempt to guess the string `0101`, the arguments given to the program should be `--secret string 5` and `--n-qubits 4`.

Here are some sample runs for you to try:

`dotnet run --secret-string 3 --n-qubits 3`

`dotnet run --secret-string 7 --n-qubits 3`

`dotnet run --secret-string 16 --n-qubits 5`

Feel free to try your own (making sure that your secret string can be expressed in a binary string of at most n-qubits).

## QIR Generation

Now, we want to examine the QIR of this code.

As per [the Q# Compiler documentation](https://github.com/microsoft/qsharp-compiler/tree/main/src/QsCompiler/QirGeneration), we need to add the following line to our [Bernstein-Vazirani.csproj](Bernstein-Vazirani.csproj) project file.

`<QirGeneration>true</QirGeneration>`

Add it in between the opening and closing `PropertyGroup` tags. This setting, when we once agin run a `dotnet run` command, generates the QIR of our program for us, [here](Bernstein-Vazirani_QIR.ll).


## OpenQASM 3 (W.I.P)

Ideally, we'd next like to generate the OpenQASM 3 representation of our project, but as of now there doesnt seem to be a way to do that. There **is** a Q# --> OpenQASM 2 pipeline (for Q# programs which can even be expressed in OpenQASM 2, so no conditional flow etc.) which can be found [here](https://github.com/qsharp-community/qsharp-integrations/tree/main/src/OpenQasmExporter) which indicates that Q# --> OpenQASM 3 may be supported in the future.

Instead, what we'll do here is examine some of the lines in the QIR and demonstrate how they might (in the authors' opinion) be expressed in OpenQASM 3.
