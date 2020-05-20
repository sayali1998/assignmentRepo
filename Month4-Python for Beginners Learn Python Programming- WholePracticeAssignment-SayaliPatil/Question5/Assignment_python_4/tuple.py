list_tuple = [('116A1056','Sayali',9.5),('116A1021','Shantanu',9),('116A1038','Shubham',7.6),('116A1025','Sumeet',8.5),('116A1091','Venky','7.8')]

for i in range(len(list_tuple)):
    print(list_tuple[i])

#Accessing tuple value
max = int(input("\nEnter number between 7 to 9 to show values equal to or greater than that in the tuple : "))
for i in range(len(list_tuple)):
    if(float(list_tuple[i][2]) > max):
        print(list_tuple[i])

#change values in tuple
name = input("\nEnter name of student to change the value : ")
val = float(input("Enter modified value : "))
for i in range(len(list_tuple)):
    if((list_tuple[i][1].lower()) == (name.lower())):
        l = list(list_tuple[i])
        l[2] = val
        list_tuple[i] = tuple(l)
print("\nModified value : ",list_tuple)
        
#delete tuple
roll = input("\nEnter the PRN Number to delete the tuple : ")
for i in range(len(list_tuple)):
    if(list_tuple[i][0] == roll):
        print("Deleted Tuple content : ")
        #Loop through tuple
        for j in list_tuple[i]:
            print(j)
        del list_tuple[i]
        break
print("Modified List of tuples : ",list_tuple)