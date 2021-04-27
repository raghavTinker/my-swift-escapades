//: ## Swift Playgrounds
//: Printing Hello Worl
print("Hello World")
//:Variables: there are two types var and let. Let => constant (immutable) while var -> variable (mutable)
var myVariable: String = "Raghav is a human"
let myConstant: String = "Raghav is an organism"
myVariable = "Raghav is not a human"
let myDouble: Double = 12.0 //This is a constant
//:You can also create variables without mentioning the datatype
var variable = 12
//:Concatenation of strings
let label = "the width is "
let width = 34
let widthLabel = label + String(width)
let summary = "The width is \(width)"
//:Multi line string
let some_string = """
    I am raghav
    I am a human
"""
