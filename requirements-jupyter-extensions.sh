#!/bin/sh

# Install NB Extensions
jupyter contrib nbextension install --sys-prefix

# Enable extension that allows displaying kernel output inline in cell markdown.
# Useful to emit nicely formatted variable values.
jupyter nbextension enable python-markdown/main

# Enable extension that can hide input fields
jupyter nbextension enable hide_input_all/main

# Enable code folding extension
jupyter nbextension enable codefolding/main
