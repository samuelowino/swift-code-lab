//
//  error_handling.swift
//  swift-basics
//
//  Created by Samuel Owino on 23/11/2021.
//

import Foundation

print("Swift Book Chapter 13: Error Handling")

//Error handling is the process of responding to and recovering from error conditions in your program.
//Swift provides first-class support for throwing, catching, propagating and manipulating recoverable error at runtime
//Some operations aren't guaranteed to always complete execution or produce a useful output.
//Optionals are used to represent the absence pf a value, but when an operation fails, it's often useful to understand
//what causes the failure, so that your code respond accordingly.

//Representing and Throwing Errors
//In Swift, errors are represented by values that conform to the Error protocol.
//This empty protocol indicates that a type can be used for error handling

//Swift enumerations are particularly well suited to modeling a group of related error conditions,
//with assciated values allowing for additional information about the nature of an error to be communicated.
//For example, here's how you might represent the error condition of operating a vending machine inside a game.

enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded:Int)
    case outOfStock
}

//Throwing an error lets you indicate that something unexpected happened and the normal flow of execution
//can't continue. You use a throw statement to throw an error.
//For example, the following code throws an error to indicate that five additional coins are needed by the vending machine.

// ==> throw VendingMachineError.insufficientFunds(coinsNeeded: 5)

//Handling Error
//There are four ways to handle errors in Swift.
//1. You can propagate the error from a function to the code that calls that function
//2. Handle the error using a | do-catch | statement.
//3. Handle the error as an optional value
//4. Assert that the error will not occur.

//When a function throws an error, it changes the flow of your program,
//so it's important that you can quickly indentify places in your code that can throw errors.
//To identify these places in your code, write the try keyword-or the try? or try! variation-before a pice of code
//that that calls a function, method or initializer that can throw an error.


//To indicate a function,method or initializer can throw an error, you write the throws keyword in the function's
//declaration after its parameters.
//A function marked with throws is called a throwing function.
//if the function specifies a return type, you write the throws keyword before the return arrow (->)

enum MediaPlayerError: Error {
    case noAudioSourceError
    case volumeTooLowError
    case headsetSwitchedOffError
}

enum HeadsetOnOffStatus {
    case ON
    case OFF
}

class Headphones {
    var volume:Int = 0
    var onOffStatus:HeadsetOnOffStatus = HeadsetOnOffStatus.OFF
    var connected:Bool = false
    
    func playSong() throws -> String{
        
        let playingSong:String = "Motorsport - By allotOfRappers"
        
        if volume < 1 {
            throw MediaPlayerError.volumeTooLowError
        }
        
        if onOffStatus == .OFF {
            throw MediaPlayerError.headsetSwitchedOffError
        }
        
        if !connected {
            throw MediaPlayerError.noAudioSourceError
        }
                
        return playingSong
    }
}

//Handling errors using Do-Catch
//You use a do-catch statement to handle errors by running a block of code.

var appleAirpodsMax = Headphones()

do {
    let nowPlayingSong:String = try appleAirpodsMax.playSong()
    print("Headset Connected and Playing \(nowPlayingSong)")
} catch MediaPlayerError.headsetSwitchedOffError {
    print("Error! Your headphone is switched off... somehow")
} catch MediaPlayerError.noAudioSourceError , MediaPlayerError.volumeTooLowError{
    print("Error! Corrupted audio source")
}

var sonyM7 = Headphones()
sonyM7.connected = true
sonyM7.onOffStatus = HeadsetOnOffStatus.ON
sonyM7.volume = 12

do {
    let playingSong:String = try sonyM7.playSong()
    print("Headset Connected and Playing \(playingSong)")
} catch MediaPlayerError.headsetSwitchedOffError {
    print("Error! Your headphone is switched off... somehow")
} catch MediaPlayerError.noAudioSourceError , MediaPlayerError.volumeTooLowError{
    print("Error! Corrupted audio source")
}

//Disabling Error Propagation
//try! to disable error propagation
