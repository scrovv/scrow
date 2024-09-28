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
