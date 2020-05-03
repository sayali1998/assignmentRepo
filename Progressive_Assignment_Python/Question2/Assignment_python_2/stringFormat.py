input_str = input("Enter string : ")

print("Uppercase : ",input_str.upper())
print("Lowercase : ",input_str.lower())

#Inverting the format of letter
output_str= ""

for i in range(len(input_str)):
    if(input_str[i].islower()):
        output_str = output_str + input_str[i].upper()
    else:
        output_str = output_str +input_str[i].lower()

print("Formatted String : ",output_str)