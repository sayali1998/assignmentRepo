def writeFile(fileName):
    print("Opening input file")
    fileIn = open("inputFile.txt","r")
    print("Creating output file and writing into the file")
    fileOut = open(fileName,"w")
    c = 1
    for x in fileIn:
        fileOut.write("Line "+str(c)+" : "+x)
        c += 1
    fileOut.close()
    fileIn.close()