#!/bin/bash

# Create a new directory for documentation if it doesn't exist
mkdir -p doc

# Initialize a new Markdown file for README
echo "Welcome to our repository!" > doc/README.md

# Add a link to the project homepage (assuming you have one)
echo "# Our Project" >> doc/README.md
echo "[Visit our website](https://your-project-website.com)" >> doc/README.md

# Create a new directory for API documentation if it doesn't exist
mkdir -p doc/api

# Initialize a new Markdown file for API documentation (assuming you have an API)
echo "API Documentation" > doc/api/index.md

# Install dependencies for Sphinx and autopep8
pip install sphinx autopep8

# Format docstrings using autopep8
find doc/source -name "*.py" -exec python -m autopep8 {} \;

# Create index.html file for the generated documentation
mkdir -p docs/_build
cp -r doc/_static docs/_build/
cp -r doc/_images docs/_build/
cp -r doc/_sphinx docs/_build/

# Add a script to run the Sphinx documentation server
echo "Starting Sphinx documentation server..."
python -m sphinx_autodoc_typehints serve --no-build docs/_build
