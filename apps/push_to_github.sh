
#!/bin/bash

# Load configuration
source /path/to/your/git-auto-push/config.sh

# Navigate to the project directory
cd "$PROJECT_DIR"

# Log file
LOG_FILE="/path/to/your/git-auto-push/logs/push.log"

# Make sure the directory exists
if [ $? -ne 0 ]; then
  echo "Directory $PROJECT_DIR does not exist." >> $LOG_FILE 2>&1
  exit 1
fi

# Add changes, commit them, and push to GitHub, logging output and errors
{
  git add .
  git commit -m "$COMMIT_MESSAGE"
  git push origin main
} >> $LOG_FILE 2>&1
