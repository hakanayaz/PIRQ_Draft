/////////////////////////////////////////
// List of TODOs:
//      1) Custom Parsing of OpenQasm code. 
//      2) Have rust compiler ignore the openqasm error.
//      3) Figure out how to have theta variable values change in openqasm code at simple.rs
////////////////////////////////////////


use quote::quote;
use quote::{ToTokens};
use proc_macro::{
    //Group,
    //Ident,
    TokenStream,
    TokenTree,
};

// Needed for custom parsing of procedueal macro.
use syn::{parse_macro_input, FnArg};
use syn::parse::{Parse, ParseStream};
use syn::token::Comma;
// use syn::punctuated::Punctuated;
use std::ops::Deref;

// TODO: For STEP 4. Can do this after step 3 is done. 
// pub struct QuantumError(String);                    // String is Runtime error. 
// pub struct QuantumResult(Result<T, QuantumError>);  // T is whatever datatype we expect to get back from quantum device.
// trait ValidQuantumResult                            // Implement this trait for quantum devices that are allowed.


struct ParsedQuantumKernel {
    function_name: syn::Ident,
           params: syn::punctuated::Punctuated<FnArg, Comma>,  // Depends on how syn parses the function. Syn will hae a function paameter list for  params.
             body: Box<syn::Block>                             // OpenQASM3 code.  // Should be whatever dataype the create reaturns back. https://crates.io/crates/openqasm
      // return_t: QuantumResult<i8>                           // TODO: For STEP 4. Can do this after step 3 is done. // When doing parsing, always enforce that this is a QuantumResult.
}


impl Parse for ParsedQuantumKernel {
    fn parse(input: ParseStream) -> Result<ParsedQuantumKernel, syn::Error> 
    /**************************************************************************
     *       Purpose: Parses through entire quantum kernel function. 
     *                Returns an instantiated ParsedQuantumKernel object containing
     *                the quantum kernel function name, quantum kernel parameters,
     *                and openqasm code in the body of the quantum kernel rust procedural macro. 
     *  Precondition: Pending . . . 
     * Postcondition: If input Parsestream is not empty, return Ok(ParsedQuantumKernel). If Parsestream is empty return Err(syn::Error). 
     *          TODO: More error checking when unwrapping. 
    ***************************************************************************/
    {
        
        // Grabs entire quantum kernel function. This corresponds to a syn::ItemFn object. 
        // https://docs.rs/syn/latest/syn/struct.ItemFn.html
        if input.is_empty() {
            println!("RUNTIME ERROR: ParseStream is empty. Error occurs in lib.rs file.");
            // TODO: Return a syn::Error object. For example: return Err(new::syn::Error(. . .));
        }

        let temp1:Result<syn::ItemFn, syn::Error> = input.parse();
        
        // For Debugging. Check that there is nothing left to parse.
        // if input.is_empty() {
        //     println!("Finished Parsing. Empty Stream.");
        // }
        
        let func_name = temp1.as_ref().unwrap().clone().sig.ident;
        let func_params = temp1.as_ref().unwrap().clone().sig.inputs;
        // TODO: Parse through OpenQASM code using rust crate. // https://crates.io/crates/openqasm
        let func_body = temp1.as_ref().unwrap().clone().block;
        
        // For Debugging. 
        // println!("Inside parse function: --->{}<---", temp1.as_ref().unwrap().sig.ident.to_string());
        // println!("Inside parse function: --->{}<---", temp1.as_ref().unwrap().sig.inputs.iter().last().unwrap().to_token_stream());
        // println!("Inside parse function: --->{}<---", temp1.as_ref().unwrap().block.deref().stmts.get(0).unwrap().to_token_stream());
        
        // Return an instantiated object containing the function name, parameters, and openqasm code of the quantum kernel procedural macro.
        let val: syn::Result<ParsedQuantumKernel> =   Ok(ParsedQuantumKernel {
                                                        function_name: func_name,
                                                        params: func_params,
                                                        body: func_body
                                                    });
        return val;
    }
}


impl ParsedQuantumKernel {
    fn compile(&self) -> Result<String, String> 
    /**************************************************
     *       Purpose: Used to compile QuantumKernel
     *  Precondition: Pending . . . 
     * Postcondition: Pending . . .
     *          TODO: Err maybe pass flags because QCOR provides llvm through stderr.
    ***************************************************/
    { 
        let output = std::process::Command::new("qcor-mlir-tool")
        .args(&["-emit=llvm", self.body.deref().stmts.get(0).unwrap().to_token_stream().to_string().as_str()])
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
    ////////////////////////////////////////////////////////
    // For Debugging.
    ////////////////////////////////////////////////////////
    let temp1 = item.clone();

    println!("########################### TokenStream ############################\n{:?}", temp1);   

    let parsed_quantum_kernel: ParsedQuantumKernel = parse_macro_input!(temp1 as ParsedQuantumKernel);
    println!("########################### Parsed Items ############################\n");
    println!("Inside qk function,    function name: --->{}<---", parsed_quantum_kernel.function_name);
    println!("Inside qk function,  first parameter: --->{}<---", parsed_quantum_kernel.params.iter().next().unwrap().to_token_stream());
    println!("Inside qk function, second parameter: --->{}<---", parsed_quantum_kernel.params.iter().last().unwrap().to_token_stream());
    println!("Inside qk function,             body: --->{}<---", parsed_quantum_kernel.body.deref().stmts.get(0).unwrap().to_token_stream());

    // let parsed_qk_fn: Result<syn::Ident, syn::Error> = parsed_qk.function_name;
    // match parsed_qk_fn {
    //     Ok(val) => println!("------------>{}<------------", val),
    //     Err(e) => println!("COMPILE TIME ERROR in lib.rs: {}", e)
    // };
    


    ////////////////////////////////////////////////////////
    // EXTRACT the function name and parameters here
    ////////////////////////////////////////////////////////
    let fn_name: syn::Ident                                = parsed_quantum_kernel.function_name.clone();
    let _params: syn::punctuated::Punctuated<FnArg, Comma> = parsed_quantum_kernel.params.clone();



    ////////////////////////////////////////////////////////
    // INSERT QCOR CALL HERE
    ////////////////////////////////////////////////////////        
    // let qcor_llvm:String = "hello".to_string(); // For Debugging.
    let qcor_llvm:String = parsed_quantum_kernel.compile().unwrap();
    println!("########################### QCOR LLVM ############################\n{:?}", qcor_llvm);   



    ////////////////////////////////////////////////////////
    // RETURN NEW FUNCTION HERE
    ////////////////////////////////////////////////////////
    return quote!(
        fn #fn_name(theta1: i8, theta2: i32) -> Result<i8, String> {
            const __kernel_llvm_ir: &'static str = #qcor_llvm;
            // Not sure what goes here, but something like...
            // let result = OPENQASM_CALL_IR(_kernel_llvm_ir);

            Err(String::from(__kernel_llvm_ir))
        }
    ).into();
}
