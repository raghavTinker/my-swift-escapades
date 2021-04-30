//:Structures

/*
 Structures and classes are general-purpose
 
 Comparing Structures and Classes:
 
 ===Common stuff===
    a)Define properties to store values
    b)Define methods to provide functionality
    c)Define subscripts to provide access to their values using subscript syntax
    d)Extended to expand their functionality beyond default
    e)Conform to protocols to provide standard functionality of a certain kind
=======================
 
Structures cant:
    a)iunheritance enables one class to inherit the char of another
    b)type casting enables you to check and interpert the type of class instance at runtime
    c)deinitializers enable an instance of a class to free up any resources it has assigned
    d)Ref counting allows more than one ref to a class instance
 
*/
//
struct Resolution{
    var width = 0
    var height = 0
    
}

let someResolution = Resolution()
print("Width = \(someResolution.width)")

let vga = Resolution(width: 12, height: 12)

//Structures and enumerations are value types
//When passed through a function its value is copied while in classes the refrence of object is passed

