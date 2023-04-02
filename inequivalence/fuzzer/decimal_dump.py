import sys

# Takes a file as input and prints the decimal representation of each byte in the file
# This is similar to hexdump, but returns a decimal-dump instead
def main():
    filename = sys.argv[1]
    with open(filename, 'rb') as f:
        while(byte := f.read(1)):
            byteVal = byte[0]
            if byteVal == 10:
                # NewLine case
                print(f'\\n')
            else:
                print(f'{byteVal} ', end='')

if __name__ == '__main__':
    main()