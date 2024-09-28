
install:
    @echo "Installing OneDrive Git Auto Push"
    @chmod +x bin/push_to_github.sh
    @echo "Setup complete. You can now run ./bin/push_to_github.sh"

setup-cron:
    @echo "Setting up cron job to run every 10 minutes"
    (crontab -l 2>/dev/null; echo "*/10 * * * * /bin/bash /path/to/your/full-one-drive-git-auto-push/bin/push_to_github.sh >> /path/to/your/full-one-drive-git-auto-push/logs/push.log 2>&1") | crontab -
