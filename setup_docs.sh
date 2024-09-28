#!/bin/bash

# Initialize documentation directory if it doesn't exist
mkdir -p doc

# Initialize a new Markdown file for README
echo "Welcome to our repository!" > doc/README.md

# Create a new directory for API documentation if it doesn't exist
mkdir -p doc/api

# Initialize a new Markdown file for API documentation
echo "API Documentation" > doc/api/index.md

# Create a CNAME file to link to the project homepage
echo "your-project-website.com" > doc/CNAME
