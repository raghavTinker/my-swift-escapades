//Functions and Closures

func greet(person: String, day: String) -> String{
    //this function takes in two strings and returns a string
    return "Hello \(person), today is \(day)"
}

greet(person: "Raghav", day: "Tuesday")

//for custom argument labels

func greetNew(_ person: String, on day: String) -> String{
    return "Hello \(person), today is \(day)"
}

print(greetNew("Raghav", on: "Monday"))

//returning multiple things we can return a tuple

func calculateStatistics(scores: [Int])->(min: Int, max: Int, sum: Int){
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores{
        if score > max{
            max = score
        }
        else if score < min{
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}


let stats = calculateStatistics(scores: [5,3,100,3,9])
print(stats.sum)
print(stats.max)
print(stats)
print(stats.2) //=>stats.2 == stats.sum We are using the index where sum is placed


//Nested functions
func returnFifteen() -> Int{
    var y = 10
    
    func add(){
        y += 5
    }
    
    add()
    return y
}

print(returnFifteen())


//A function returning a nested function as a value

func increment() -> ((Int) -> Int){
    func addOne(number: Int) -> Int{
        return 1+number
    }
    
    return addOne
}


//A function can taker another function as its argument
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool{
    for item in list{
        if condition(item){
            print("H")
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool{
    return number < 10
}

let numbers: [Int] = [20,19,7,12]
print(hasAnyMatches(list: numbers, condition: lessThanTen))

//As you saw we passed a function with that particular signature( argument one int and return bool) in the function's argument

//Closures
//Self contained blocks of functionality that can be passed around and used in your code

var myFunction: ((Int) -> Bool) = { number in
    if number > 3{
        return true
    }
    return false
}

let result = myFunction(4)
func isGreaterThanThree(number: Int) -> Bool{
    if number > 3{
        return true
    }
    return false
}

//myFunction can be treated like any other variable
//if we had put a question mark in front of Bool) then it would have been an optional.
//to use it we would have done
//if let myfunc = myFunction{
//    myFunc(3)} simple as that


var numbers2 = [3933,32,33,21,2]
print(numbers2.sorted {$0 < $1})

//$0 and $1 are Closure’s first and second shorthand arguments (a.k.a. Shorthand Argument Names or SAN for short).
//Automatically provided by swift


