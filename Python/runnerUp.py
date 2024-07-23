if __name__ == "__main__":
    n = int(input())
    arr = map(int, input().split())
    arrL = list(arr)
    winner = max(arrL)
    arrL = [x for x in arrL if x != winner]
    print(max(arrL))
