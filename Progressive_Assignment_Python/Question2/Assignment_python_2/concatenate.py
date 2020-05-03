str1 = input("Enter first string : ")
str2 = input("Enter second string : ")

#Concatenation using + operator

con_str = str1 + str2
print("Combined strings using + operator : ",con_str)

#Concatenation using join operator

con_str = " ".join([str1,str2])
print("Combined strings using join() : ", con_str)

#Combining using % operator
print("Combined strings using %% operator : % s % s" % (str1, str2))

#Concatenation using format

con_str = "{} {}".format(str1, str2) 
print("Combined strings using format() : ",con_str) 