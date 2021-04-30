//Collection of items
import Foundation

//Arrays
var menu: [String] = ["idlis", "sambhar", "dosa", "samosa", "raj kachori"]
menu.append("papdi chaat") //this adds the element to the end of the array
print(menu)

//Creating an empty array
var emptyArray = [String]()

//Dictionaries
var myDictNew = [String: String]()
myDictNew["LOL"] = "Laugh out loud"
myDictNew["LMAO"] = "Laugh my ass off"
print(myDictNew)
print(myDictNew["LOL"] == nil)
var searchLOL: String? = myDictNew["LOL"]

//Optional unwrapping next module
if let someThing = searchLOL{
    print(someThing)
}
else{
    print("LOL")
}

var myDict = [String:Int]()

myDict["raghav"] = 19
myDict["medha"] = 17

for(key, value) in myDict{
    print("\(key) = \(value)")
}

var myArray: [String] = ["Dog", "cat", "bird"]

myArray[0] = "My " +     myArray[0]

print(myArray)

//Size of array
print(myArray.count)

//append
myArray.append("Raghav")

//insert
myArray.insert("Hello", at: 3)
print(myArray)

