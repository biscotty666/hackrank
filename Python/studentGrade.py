if __name__ == "__main__":
    studentList = []
    for _ in range(int(input())):
        name = input()
        score = float(input())
        studentList.append([name, score])
    print(studentList)
    scores = [y for (x,y) in studentList]
    lowest = min(scores)
    newList = [(x,y) for (x,y) in studentList if y != lowest]
    scores = [y for (x,y) in newList]
    lowest = min(scores)
    result = [x for (x,y) in newList if y == lowest]
    for el in sorted(result):
        print(el)
