//
//  protocols.swift
//  swift-basics
//
//  Created by Samuel Owino on 25/11/2021.
//

import Foundation

print("Swift Book Chapter 18: Protocols")

/**
 A protocol defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality.
 The protocol can then be adopted by a class,structure or enumeration to provide an actual implementation of those requirements.
 Any types thaat satisfies the requirements of a protocol is said to conform to that protocol.
 
 */

/**
 PROTOCOL SYNTAX
 
 You define a protocol in a very similar way to classes, structs and enums.
 
 */

protocol SomeProtocol {
    //protocol definition goes here
}

protocol AnotherProtocol {
    //protocol definition goes here
}

/**
 Custom types state that they adopt a particular protocol by placing the protocol's name after the type's names, seperated by a color, as part of their definition.
 Multiple protocols can be listed and are seperated by commas:

 */

struct SomeStruct: SomeProtocol, AnotherProtocol {
    //struct definition goes here
}

/**
 If a class has a superclass, list the superclass name before any protocols it adopts, followed by a comma:
 */

class SomeSuperDuperClass {
    
}

class SomeClass: SomeSuperDuperClass, SomeProtocol, AnotherProtocol {
    //class definition goes here
}

/**
 PROPERTY REQUIREMENTS
 A protocol can require any conforming type to provide an instance property or type property with a particular name and type.
 The protocol doesn't specify whether the property should be a stored property or a computed property - it only specifies the required property name and type.
 The protocol also specifies whether each property must be gettable or gettable and settable.
 
 Property requirements are always declared as variable properties, prefixed with the var keyword.
 Gettable and settable properties are indicated by writing { get set } after their type declaration, and gettable properties are indicated by writing
 { get }.
 */

protocol GhostProtocol {
    var movieLength:Double { get set}
    var starringActor:String { get }
    
    func printMarketingBillboard()
}

struct MovieStudio: GhostProtocol {
    var movieLength: Double
    var starringActor: String
    
    func printMarketingBillboard() {
        print("Mission Impossible III: Ghost Protocol, Starring, Tom Cruise")
    }
}

var warnerBrothers:MovieStudio = MovieStudio(movieLength: 120, starringActor: "Tom Cruise")

warnerBrothers.printMarketingBillboard()

