import module as md 

#calling module function
print("Calling module Function")
fileName = input("Enter your output File name : ")
md.writeFile(fileName+".txt")