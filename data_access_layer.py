from greeting_service import greeting
import sys

if __name__ == '__main__':
    if len(sys.argv) != 2:
        print("Usage: python data_access_layer.py <name>")
        exit(1)
    greeting(sys.argv[1])
