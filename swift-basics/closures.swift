//
//  closures.swift
//  swift-basics
//
//  Created by Samuel Owino on 19/11/2021.
//

import Foundation

print("Swift Book Chapter 6: Function Types and Closures")

//Function types
//Swift supports function types just like any other types in the language
func findDates(names:String, size:Int) -> String {
    return "Go with Maria"
}

var filterDates:(String,Int) -> String = findDates

//==> Define a variable called filterDates, which has a type of ‘a function that takes two values, a String and Int,
//==> and returns a String value.’ Set this new variable to refer to the function called findDates.
//findDates and filterDates have the same type so Swift allows this assignment

print(filterDates("Joan", 10))

//now calling filterDates behaves as findDates i.e prints "Go with Maria"

//Function types as paremater types
//Use functions as parameters for other functions
func rocketLaunch(_ runAutoCountDown: (Int,String) -> [Int]){
    let countDowns = runAutoCountDown(4,"Sartun IV 🚀")
    for count in countDowns {
        print("Count Down🔥 ==> \(count)")
    }
}

func countDown(_ maxCount:Int, _ rocketName:String) -> [Int] {
    print("Count down to launching 🚀🚀 \(rocketName)")
    var counters:[Int] = []
    for count in 0..<maxCount {
        counters.append(count)
    }
    print("And take off completed 🔥🔥")
    return counters
}

rocketLaunch(countDown)

//Function types and function return types

enum StepDirection {
    case forward
    case backward
}

func moveForward(_ steps:Int){
    print("Moving forward \(steps) steps")
}

func moveBack(_ steps:Int){
    print("Moving back \(steps) steps")
}

func chooseMove(for direction:StepDirection) -> (Int) -> Void {
    if  direction == StepDirection.forward {
        return moveForward
    } else if direction == StepDirection.backward {
         return moveBack
    }else {
        return moveForward
    }
}

let move = chooseMove(for: StepDirection.backward)

move(2)

//Nested Functions
//You can define functions within functions
func launchRocket(_ planet:String, _ isReturnTrip:Bool) -> (String,String) -> Void{
    func directToPlanet(_ planetName:String, _ origin:String = "Earth") { print("Launching \(planetName) towards \(planet)")}
    func directFromPlanet(_ planetName:String, _ destinationPlanetName:String) { print("Re-Launching rocket from \(planet) to \(destinationPlanetName)")}
    
    if isReturnTrip { return directFromPlanet}  else { return directToPlanet }
}

var rocketLauncher:(String,String) -> Void = launchRocket("Earth", false)

rocketLauncher("Sartun","Uranus")
//CLOSURES

//Closures are self contained blocks of functionality that can be
//passed around in your code.
//Closures in swift are similar to blocks in C and Objective-C and to lambdas
//in other programming languages

//Closures can capture and store references to any constants and variables from the context
//in which they're defined.

//Closure Expressions

//The Sorted Method Example
let names = ["Chris","Alex","Ewa","Barry","Daniella"]

//One way to provide the sorting closure is to write a normal function
//of the correct type, and pass it in as an argument to the sorted(by:) method
func backward(_ s1:String, _ s2:String) -> Bool{
    s1 > s2
}

var reversedNames = names.sorted(by: backward)

print("Reverse names is \(reversedNames)")

//The example below shows a closure expression version of the backward(_:_) function

reversedNames = names.sorted(by: {
    (s1:String,s2:String) -> Bool in
    return s1 > s2
})

print("Reversed names in closure \(reversedNames)")

//Inferring Type From Context
//Because the sorting closure is passed an an argument to a method, Swift
//can infer th types of its parameters and the type of the value it returns.
//The sorted(by:) method is being called on an array of strings, so its
//arguments must be a function of type (String,String) -> Bool.
//This means that thee (String,String) and Bool types don't need to written as
//part of the closure expression's definition. Because all of the types can be inferred
//the return arrow (->) and the parenthesis around the names of the parameters can also
//be omitted:

reversedNames = names.sorted(by: {s1,s2 in return s1 > s2})

print("Reversed names woth type inferred \(reversedNames)")

//Implicit Returns from Single-Expression Closures

//Single-expression closures can implicitly return the result of their single
//expression by omitting the return keyword fromt their declaration, as in
//this version of the previous example:

reversedNames = names.sorted(by: {s1,s2 in s1 > s2})

//Trailing Closures
//Trailing closures are useful when the closure is sufficiently long that it isn't
//possible to write it inline on a single line. As an example,
//Swift's array type has a map(_:) method, which takes a closure expression as its single argument.
//The closure is called once for each item in the array, and returns an alternative mapped value
//(possibly of some other type) for that item.
//You specify the nature of the mapping and the type of the returned value by writing code
//in the closure that you pass to map(_:)

//After applying the provided closure to each array element, the map(_:)
//method returns a new array containing all of the new mapped values, in the
//same order as their corresponding values in the original array.

//Example:
//Use the map(_:) method with a trailing closure to convert an array of Int
//values into an array of String values.
//The array [16,58,510] is used to create the new array.

let digitNames = [
    0:"Zero", 1:"One", 2:"Two",3:"Three",4:"Four",5:"Five",
    6:"Six",7:"Seven",8:"Eight",9:"Nine",10:"Ten"
]

let numbers = [17,101,60,71]

//You can now use th numbers arrau to create an array of string values, by passing
//a closure expression to the array's map(_:) method as a trailing closure.

let strings = numbers.map({
    (number) -> String in
    var number = number
    var outputText = ""
    repeat {
        outputText = digitNames[number % 10]! + outputText
        number /= 10
    }while number > 0
    return outputText
})

print("\(numbers) \n number names ==>\n\(strings)")

//The map(_:)  method calls the closure expression once for each item in the array.
//You don't need to specify the type of the closure's input parameter,number, because
//the type can be inferred from the values in the array to be mapped.

//The call to the digitNames dictionary's subscript is followed by an exclamation point (!)
// beccause dictionary subscripts return an optional value to indicate that the dictionary
//lookup can fail if the key doesn't exist.
//The exclamation point is used to force-unwrap the String value stored in the subscript's optional
//return value.

//If a function takes multiple closures,you omit the argument label for the first
//trailing closure and you label the remaining trailing closures.

class Server {
    var ip:String
    
    init(address ip:String){
        self.ip = ip
    }
}

class Picture {
    var uri:String
    var size:Int
    
    init(location uri:String, _ size:Int){
        self.uri = uri
        self.size = size
    }
}

func loadPicture(from server:Server,
                 completion: (Picture) -> Void,
                 onFailure:() -> Void) {
    
    func download(_ url:String, from serverAddr:Server) -> Picture?{
        return Picture(location: url, 1032)
    }
    
    if let picture = download("photo.jpg", from: server){
        completion(picture)
    }else {
        onFailure()
    }
}

//When you call this function you provide two closures.
//The first closure is a completion handler that displays a picture after a
//successful download.
//The second closure is an error handler that displays an error to the user

var pinterestServer = Server(address: "277.0.0.1")

loadPicture(from: pinterestServer)
    {
        picture in print("Loading picture")
    }
    onFailure:
    {
        print("Error! Could not load picture")

    }

//Capturing Values
//A closure can capture constants and variables from the sorrounding context in which it's defined
//The Closure can then refer to and modify the values of those constants and variables from
//within its body, even if the original scope that defined the constants and variable
//*no longer exists*

//In Swift the simplest form of a closure that can capture values is a nested function,
//written within the body of another function.
//A nested function can capture any of its outer function's arguments and can also capture
//any constants and variables defined within the outer function.

func makeIncrementer(_ starting:Int = 0, _ amount:Int) -> () -> Int {
    var runningTotal = starting
    func increment() -> Int {
        runningTotal += amount
        print("Running incrementer, new value ==> \(runningTotal)")
        return runningTotal
    }
    return increment
}

var increment:() -> Int = makeIncrementer(20, 10)

increment()
increment()
increment()

//Escaping Closures
//A closure is said to escape a function when the closure is passed as an
//argument to the function, but is called after the function returns.
//When you declare a function that takes a closure as one of its parameters,
//you can write @escaping before the parameter's type to indicate that the closure
//is allowed to escape.

var completionHandlers: [() -> Void] = []

func someFunctionWithEscapingClosure(
    completionHandler: @escaping () -> Void) {
        completionHandlers.append(completionHandler)
}

//Autoclosures
//An autoclosure is a closure that's automatically created to wrap an expression
//that's being passed as an argument to a function.
//It doesn't take any arguments, and when it's called, it returns the value of the
//expression that's wrapped inside of it.
var customersInLine = ["Felix","Cheryl","Donda","Yoghan","Hungry Ford"]

let customerProvider = {customersInLine.remove(at: 0)}

print("Now serving \(customerProvider())!")
print("Now serving \(customerProvider())!")

