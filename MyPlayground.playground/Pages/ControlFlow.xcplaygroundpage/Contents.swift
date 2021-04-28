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

//=======================================================================

//Switch Case

let vegetable: String = "red pepper"

switch vegetable{
    case "celery":
        print("Add some raisins and make ants on a log")
    case "cucumber", "watercress":
        print("This is great for tea sandwhiches")
    case let x where x.hasSuffix("pepper"):
        print("Is it a spicy \(x)?")
    default:
        print("everything tastes fine")
}

//For loops over dictionaries

for (shortForm, actual) in myDict{
    print("\(shortForm) = \(actual)")
}

var total = 0

for i in 0..<4{
    total+=i
}
print(total)

//While loop

var count = 0

while count < 5{
    print("Hello")
    count+=1
}
