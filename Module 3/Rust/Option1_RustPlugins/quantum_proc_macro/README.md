# Using Rust Procedural Macros To Create a Quantum Kernel - **IN PROGRESS . . .** 

## Prerequisites
1) Must have docker installed on your local machine. May download [HERE](https://docs.docker.com/engine/install/)

2) Must have a docker file containing both QCOR and Rust(i.e. so that the Rust build script can call QCOR). The Dockerfile included in the [Docker_build](../Docker_Build/) directory accomplishes this.  

## Quick Background
All this code is stored on your local machine. However, this code needs to be mounted into the docker container so that it can see it. This way, the docker container (which has QCOR and Rust and any other build tools) can compile your code (the code calls into the tools). Whenever the container is stopped, all the code changes are still stored on your local machine.

## Running
1. Open a terminal on your local machine. Does not matter which directory you are in. Run the following command to open a web based Visual Studio Code on your web browser:

    `docker run -it --rm -p 8080:8080 -v  LOCAL_PATH_HERE:/code    pirq/buildenv    /bin/bash`

    Replace LOCAL_PATH_HERE with the absoulte path to where the `warmup_rust_build_script` folder is on your local machine. For example, it may look like:

    `docker run -it --rm -p 8080:8080 -v  "C:\Users\Danie\Documents\New\PIRQ_Draft\Module 3\Rust\Option1_RustPlugins\warmup_rust_build_script":/code    pirq/buildenv    /bin/bash`

    Notice the `""` around my absolute path. This is necessary because there is a space, at `Module 3`

    Your terminal on your local machine should be doing some http tasks like this.

    ![alt text](Images/Run_Docker_On_Local_Terminal.png)

2. Copy this link and paste it into a web based browser of your choice:

   `http://localhost:8080/`

    You should see a visual studio code interface.

3.  When you try to open up a folder you should see this. Click on the green box twice to get to the `\code` folder 

    ![alt text](Images/VSCode_Web_Interface.png)


    Open up the folder `/code` by clicking OK.
    ![alt text](Images/VSCode_Web_Interface2.png)

    You should now be able to see the files in `warmup_rust_build_script`

4. Open a terminal in the web based visual studio code interface. **Our rust version is not up to date so do the following only once:** 
    1. `sudo apk del rust cargo`
    2. `sudo apk add rustup`
    3. `rustup-init`
    4. `cargo build`
5. On the same terminal compile then run program with `cargo run --example simple`

5. **Expected Output In Progress . . .**

## Resources
1. [Rust Macros - Declarative Macros and Procedural Macros](https://doc.rust-lang.org/book/ch19-06-macros.html)
2. [Rust Compiler Plugins](https://www.cs.brandeis.edu/~cs146a/rust/doc-02-21-2015/book/plugins.html)
3. [Rust Compiler Plugins - Alternative Link](https://itfanr.gitbooks.io/rust-doc-en/content/compiler-plugins.html)
    
    a. [More information of Rust Plugins](https://doc.rust-lang.org/unstable-book/language-features/plugin.html)

    b. [Article of Rust Plugins](https://nullderef.com/blog/plugin-start/) 


## Acknowledgements
Nicholas Cioli of Zapata Computing