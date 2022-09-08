FROM qcor/qcor:latest

# Add rust dependencies
RUN sudo apk --no-cache add rustup && (yes 1 | rustup-init)
RUN echo "source $HOME/.cargo/env" >> "$HOME/.bashrc"

CMD ["/bin/bash"]