from collections import defaultdict

def duplicate(string):
    char = defaultdict(int)
    for ch in range(len(string)):

        char[string[ch]]+=1

    for it in char:
        if (char[it] > 1) :
            print (it,char[it])
    print(char)
    return

duplicate("1132444667889")


a="".join(["a", "h", "m", "a", "h", "a", "n", "q", "r", "l", "o", "i", "f", "o", "o"])[2:10]
print(a)
