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


//Property observers
/*
    observers observe and respond to changes in a property's value. Property observers are called every time a property's value is set even if new value is the same as property's current value
 */

class StepCounter{
    var totalSteps: Int = 0{
        willSet(newTotalSteps){
            print("About to set totalsteps to \(newTotalSteps)")
            
        }
        
        didSet{
            if totalSteps > oldValue{
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

var stepCounter = StepCounter()
var s1 = stepCounter
stepCounter.totalSteps = 200
stepCounter.totalSteps = 1000


//As you see in the output as we keep changing/assigning the value two print statements come. the first is the willSet (about to set) then the didSet just after setting the value


//If you assign an object to another object then the new variable will point to the original object
//Example:
//stepCounter is an object of StepCounter another object is made s1
//s1 = stepCounter

//Now after changiong the values in stepCounter
print(s1.totalSteps) //will be 1000  Refrence types

//PROPERTIES

class Person{
    var name: String = ""
    
    init(name: String){
        self.name = name
    }
}

class Employee: Person{
    var salary: Int = 0
    var role: String = ""
    
    init(salary: Int, role: String, name: String){
        self.salary = salary
        self.role = role
        super.init(name: name)
    }
    func doWork(){
        print("Hi my name is \(name) and I am doing work")
        salary+=1
    }
}

class Manager: Employee{
    var teamSize = 0
    var bonus: Int{ //Computed property
        return teamSize * 1000
    }
    init(salary: Int, role: String, name: String, teamSize: Int){
        super.init(salary: salary, role : role, name: name)
        self.teamSize = teamSize
    }
    override func doWork(){
        super.doWork()
        print("I am managing people")
        salary+=2
    }
}

var raghav = Manager(salary: 12, role: "CEO", name: "Raghav", teamSize: 390)
print(raghav.name)


//Designated and convenience initializers
//initializer should also make sure that the members are filled properly

//Designated initilizers ensure that the object is ready to be used
class PersonTest{
    var name: String
    var netWorth: Int?//By default nil
    var gender: String!//By defualt nil Already unwrapped
    
    init(){
        name = "None"
    }
}

let a = PersonTest()
print(a.name)

//Conveniance initializers 

class PersonTest2{
    var name: String
    var netWorth: Int?//By default nil
    var gender: String!//By defualt nil Already unwrapped
    
    init(){
        name = "None"
    }
    
    convenience init(_gender: String, _networth: Int){
        self.init()
        self.gender = gender
        self.netWorth = netWorth
    }
}


let n = PersonTest2(_gender: "female", _networth: 100000)
