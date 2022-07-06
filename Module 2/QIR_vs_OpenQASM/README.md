[Report](https://docs.google.com/document/d/1Mm8Awpg9EmYd_EZ174gTj6gb3GCTL2kfzUekGIlJap8/edit?usp=sharing)

First, follow [this link](https://docs.microsoft.com/en-us/azure/quantum/install-command-line-qdk) to setup an environment. We will be using VS Code.

Check: is dotnet a recognized command?

Now, you're ready to run the Bernstein-Vazirani project. Here are some sample runs for you to try:

`dotnet run --secret-string 3 --n-qubits 3`
`dotnet run --secret-string 7 --n-qubits 3`
`dotnet run --secret-string 16 --n-qubits 5`

Feel free to try your own (making sure that your secret string can be expressed in a binary string of at most n-qubits).

Now, we want to examine the QIR of this code.

As per [the documentation](https://github.com/microsoft/qsharp-compiler/tree/main/src/QsCompiler/QirGeneration), we've added the following line to our <Bernstein-Vazirani.csproj> project file.

`    <QirGeneration>true</QirGeneration>    `

This generates the QIR of our program for us, [here](Bernstein-Vazirani_QIR.ll).

We want to compare the OpenQASM.



