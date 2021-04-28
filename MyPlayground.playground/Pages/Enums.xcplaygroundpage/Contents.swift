//Enumerations:
/*
 special case class
 Represents a group of constants
 (unchangeable variales)
 */

/*
 The major difference between enums and classes is that enums are value types while classes are refrence types
 If you assign a class type obj to another they both point to the same instance of the class as demonstrated above in classes.
 No new copy is created
 
 In enums and structs a new copy is made (value type)
 */

//Syntax
enum CompassPoint{
    case north
    case south
    case east
    case west
}
var hello = CompassPoint.north
//values defined in an enumeration are its enumeration cases.
//Unlike C cases dont have an integer value set by dfault.
//Each case are values in their own right
print(hello) //will print north
hello = .east


//Matching enum values with switch

var directionToHead = CompassPoint.south

switch directionToHead {
case .north:
    print("GO NORTH")
case .south:
    print("GO SOUTH")
case .west:
    print("GO WEST")
case .east:
    print("GO EAST")
default: //Here this isnt required as we have put in all the possible cases above. Making it exhaustive
    print("ERROR")
}

//Iterating over enumeration cases

enum Beverage: CaseIterable{
    case coffee, chai, juice, aamras
}
let numberOfChoices = Beverage.allCases.count
for i in Beverage.allCases{
    print(i)
}


//Associated Values
//We can also set a const or variable to enum.case and check the value later

enum Barcode{
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8,8059,5122,3)
print(productBarcode)
productBarcode = .qrCode("ABDDD")
//now this variable stores a qr code
//earlier it stored a UPC barcode

switch productBarcode{
case .upc(let numberSys, let manufacturer, let product, let check):
    print("UPC:\(numberSys) \(manufacturer) \(product) \(check)")
case .qrCode(let productCode):
    print("QR code: \(productCode)")
}
//pls note let and var will both work the same. No difference

//Raw values
enum ASCIIControlCharacter: Character{
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}
//the raw values for an enumeration are defined to be a type of character
//Raw values can be strings characters or any number


//Implicit assigning of raw values

enum Planet: Int{
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    //Just like in C the rest of the planets got successive number
}

//for strings
enum Compass: String{
    case north
    case south
    case east
    case west
}

let myDirection: String = Compass.west.rawValue
print(myDirection) //=>Now myDirection contains a string
//Essentially the label name north or south becomes the raw value
//implicit value for each case is the text of that case's name

//Initializing from a Raw value

let possiblePlanet: Planet? = Planet(rawValue: 7)
//This is now Uranus
//THis is an optional
//so

if let planet = possiblePlanet{
    print(planet)
}
else{
    print("Doesn't exist")
}


//recursive enumerations
/*
 another instance of the enumeration as the associated value for one or more of the enumeration cases.
 */

enum ArithmeticExpression{
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case subtraction(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}



func evaluate(_ expression: ArithmeticExpression) -> Int{
    switch expression{
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    case let .subtraction(left, right):
        return evaluate(left) - evaluate(right)
    }
}
let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let addition = ArithmeticExpression.addition(four, five)

print(evaluate(addition))
