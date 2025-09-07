import std/[os, strformat]

const HEIGHT = 256
const WIDTH = 256

let file = open("test.ppm", fmWrite)
#defer: file.close()

file.writeLine("P3") #Magic Number
file.writeLine(fmt"{WIDTH} {HEIGHT}") #width and height of the pixel
file.writeLine("255") #maximun color value

for y in 0..<HEIGHT:
  for x in 0..<WIDTH:
    file.write(fmt"{y} {x} {y} ")
  file.writeLine("")
file.close()
