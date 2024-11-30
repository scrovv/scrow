# Top links:

https://manuagi.beehiiv.com/login/c23e2083-8ade-4a93-92b7-1149e1c3dc35?login_token=sRkfJkSJk14KLQ3GuXzCZvFEUeRhLjDW&token_id=aff39531-9358-492a-aacf-5ecfd40674e8&redirect_to=https%3A%2F%2Fmanuagi.beehiiv.com%2F

https://github.com/PierrunoYT/awesome-ai-dev-tools

**PROJECT IN DEVELOPMENT**

## Getting Started

To get started with this project, run `cd ghost/scripts && chmod +x script.sh` `./script.sh` in your terminal.
For auto-docker setup, navigate to ./ghost/apps/auto-docker and follow the instructions.

## Building Apps

To build apps, you can use the following commands:

- Getting started: `cd ghost/scripts && chmod +x script.sh` `./script.sh`
- For the main project: Run the command specified in the README.md for your specific use case (`make build` `python setup.py` `npm run`)

## Pipelines

The following pipelines can be used to automate workspace execution:

| Pipeline | Description |
| --- | --- |
| **e2e**: End-to-end pipeline for testing and validation | 1. Run `cd ghost/scripts && chmod +x script.sh` `./script.sh` in your terminal. 2. Navigate to ./ghost/apps/auto-docker and follow the instructions. 3. Run `make build` to build the project. 4. Run `python setup.py` to install dependencies. 5. Run `npm run` to start the application. |
| **dev**: Development pipeline for local development | 1. Run `cd ghost/scripts && chmod +x script.sh` `./script.sh` in your terminal. 2. Navigate to ./ghost/apps/auto-docker and follow the instructions. 3. Run `make build` to build the project. 4. Run `python setup.py` to install dependencies. 5. Run `npm run` to start the application. |
| **setup**: Setup pipeline for initial repository configuration | 1. Run `cd ghost/scripts && chmod +x setup_docs.sh` `./setup_docs.sh` in your terminal. 2. Navigate to ./ghost/docs and run `make build` to generate documentation. |

**script.sh**
