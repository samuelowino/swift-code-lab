//
// The Basics: Swift
//
//  the-basics.swift
//  swift-basics
//
//  Created by Samuel Owino on 16/11/2021.
//

import Foundation

print("The Basics of Swift: Chapter 2")

//VARIABLE AND CONSTANTS
//var defines a variable while let defines a constant
var peopleWhoHaveWalkedOnTheMoon:Int = 3 // I can change this later when I find out the actual number

let pi:Double = 3.14 //this is a constant it will not change


//Printing constants and variable
//swift uses string interpolation to print var and constants

let planets:Int = 9
var livablePlanets:Int = 1

print("There are about \(planets) planets in our solar system, only \(livablePlanets) supports life, so lets take care of it")

//Semicolons
//Use semi colons to include multiple statements in the same line, otherwise they can be ommitted
print("Hello kitty..."); print("Kitty hello")

//Type casting
var salary:Int = 200
var accurateSalary:Double = Double(salary)

print("Double type salary is \(accurateSalary) $$, converted from Int type \(salary) $$")

//TYPE ALIAS
//Type alias allows you to define an alternative name for a type
typealias text = String
typealias _32BitNumber = UInt32

var movie:text = "Jumanji the movie"
var reruns:_32BitNumber = 32
print("The movie she loves is  \"\(movie)\", I can't stand it but she watched it about \(reruns) times with me. Urg!")

//Boolean
//Swift uses Bool as its Boolean type annotation
let climateChangeIsReal:Bool = true

if climateChangeIsReal{
    print("We are all gonna die!")
}else {
    print("Guys go back to partying this thing is a hoax!")
}


//TUPLES
//Tuples can be composed with more than one type
let userProperties = ("age",101,40.03,"Delierious")

//You can decompress tuples into variables and constants
let (kpi,loginAttempts,paid,tagline) = userProperties

print("This guy's kpi is \(kpi), and has \(loginAttempts) log in attempts so far. He only paid \(paid) $$ and claims -- \(tagline) -- status")

//ignore other values in the tuple using "_" operator
var (_,attempts,_,_) = userProperties

print("I repeat, he has \(attempts) log in attempts so far!")

//Access individual items in the tuple using their index
var kpm = userProperties.0
var logins = userProperties.1
var payment = userProperties.2
var status = userProperties.3

print("This guy's kpi is \(kpm), and has \(logins) log in attempts so far. He only paid \(payment) $$ and claims -- \(status) -- status")

//Optionals
var climateAction:Bool?
//climate action is automatically initialized to nill
if climateAction == nil {
    print("There is not climate action, just beurocracies")
} else {
    print("Climate action is on, planet saved")
}

//you can set an optional value back to nil
climateAction = nil
var posibility:Bool = (climateAction ?? false)
print("Climate action is \(posibility) bro!")

print("")

//Optional-binding
//You can use optional binding to check if an optional contains a value
//and if so use it as a temporacy constant or variable for an operation
func register(optionalEmail:String?){
    if let email = optionalEmail {
        print("Found an email here \(email)")
    } else {
        print("No Email no entry")
    }
}

register(optionalEmail: "swiftfan@swift.com")

var noEmail:String?

register(optionalEmail: noEmail)


//Error handling
enum ToasterError:Error {
    case notConnectedToPowerError
    case missingBreadError
    case overLoadError
    case excessBreadError
}

func startToaster(breadCount:Int,voltage:Int,connected:Bool) throws -> Bool {
    if !connected {
        throw ToasterError.notConnectedToPowerError
    }
    
    if voltage > 1000 {
        throw ToasterError.overLoadError
    }
    
    if voltage < 1
        throw ToasterError.notConnectedToPowerError
        
    if breadCount < 2 {
        throw ToasterError.missingBreadError
    }
    
    if breadCount > 2 {
        throw ToasterError.excessBreadError
    }
}

func startToaster(bread:Int,voltage:Int,connected:Bool){
    var runningToaster:Bool?

    do {
       runningToaster = try startToaster(breadCount: bread, voltage: voltage, connected: connected)
    } catch ToasterError.notConnectedToPowerError {
        print("Error: Toaster not connected to power")
    } catch ToasterError.missingBreadError {
        print("Error: Please add bread to toaster")
    } catch ToasterError.overLoadError {
        print("Error; Toast overloaded, check power cable")
    } catch ToasterError.excessBreadError {
        print("Error; Excess bread added, maximum allowed is 100")
    }

    if let runningStatus = runningToaster {
        print("[\(runningStatus)]:Toaster is running get some juice or coffee...")
    } else {
        print("Toaster failed to start, check error logs")
    }
}



