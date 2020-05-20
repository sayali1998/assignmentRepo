def createFile():
    fileOpen= open("data.txt","w+")
    print("\nSuccessfully created a data.txt file")

def readFile(filename):
    print("\nTrying to open "+filename+" file")
    try:
        fileOpen = open(filename, 'r')
        print("\nContents of the file are : ")
        print(fileOpen.read())
        fileOpen.close()
    except IOError:
        print('\nFile not found')

def searchFile(filename,txt):
    with open(filename) as fileOpen:
        datafile = fileOpen.readlines()
    flag = 0
    for line in datafile:
        if txt in line:
            flag = 1
    if(flag == 1):
        print("\nText present in the file")
    else:
        print("\nText not present in the file")

def writeFile(txt):
    try:
        print("Writing in data.txt")
        fileOpen = open("data.txt", "a")
        fileOpen.write(txt)
        fileOpen.close()
        print("\nFile write successful !")
    except IOError:
        print('\nFile not found')
    
if __name__ == "__main__":
    print("\n1)Create a file\n2)Write file content\n3)Search text in the file\n4)Read Contents")
    ch = int(input("\nEnter your choice : "))
    if(ch == 1):
        createFile()
    elif(ch == 2):
        txt = input("\nEnter the contents : ")
        writeFile( txt)
    elif(ch == 3):
        txt = input("\nEnter the text to be searched : ")
        searchFile("data.txt",txt)
    elif(ch == 4):
        filename = input("\nEnter the file to read the contents : ")
        readFile(filename+".txt")
    else:
        print("Invalid Choice")