//Control Flow
var myDict = ["LOL": "Laugh out loud", "LMAO": "Laugh my ass off"]
var menu: [String] = ["idlis", "sambhar", "dosa", "samosa", "raj kachori", "papdi chaat"]

//for loop
for foodItem in menu{
    print("Raghav loves eating \(foodItem)")
}

//if else
var number: Int = 12
if number > 13{
    print("I am big")
}
else{
    print("I am small")
}


//Optional unwrapping
/*
 This is a procedure to prevent the program to hit an unintended nil/null statement
 Swift knows the potential places where a the returned value will be nil
 
 If we try to print myDict["LOL"] we may fall in the danger that the LOL key isnt really in the dictionary and nill will be returned
 If we arent carefully the nil returned may be disasterous during execution may cause app crash.
 
 To prevent this we have to unwrap this
 
 to store it in a variable
 
 var variableName: <TYPENAME>? = optionalThing
 ? makes this variable an optional variable.
 It has to be unwrapped before using
 
 one option is:
 if variableName == nil{
    //this means that is nill
 }
 else{
    //variableName is nill
 }
 
 Second option:
 
 if let testingVar = optionalVariablething{
    all safe go ahead
 }
 else{
    mitigate
 }
 */

if let test = myDict["LMAO"]{
    print(test)
}
else{
    print("LMAO doesn't exist")
}

//Here as you saw...we carefully put it in a variable for testing. If it passed the condition this means that its not nil else we
//can put our own mitigation statements

var optionalString: String? = myDict["LOL"]
print(optionalString == nil) //Will print false as optional is not nil. If it were nil then it would have printed true

//Another way of handling this

var shortForm = "LOL"
var sentence = "Raghav says "
print(sentence + "\(myDict[shortForm] ?? shortForm)")


shortForm = "tysm"
print(sentence + "\(myDict[shortForm] ?? shortForm)")

//As you saw if the value wasnt there in the dictionary it just printed something else.
//This is another way of handling the optional variables

//=======================================================================

//Switch Case

