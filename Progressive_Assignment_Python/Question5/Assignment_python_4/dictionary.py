dict_class_A = {'Sayali' : 45, 'Shantanu' : 35, 'Sumeet' : 40}
dict_class_B = {'Shubham' : 35, 'Tejas' : 55, 'Sumeet' : 45 ,'Venky' : 45}

prod = 1
for key in dict_class_A:    
    prod = prod * dict_class_A[key]

print("Product of Class A : ", prod)

dict_class_A.update(dict_class_B)
print("Merged two dictionaries : ",dict_class_A)