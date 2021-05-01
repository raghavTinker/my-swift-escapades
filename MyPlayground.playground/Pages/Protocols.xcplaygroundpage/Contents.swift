//Protocols

//Defines a blueprint of methods, properties and other requirements.
//It can be adopeted by a class, strucutre or enumeration to provide an actual implementation of those requirements. Any type that satisifies the requirements of a protocol is said to conform to that protocol

protocol CarProto{
    var color: String { get set }
    
    func drive()
    func isAllWheelDrive() -> Bool
}

class Car{
    //something
}

class BMW: Car, CarProto{
    var color: String = ""
    
    init(color: String){
        self.color = color
    }
    func drive(){
        print("I am driving a BMW car")
    }
    
    func isAllWheelDrive() -> Bool{
        return true
    }
}
var hello: BMW = BMW(color: "Blue")
print(hello.color)
