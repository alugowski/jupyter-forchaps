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

# Enable extension that can emit PDFs using `nbconvert`.
# This has to be configured, as the default is to emit HTML. This configuration must be done in the UI
# as there is no programmatic way to configure extensions yet. See the README.
jupyter nbextension enable printview/main