#![allow(unused_doc_comments)]
// use syn::{parse_macro_input, DeriveInput};
// use std::process::{Command, Stdio};
// use syn::token::Group;
// use std::error::Error;
use quote::quote;
use proc_macro::{
    //Group,
    //Ident,
    TokenStream,
    TokenTree,
};


// pub struct QuantumError(String);
// pub struct QuantumResult(Result<T, QuantumError>);


struct ParsedQuantumKernel {
    function_name: syn::Ident,
    params: proc_macro::TokenTree,
//     return_t: QuantumResult<i8> // When doing parsing, always enforce that this is a QuantumResult.
    body: proc_macro::TokenTree    // OpenQASM3 code. 
}


impl ParsedQuantumKernel {
    fn compile(&self) -> Result<String, String> 
    /*********************************************
     *       Purpose: Used to compile QuantumKernel
     *  Precondition: Pending . . . 
     * Postcondition: Pending . . .
     *          TODO: Err maybe pass flags because QCOR provides llvm through stderr.
    *********************************************/
    { 
        let output = std::process::Command::new("qcor-mlir-tool")
        .args(&["-emit=llvm", self.body.to_string().as_str()])
        .stderr(std::process::Stdio::piped())     // Configuration for the child process’s standard output (stdout) handle.
        .output()                                 // Executes the command as a child process, waiting for it to finish and collecting all of its output.
        .expect("ERROR: Cannot run command.");    // Almost the same as unwrap(). However, can set a customized message for the panics.
        
        let output_successful = output.status.success();
        
        let _qcor_llvm: Result<String, String> = match output_successful {
                                                    true => {
                                                        // Convert stderr output stream into string.
                                                        return Ok(String::from_utf8(output.stderr).unwrap());
                                                    },
                                                    false => {
                                                        // TODO: Exit program;
                                                        return Err("ERROR: Unable to run QCOR command qcor-mlir-tool. Check your Rust lib.rs file. Check the compile function.".to_string());
                                                    }
                                                };
    }
}





#[proc_macro_attribute]
pub fn quantum_kernel(_attr: TokenStream, item: TokenStream) -> TokenStream {
    println!("########################### TokenStream ############################\n{:?}", item);   
    
    ////////////////////////////////////////////////////////
    /// EXTRACT the function name and parameters here
    ////////////////////////////////////////////////////////
    let   ident: proc_macro::TokenTree = item.clone().into_iter().skip(1).next().unwrap();
    let fn_name: syn::Ident            = syn::Ident::new(&ident.to_string(), ident.span().into());

    let     ident2: proc_macro::TokenTree = item.clone().into_iter().skip(2).next().unwrap();
    // TODO: Need to extract parameters, and put them into a list. This should give a list of syn::Ident
    let parameters: proc_macro::TokenTree = ident2.clone(); 

    //println!("_________________{}", ident2);
    // println!("_________________{}", paramaters);

    
    
    ////////////////////////////////////////////////////////
    /// EXTRACT OPENQASM CODE HERE
    ////////////////////////////////////////////////////////
    let groups: Vec<TokenTree> = item.clone().into_iter()
    .filter(|part| if let TokenTree::Group(_x) = part { true } else { false })
    .collect();
    // let body = groups[1];
    // let body: String = groups[1].to_string();
    // println!("{}", groups[1].to_string());
    //^^^^^^^ expected `&str`, found enum `proc_macro::TokenTree`
    println!("########################### QCOR Input ############################\n{}", groups[1].to_string().as_str());
    


    // Gather all relevent information from tokenstream. Parse OpenQasm 2.0 using rust crate.
    // https://crates.io/crates/openqasm
    let parsed_quantum_kernel = ParsedQuantumKernel{
                                function_name: fn_name.clone(),
                                params: parameters.clone(),
                                body: groups[1].clone()
                            };



    ////////////////////////////////////////////////////////
    /// INSERT QCOR CALL HERE
    ////////////////////////////////////////////////////////        
    let qcor_llvm:String = parsed_quantum_kernel.compile().unwrap();
    // //println!("{}", qcor_llvm);



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
