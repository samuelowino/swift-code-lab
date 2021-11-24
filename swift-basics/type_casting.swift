//
//  type_casting.swift
//  swift-basics
//
//  Created by Samuel Owino on 24/11/2021.
//

import Foundation

print("Swift Book Chapter 15: Type Casting")

/**
 Type casting is a way to chek the type of an instance, or to treat that instance as a different  superclass or subclass from somewhere else in its own class hierarchy.
 Type casting in Swift is implemented with the -is and -as operators.
 These two operators provide a simple and expressive way to check the type of a value or cast a value to a different type.
 */

/**
 CHECKING TYPE
 Use the type check operator (is) to check whether an instance is of a certain subclass type.
 The type check operator returns true if the instance is of that subclass type and false if it's not.
 */

var isLegit:Bool = false

if isLegit is Bool {
    print("Legit is a predicate of legitness")
} else {
    "Legit is not a predicate"
}

enum Manufacturer {
    case toyota
    case mercedese
    case bmw
    case maserrati
    case landRover
    case generic
}

class Vehicle {
    var maker:Manufacturer = .generic
    
    func drive(){
        print("Driving vehicle built by \(maker)")
    }
}

class MercedeceAMG : Vehicle{
    var topSpeed:Int = 2000
    
    override func drive(){
        print("Driving mercedese AMG built by \(super.maker) at \(topSpeed) Km/ph")
    }
}

class ToyotaLandCruiser : Vehicle{
    var topSpeed:Int = 4000
    
    override func drive(){
        print("Driving a Toyota Land Cruiser built by \(super.maker) at \(topSpeed) Km/ph")
    }
}

var mercedece = MercedeceAMG()
mercedece.maker = Manufacturer.mercedese

var toyota = ToyotaLandCruiser()
toyota.maker = Manufacturer.toyota

if mercedece is Vehicle {
    print("Mercedese is a vehicle yo!")
}

if toyota is Vehicle {
    print("Toyota's are still vehicles")
}

if toyota is ToyotaLandCruiser {
    print("The Toyoto land cruiser is a legit Toyota")
}

if mercedece is MercedeceAMG {
    print("The Mercedese AMG is a very fast Mercedese")
}


