//Collection of items
import Foundation

//Arrays
var menu: [String] = ["idlis", "sambhar", "dosa", "samosa", "raj kachori"]
menu.append("papdi chaat") //this adds the element to the end of the array
print(menu)

//Creating an empty array
var emptyArray = [String]()

//Dictionaries
var myDict = [String: String]()
myDict["LOL"] = "Laugh out loud"
myDict["LMAO"] = "Laugh my ass off"
print(myDict)
print(myDict["LOL"] == nil)
var searchLOL: String? = myDict["LOL"]

//Optional unwrapping next module
if let someThing = searchLOL{
    print(someThing)
}
else{
    print("LOL")
}
