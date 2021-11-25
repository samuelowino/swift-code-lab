//
//  extensions.swift
//  swift-basics
//
//  Created by Samuel Owino on 24/11/2021.
//

import Foundation

print("Swift Book Chapter 17: Extensions")

/**
 Extensions add new functionality to an existing class,structure,enumeration or protocol type.
 This includes the ability to extend types for which you don't have access to the origincal source code
 (known as retroactive modeling).
 
 Extensions are similar to categories in Objective-C.
 
 Extensions in swift can:
 
 1. Add computed instance properties and computed type properties
 2. Define instance methods and type methods
 3. Provide new initializers
 4. Define subscripts
 5. Define and use new nested types
 6. Make an existing type conform to a protocol
 
 In Swift, you can even extend a protocol to provide implementations of its requirements or add additional functionality that conforming types can take advantage of.
 ==> Extensions can add new functionality to a type, but they can't override existing functionality.
 
 EXTENSION SYNTAX
 
 Declare extensions with the extension keywork:
 
 */

extension String {
    func defaultHello() {
        print("Hello String")
    }
}

var greeting:String = "Hi"

greeting.defaultHello()

/**
 An extension can extend an existing type to make it adopt one or more protocols. To add protocol conformance, you write the protocol names the same way
 as you write then for class or structure
 
 */

protocol v12Engine {
    var pistons:Int {get set}
    var topSpeed:Int {get set}
    var fuelConsumerPerMile:Double {get set}
    
    func startEngine()
}

class LamborghiniHuracanEngine {
    
    func roar(){
        print("Vrruummm!!... 🌬️🌬️ kut kut!.. Flames 🔥🔥")
    }
}

extension LamborghiniHuracanEngine : v12Engine {
    var pistons: Int {
        get {
            return 12
        }
        set {
            self.pistons = 12
        }
    }
    
    var topSpeed: Int {
        get {
            211
        }
        set {
            self.topSpeed = 211
        }
    }
    
    var fuelConsumerPerMile: Double {
        get {
            10
        }
        set {
            self.fuelConsumerPerMile = 10
        }
    }
    
    func startEngine() {
        print("Starting Engine... Brrruumm! 🌬️🌬️")
    }
    
    func stop(){
        print("Slowing down...")
        print("Stopped... NOT shutting down engine...")
    }
    
    func fly(){
        print("Off we go!!")
    }
    
}

var fastCarEngine:LamborghiniHuracanEngine = LamborghiniHuracanEngine()

fastCarEngine.startEngine()
fastCarEngine.topSpeed = 211
fastCarEngine.fly()
fastCarEngine.pistons = 12

/**
COMPUTED PROPERTIES
 
 Extensions can add commputed instance properties and computed type properties to existing types.
 
 */

//Extending Integer to support fast cars top speeds

extension Int {
    var SSC_Tuatara:Int { return self * 316}
    var BugattiChironSuperSport:Int { return self * 304}
    var HannesseyVenomF5:Int { return self * 301}
    var KoenigseggAgeraRS:Int { return self * 278}
    var HannesseyVenomGT:Int { return self * 270}
    var BugattiVeyronSuperSport:Int {return self * 268}
}

var yourCarTopSpeedMph:Int = 15

let howYourCarCompares:[Int] = [yourCarTopSpeedMph.BugattiChironSuperSport, yourCarTopSpeedMph.HannesseyVenomF5, yourCarTopSpeedMph.SSC_Tuatara, yourCarTopSpeedMph.KoenigseggAgeraRS,yourCarTopSpeedMph.HannesseyVenomGT]

for topSpeedCar in howYourCarCompares {
    print(" \(topSpeedCar) mph")
}
