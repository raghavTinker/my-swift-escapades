//Objects and classes

class Shape{
    var numberOfSides: Int = 0
    var name: String
    
    //Constructor
    init(name: String, numberOfSides: Int){
        self.name = name
        self.numberOfSides = numberOfSides
    }
    func simpleDescription() -> String{
        return "A shape with \(numberOfSides) sides."
    }
    
    //Destructor
    deinit {
        print("i am dead now!")
    }
}

//Instance of class (object)
var square: Shape? = Shape(name: "square", numberOfSides: 4)
if let shape = square{
    print(shape.simpleDescription())
}
else{
    print("This is nil")
}
square = nil //this will call the deinit destructor


//Lets assume
class ShapeParent{
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String){
        self.name = name
    }
    
    func simpleDescription() -> String{
        return "A shape with \(numberOfSides)"
    }
}

class Square: ShapeParent{
    var sideLength: Double
    
    init(sideLength: Double, name: String){
        self.sideLength = sideLength
        super.init(name: name)
        super.numberOfSides = 4
    }
    
    func area() -> Double{
        return sideLength * sideLength
    }
    override func simpleDescription() -> String{
        return "A square with sides of length \(sideLength)"
    }
}


let sq1 = Square(sideLength: 5.2, name: "my test square")
sq1.simpleDescription()

//Getter setter property demonstrate

class EquiLateralTriangle: ShapeParent{
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String){
        self.sideLength = sideLength
        super.init(name:name)
        super.numberOfSides = 3
    }
    
    var perimeter: Double{
        get{
            return 3.0 * sideLength
        }
        set(newValue){
            sideLength = newValue / 3.0
        }
    }
}
var triangle: EquiLateralTriangle = EquiLateralTriangle(sideLength: 12, name: "my test triangle")
print(triangle.perimeter) //Will call the getter of the perimeter member

triangle.perimeter = 9 //This is the setter function called
print(triangle.sideLength)
print(triangle.perimeter)
