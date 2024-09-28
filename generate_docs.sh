#!/bin/bash

# Create necessary directories for Sphinx
mkdir -p docs/source docs/build

# Run sphinx-apidoc to generate documentation
sphinx-apidoc -o docs/source source/

# Build the documentation using Sphinx
make html
