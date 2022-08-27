use proc_macro::{
    //Group,
    //Ident,
    TokenStream,
    TokenTree,
};

use syn::{parse_macro_input, DeriveInput};
use quote::quote;
// use std::process::{Command, Stdio};





// pub struct QuantumError(String);
// pub struct QuantumResult(Result<T, QuantumError>);

#[proc_macro_attribute]
pub fn quantum_kernel(attr: TokenStream, item: TokenStream) -> TokenStream {
    // Parse through ParseQuantumKernel. First with fn_name field. Then with other thing. Then thats it.
    // println!("item: \"{:?}\"", item);
    // let clone = item.clone();
    // let input = parse_macro_input!(clone as DeriveInput);
    // println!("######################\n{:?}", input.ident);
    
    ////////////////////////////////////////////////////////
    /// EXTRACT the function name and parameters here
    ////////////////////////////////////////////////////////
    let ident = item.clone().into_iter().skip(1).next().unwrap();
    let fn_name = syn::Ident::new(&ident.to_string(), ident.span().into());
    
    ////////////////////////////////////////////////////////
    /// EXTRACT OPENQASM CODE HERE
    ////////////////////////////////////////////////////////
    let groups: Vec<TokenTree> = item.clone().into_iter()
    .filter(|part| if let TokenTree::Group(x) = part { true } else { false })
    .collect();
    // let body = groups[1];
    // let body: String = groups[1].to_string();
    // println!("{}", groups[1].to_string());
    //^^^^^^^ expected `&str`, found enum `proc_macro::TokenTree`
    
    
    ////////////////////////////////////////////////////////
    /// INSERT QCOR CALL HERE
    ////////////////////////////////////////////////////////
    // let cmd = std::process::Command::new("ls").output().unwrap();
    // let output = String::from_utf8(cmd.stdout).unwrap();
    
    
    
    
    let output = std::process::Command::new("qcor-mlir-tool")
    .args(&["-emit=llvm", groups[1].to_string().as_str()])
    .stderr(std::process::Stdio::piped())                      // Configuration for the child process’s standard output (stdout) handle.
    .output()                                 // Executes the command as a child process, waiting for it to finish and collecting all of its output.
    .expect("ERROR: Cannot run command.");    // Almost the same as unwrap(). However, can set a customized message for the panics.
    
    println!("######################\n{}", groups[1].to_string().as_str());
    
    let output_successful = output.status.success();
    
    // If there is an error then do the following
    if !output_successful {
        println!("ERROR: Unable to run QCOR command qcor-mlir-tool. Check your Rust build.rs file");
        // TODO: Exit program;
    }

    // Convert stdout output stream into string.
    let qcor_llvm:String = String::from_utf8(output.stderr).unwrap();
    //println!("{}", qcor_llvm);



    ////////////////////////////////////////////////////////
    /// RETURN NEW FUNCTION HERE
    ////////////////////////////////////////////////////////
    return quote!(
        fn #fn_name(param: i8) -> Result<i8, String> {
            const __kernel_llvm_ir: &'static str = #qcor_llvm;
            // Not sure what goes here, but something like...
            // let result = OPENQASM_CALL_IR(_kernel_llvm_ir);

            Err(String::from(__kernel_llvm_ir))
        }
    ).into();
}




// Just parsing
// struct ParsedQuantumKernel {
//     function_name: 
//     params:
//     return_t: QuantumResult<i8> // When doing parsing, always enforce that this is a QuantumResult.
//     body:                       // OpenQASM3 code. 
// }

// Just Compile QuantumKernel
// impl ParsedQuantumKernel {
//     fn compile(&self) -> Result<String>; // Err maybe pass flags because QCOR provides llvm through stderr.
// }