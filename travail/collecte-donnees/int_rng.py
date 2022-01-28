
import os
import sys
import random


def main(low, up, count):
    arr = [random.randint(low, up) for _ in range(count)]
    print(", ".join(map(str, arr)))


if __name__ == '__main__':
    if len(sys.argv) < 4:
        print("not enough args. Low, Up, Count needed")
        exit()
    low, up, count = list(map(int, sys.argv[1:4]))
    main(low, up, count)
