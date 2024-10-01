from sys import argv, exit
from greeting_service import greeting

if __name__ == '__main__':
    if len(argv) != 2:
        print("Usage: python data_access_layer.py <name>")
        exit(1)
    greeting(argv[1])
