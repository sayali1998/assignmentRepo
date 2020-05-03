list1 = input("Enter elements of the 1st list : ")
list1 = list1.split(" ")
try : 
    list1 = [float(x) for x in list1]
    list1.sort()
except ValueError:
    print("Value error you entered a string !!")
    exit()

list2 = input("Enter elements of the 2nd list : ")
list2 = list2.split(" ")
try : 
    list2 = [float(x) for x in list2]
    list2.sort()
except ValueError:
    print("Value error you entered a string !!")
    exit()

j = 0
for i in range(len(list1)):
    if list1[i] in list2:
        j = 1
        print("TRUE")
        break

if(j == 0):
    print("FALSE")