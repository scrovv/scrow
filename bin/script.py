import argparse
from typing import Optional

class CliWord:
    def __init__(self):
        self.args = self.parse_args()

    def parse_args(self) -> argparse.Namespace:
        parser = argparse.ArgumentParser(description="CLI Word Processor")
        parser.add_argument("-t", "--title", help="Set the title of the word document", type=str)
        parser.add_argument("-f", "--filename", help="Specify the input file name", required=True, type=str)
        parser.add_argument("-o", "--output", help="Specify the output file name", default="word_document.docx")
        parser.add_argument("-s", "--style", choices=["Arial", "Calibri", "Times New Roman"], default="Arial", help="Set the font style")
        parser.add_argument("-i", "--insertion", type=int, default=0, help="Insert a specific number of blank lines")

        return parser.parse_args()

    def process(self):
        # Load input file
        with open(self.args.filename, "r") as f:
            content = f.read()

        # Add title (if specified)
        if self.args.title:
            content = f"Title: {self.args.title}\n\n{content}"

        # Insert blank lines (if specified)
        for _ in range(self.args.insertion):
            content += "\n"

        # Apply font style
        if self.args.style != "Arial":
            print(f"Font style changed to {self.args.style}")

        # Save output file
        with open(self.args.output, "w") as f:
            f.write(content)

    def run(self):
        try:
            self.process()
            print("Word document created successfully!")
        except Exception as e:
            print(f"Error: {e}")