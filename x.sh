#!/bin/zsh

while true; do
    read -t 5 input
    if [ "$input" = ".x" ]; then
        result=$(aider --model ollama/llama3.2 --message "make a script that setup this repo's doc" setup.sh --no-show-model-warnings --yes)

        echo "Result:"
        echo "$result"

        if [ $? -eq 0 ]; then
            echo "Command executed successfully"
        else
            echo "Error occurred"
        fi

    elif [ -z "$input" ]; then
        continue

    else
        echo "Invalid command. Please try again."
    fi
done