def reverse_string(string):
    temp = ""
    for char in string:
        temp =  char + temp
    return temp

a=reverse_string("ROHAN")
print(a)
