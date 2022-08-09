inputFile = open("Theme.qml")
newFile = open("copyTheme.qml", "w")

names = []
for line in inputFile.readlines():
    print(line.split(" ")[2][0:-1])
    newFile.write(f"property color {line.split(' ')[2][0:-1]}: model.{line.split(' ')[2][0:-1]}\n")
    names.append(line.split(' ')[2][0:-1] )


for name in names:
    newFile.write("Behavior on "+ name+ " { ColorAnimation { duration: 500 } }\n")

newFile.close()
inputFile.close()
