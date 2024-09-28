
# OneDrive Git Auto Push

## Overview
This script automates the process of pushing changes from a OneDrive-synced folder to a GitHub repository.

## Installation

1. Clone the repository or download the files.
2. Update the `config.sh` file with your OneDrive folder and GitHub repository details.
3. Run the following commands to install and set up the cron job:
   
   ```bash
   make install
   make setup-cron
   ```

## Configuration
- **PROJECT_DIR**: Path to the OneDrive folder containing your project.
- **GITHUB_REPO**: The URL of your GitHub repository.
- **COMMIT_MESSAGE**: The default commit message.

## Logs
All logs are stored in the `logs/push.log` file.
