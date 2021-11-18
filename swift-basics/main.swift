//
//  main.swift
//  swift-basics
//
//  Created by Samuel Owino on 14/11/2021.
//

import Foundation
print("The Guided Tour of Swift: Chapter 1")
/*****************
 | SIMPLE VALUES |
 *************************/

//Hello World

print("Hello, this world")

//Variable Declaration
//let is immutable
//var is mutable
//see [https://medium.com/hash-coding/swift-let-vs-var-b2a74e098c2a]
let age:Double = 21.0
let height:Double = 171
let product:Double = age * height

print("Age * height ==>")

var date = "11/11/2021"

//Use \() to include values in a string
print("Age \(age) * height \(height) = \(product)")
print("Date \(date)")

//Use three double quotes """ to create multiline strings
let wiseSaying = """
Do not trouble the trouble
before
the trouble troubles you!
"""

print(wiseSaying)

//Create arrays and dictionaries with [].
//Access the elements using their index within [] i.e [2] for index 2 element
var fruits = ["apples","oranges","peaches","grapes","bananas"]
let favFruit = fruits[0]

let judgement = """
All fruits are great
I mean just look at how sweat \(fruits[1]) , \(fruits[2]) , \(fruits[3]) and \(fruits[4]) are
but everyone agrees that
\(fruits[0]) are the best in the world
"""

print(judgement)

var bestActorInThisMovie = [
    "first": "Parker the movie",
    "second": "Mandalorian",
    "third": "The Book of Boba Fete",
    "fourth": "MIssion Impossible",
]

let bestActor = bestActorInThisMovie["first"]

let pressStatement = """
I know you dont like that I did not mention that movie you like
but you must understand that
the only thing \(bestActorInThisMovie["second"]), \(bestActorInThisMovie["third"]),
\(bestActorInThisMovie["fourth"])
all have in common
is that \(bestActor) is the best movie in the world!
"""

print(pressStatement)

//Arrays automatically grow as you add elements
var additionalFruits = ["Pawpaw","Wild Berries","Mangoes","Sugarcane"]
fruits.append("lemon")
fruits.append(contentsOf: additionalFruits)

print("Updated contents of the fruits list \(fruits)")

//To create empty array or dictionary use the initializer syntax
let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]

/*****************
 |   CONTROL FLOW  |
 *************************/

/**
 Use if and switch to make conditionals and for-in, while and repeat-while for looping
 */
let babyNames = ["huh","what?","chika chika \nSlim Shaddy"]

let greeting = "Hi!"

var count = 0

//While
while(count < 3) {
    print(greeting)
    //for-in
    for myName in babyNames {
        let callout = "My name is \(myName)"
        print(callout)
        //if-else
        if(myName == "huh"){
            print("again...")
        }else {
            print("----------")
        }
            
    }
    count = count + 1
}

//You can use if and let together for values that might be missing
var optionalString: String? = "July"
var optionalStringEmpty: String?
var optionalNilString: String? = nil

if let name = optionalString {
    print("Found best month in the year \(name)")
}else {
    print("It is very hard finding these month names")
}

print("---------------")

if let name = optionalStringEmpty {
    print("Found best month again in the year \(name)")
}else {
    print("It is very hard finding these month names from an empty string")
}

print("---------------")

if let name = optionalNilString {
    print("Found best month again from a nil string \(name)")
}else {
    print("It is very hard finding these month names from a nil string")
}

//switch - supports more than integers, you can use strings as well
let correctAnswer = "I really don't know"
var input = "B"

switch(correctAnswer){
    case "A":
        print("A is the incorrect answer")
    case "B":
        print("B is the incorrect answer fam!")
    case "I really don't know":
        print("Honesty, best policy")
    default:
        print("This is for no matching answers received")
    
}

let minor:Int = 21
var inputAge:Int = 1000

switch(inputAge){
    case 21:
        print("Just what I was expecting...")
    case 1000:
        print("The only none real age thing here")
    default:
        print("We did not expect that input")
}

//repeat-while
var thatNumber:Int = 0

repeat {
    print("Counting money ==> \(thatNumber) $$")
    thatNumber+=100
} while thatNumber < 10000
            
print("And now we have ==> \(thatNumber) $$")

/****************************
 FUNCTIONS AND CLOSURES
 ********************************************/

//Use func to declare functions
//Use --> to define the function return type

func composeActorGreeting(actorName: String, waves: Int) -> String {
    var greeting = """
        Hello! \(actorName)
        This is a very special greeating that will be repeated
        \(waves) times! Enjoy!
        """
    
    return greeting
}

let actorsList = ["Jason Statham","Tom Cruise","Elon Musk( who shows up for clout)","Bruce Lee","Jackie Chan"]

let optionalActor:String? = "Jason Statham"

if let persona = optionalActor {
    let message = composeActorGreeting(actorName: persona,waves:3)
    print(message)
}

print("---------------")

var greetingsCount = 1

for thisActor in actorsList {
    let message = composeActorGreeting(actorName: thisActor, waves: greetingsCount)
    print(message)
    greetingsCount+=1
}

func calculateAgeAsOf2021(yearOfBirth:Int) -> Int {
    return 2021 - yearOfBirth
}

var estimateAge = calculateAgeAsOf2021(yearOfBirth: 1873)

print("Estimated age of a guy born in 1873 is \(estimateAge)")

print("")

//array as argument
func printBabyNames(list:[String]) -> Bool {
    for babyName in list {
        print("Hello baby ==> \(babyName)")
    }
    
    return true
}

let babies = ["Waren","Joyleen","Miya","Chan"]

let babyNamesPrinted:Bool = printBabyNames(list: babies)

print("")

if(babyNamesPrinted){
    print("The baby names were printed alright")
}else{
    print("Yikes! We could not print those names")
}

//A function can take another function as argument
func giveMeRipeFruites(fruits:[String], ripeCheck: (String) -> Bool) -> [String] {
    var ripeFruits: [String] = []

    for fruit in fruits {
        if ripeCheck(fruit){
            ripeFruits.append(fruit)
        }
    }
    
    return ripeFruits
}

func ripeCheck(fruit:String) -> Bool {
    return fruit.starts(with: "a") || fruit.starts(with: "b")
}

let ripeFruits = giveMeRipeFruites(fruits: fruits, ripeCheck: ripeCheck)

print("")

for fruit in ripeFruits {
    print("Ripe fruit => \(fruit)")
}

print("")

/************************
 OBJECTS AND CLASSES
 **************************************/
//Use the work class followed by the classes name to create a class

class Bus {
    var driver:String
    var passengers: [String] = []
    let plates:String = "KAB 211C"
    let milleage:Double = 1400
    
    init(driver:String, passengers:[String]){
        self.driver = driver
        self.passengers.append(contentsOf: passengers)
    }
    
    func startBus(deperture:String, destination:String, tripDurationHours:Double){
        print("Starting bus for \(destination), expect arrival about \(tripDurationHours) hours from now, as we are leaving at \(deperture). Bus details are as follows, driver \(self.driver) , number plate \(plates).\n Enjoy the trip fellas")
    }
}

//Initialize the class by putting parenthesis after its name
var kbsBus = Bus(driver: "JJ Okocha", passengers: ["Jina Seat 1", "Dan Seat 2", "Mika Seat 19"])
kbsBus.startBus(deperture: "11:00 PM EST", destination: "Johannesburge", tripDurationHours: 16)

print("")
//Superclasses include their subclasses by having the name after semicolon
class DoubleDeckBus: Bus {
    
    override func startBus(deperture: String, destination: String, tripDurationHours: Double) {
        print("Starting this weird double deck bus for \(destination), expect arrival about \(tripDurationHours) hours from now, as we are leaving at \(deperture). Bus details are as follows, driver \(self.driver) , number plate \(plates).\n Enjoy the trip fellas")
        print("You are a different kind of bus, stay off the windows!")
    }
}

var weirdBus = DoubleDeckBus(driver: "Jorgan Okuna", passengers: ["Ochieng Level 1 Seat 2","Karanja Level 2 Seat 8"])
weirdBus.startBus(deperture: "05:00 AM UTC", destination: "Cairo", tripDurationHours: 21)

print("")

//willset and didset
//If you don't want to compute new value but want some code to run before and after a value changes
//use the willset and didset
//your code will run anytime the new value changes outside the initializer

class Petroleum {
    var price:Double {
        
        willSet{
            if price != newValue {
                print("Fuel price has changed to \(newValue) KES as a directive from regulators")
            } else {
                print("Fuel prices have not changed, new value is still \(newValue) KES")
            }
        }
        
        didSet{
            if price != oldValue {
                print("Fuel price was \(oldValue) before regulators updated it")
            } else {
                print("Phew! Price has not been increased, still same old value \(oldValue) KES")
            }
        }
    }
    
    init(price:Double){
        self.price = price
    }
    
    func updatePrice(newPrice:Double){
        self.price = newPrice
    }
}

var petroleumHub = Petroleum(price:1.0)
petroleumHub.updatePrice(newPrice: 110)

print("")
print("Engery regulators had another meeting")

petroleumHub.updatePrice(newPrice: 200)

print("")
print("Energy regulators are having a change of heart")

petroleumHub.updatePrice(newPrice: 200)

print("")

//optional ? check
//You can use the ? on optional values before performing operations on it such as properties, methods and or subscripting
//If the optionalValue is nil, everything after the ? is ignored

var optionalPetroleum: Petroleum? = Petroleum(price:101)

optionalPetroleum?.updatePrice(newPrice: 100)

print("")

/******************************
 ENUMERATIONS AND STRUCTURES
 ***********************************************/

//Use enum to create enumerations
//Swift enums just like classes can have methods and types associated with them

enum ThemeColor {
    case dark
    case light
    case sunset
    case blueSky
    
    func getSimpleDescription(theme:ThemeColor) -> String {
        switch(theme){
        case .dark:
            return "Dark theme"
        case .light:
            return "Light theme"
        case .blueSky:
            return "Very blue sky theme"
        case .sunset:
            return "Theme that looks like the sunset"
        default:
            "Unknown theme, might be an error"
        }
    }
}

var currentTheme = ThemeColor.dark

print("Current system theme is \(currentTheme)")

currentTheme = ThemeColor.light

print("Current system theme is \(currentTheme)")

//Use struct to create structures in your code
//Structures are create the same way as classes
//The main difference between struct and classes is that classes are passed by reference
//while structures are always copied when they are passed around in your code

enum ButtonColor {
    case red
    case blue
    case orange
    case green
}

struct SwiftButton {
    var color:ButtonColor;
    var text:String
    var enabled:Bool
    
    init (color:ButtonColor, text:String, enabled:Bool){
        self.color = color
        self.text = text
        self.enabled = enabled
    }
    
    func onButtonClicked(){
        print("\(self.color) button with text \"\(self.text)\" clicked!!")
    }
}

var button = SwiftButton(color:ButtonColor.green,text:"Click Me!",enabled:true)
button.onButtonClicked()

//Create structures using struct
struct Card {
    var label:String
    var pages:Int
    
    func simpleDescription(label:String, pages:Int) -> String {
        return """
            Card \(label) with \(pages) pages
            is set for receipt!
            """
    }
    
}

/*********************
 ERROR HANDLING
 ********************************/
//Use throw to throw an error and throws to mark a function that can throw the error
class StackoverflowError: Error {
    var message:String
    var cause:String
    
    init(message:String,cause:String){
        self.message = message
        self.cause = cause
    }
    
    func printStackTrace(){
        print("\(message) cause: \(cause)")
    }
}

func countNames(list:[String]) throws -> Int {
    if list.count == 0 {
        throw StackoverflowError(message:"We did not find any baby names",cause:"Lack of names in origin list")
    }else {
        return list.count
    }
}

do{
    let namesTotal = try countNames(list:["Gulian","Aghani","Fury","Milly"])
    print("Finished counting baby names ==> \(namesTotal)")
}catch {
    print(error)
}

/***********
 GENERICS
 ***************/
//Use angle brackets to define a generic type or function

func genericFunction<T>(values:[T]) -> [T] {
    var result:[T] = []
    for value in values {
        result.append(value)
    }
    return result
}

let results = genericFunction(values: ["Hello Nana!!","Hello papi!","Hey Nona!"])

print(results)
