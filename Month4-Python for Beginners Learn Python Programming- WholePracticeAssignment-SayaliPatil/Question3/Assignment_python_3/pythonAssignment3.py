num = input("Enter 4 integers : ")
num = num.split(" ")
num = [int(i) for i in num]
print("Numbers are : ", num)

if(len(num) == 4) :
    exp = (num[0]**num[1]) - (num[2]**num[3])
    print("Value of the expression a ^ b - c ^ d for the given set of integers is : ",exp)
else: 
    print("Invalid input!")