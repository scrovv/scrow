import sys

from business_logic_layer import greeting

if __name__ == '__main__':
    if len(sys.argv) != 2:
        print("Usage: python main.py <name>")
        exit(1)
    greeting(sys.argv[1])
