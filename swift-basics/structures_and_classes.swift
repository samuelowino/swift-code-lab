//
//  structures_and_classes.swift
//  swift-basics
//
//  Created by Samuel Owino on 22/11/2021.
//

import Foundation

print("Swift Book Chapter 7: Structures and Classes")

//Structures and Classes are general purpose,flexible constructs that become
//the building blocks of your program's code.

//Definition syntax
//Structures and classes have a similar definition syntax

struct Resolution {
    var width:Int = 0
    var height:Int = 0
}

class VideoMode {
    var resolution = Resolution()
    var interfaced = false
    var frameRate = 0.0
    var name:String?
}

//The syntax for creating an instance is very similar for both structures and classes

let _monitorResolution = Resolution()
let defaultVideoMode = VideoMode()

//Access the properties of an instance using dot

defaultVideoMode.name = "Standard"

print("Resolution is \(_monitorResolution.width) by \(_monitorResolution.height)")
print("Video mode: interfaces ==> \(defaultVideoMode.interfaced): frame rate ==> \(defaultVideoMode.frameRate): Name \(defaultVideoMode.name)")

//Memberwise Initializers for Structure Types
//All structures unlike classes have a generated memberwise initilizer, which
//you can use to initialize the member properties of new structure instances.
//Initial values for the properties of the new instance can be passed
//to the memberwise initializer by name:

let vga = Resolution(width: 1044, height: 800)

print("vga resolution is \(vga.width) by \(vga.height)")

//classes are references types while atructures and enumerations are value types
//A value type is a type whose value is copied when it's assigned to a variable or constant
//Classes are reference types. Unlike value types, reference types are not copied
//when they are assigned to a variable or constant, or when they are passed to a function.
//Rather than a copy a referebce to the same existing instance is used.ref

