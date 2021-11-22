//
//  functions.swift
//  swift-basics
//
//  Created by Samuel Owino on 19/11/2021.
//

import Foundation

print("Swift Chapter 5, Functions")

//Look at main.swift for functions' absolute basics
//function with multiple return types

enum LifeProperties {
    case humanBodyTemperatureCelcious
    case vehicleSpeedMph
    case humanAge
    case worldWareIIDurationYears
}

func findThreshbold(property:LifeProperties) -> (min:Int,max:Int,property:LifeProperties) {
    switch property {
    case LifeProperties.humanAge:
        return (0, 110,property)
    case LifeProperties.vehicleSpeedMph:
        return (1,450,property)
    case LifeProperties.humanBodyTemperatureCelcious:
        return (37,38,property)
    case LifeProperties.worldWareIIDurationYears:
        return (1939,1945,property)
    }
}

let range = findThreshbold(property: LifeProperties.humanBodyTemperatureCelcious)
print("The range for \(range.property) is Min:\(range.min) and Max: \(range.max)")

let range1 = findThreshbold(property: LifeProperties.vehicleSpeedMph)
print("The range for \(range1.property) is Min:\(range1.min) and Max: \(range1.max)")

let range2 = findThreshbold(property: LifeProperties.humanAge)
print("The range for \(range2.property) is Min:\(range2.min) and Max: \(range2.max)")

let range3 = findThreshbold(property: LifeProperties.worldWareIIDurationYears)
print("The range for \(range3.property) is Min:\(range3.min) and Max: \(range3.max)")

//Return an optional tuple for possibly nil results
func possibleCausesOfNusea() -> (cause:String, probability:Double)? {
    return nil
}

if let nuseaCauses = possibleCausesOfNusea() {
    print("Nusea is probably caused by \(nuseaCauses.cause) at \(nuseaCauses.probability)% probability")
} else {
    print("We think nusea just happens with no cause")
}

//Function with single statements can have implicit returns statements
//You can omit the return statement
func justComposeBirthdaySong(name:String,age:Int) -> String {
    "Happy birthday to \(name). How old are you now ? ... \(age)"
}

print(justComposeBirthdaySong(name: "Miles Munroe", age: 101))

//Function Argument Labels and Parameter Names
func someFunction(argLabel paramName:String){
    //argLabel is used when this function is called while
    //parameter name can be used within this function for processing
    print(paramName)
}

//You can ommit the argLabels with _ underscore in place of the argument labels
func someOtherFunction(_ paramName:String){
    //callers of the function can now just pass argument without the arg label
    print(paramName)
}

//first function
someFunction(argLabel: "Joy is joy bro")

//function without param label
someOtherFunction("Job is job bro")

//Default parameter values
//You can define a default value for a parameter in a function by assigning a value
//to the parameter
func roadBlock(road:String,date:String,cause:String = "Prison Break"){
    print("Setting up road blocks in \(road) due to \(cause) on \(date)")
}

roadBlock(road: "Highway 6", date: "01/02/2003") //cause is set to "Prison Break"
roadBlock(road: "Jurasic Park Avenue B8", date: "01/11/2054", cause:"Dreadnoughtus 🦕🦕 dinnos have escaped 😧😧")
//cause is set to new value

//Variadic parameters
//parameters that accept one or more values of the same type
func runner(_ laps:Int...){
    for lap in laps {
        print("Running lap \(lap) 🏃🏃‍♂️🏃‍♀️🏃‍♂️")
    }
    
    print("🔥🔥Finished race🔥🔥 at lap \(laps.count) 🏃🏃‍♂️🏃‍♀️🏃‍♂️")
}

runner(1,2,3,4,5,6,7,8)

//Function inout parameters
//Swift parameters are constant by default.
//If you want to change the value of the parameters you have to define them as inout
func updateBabyNames(_ babyName:inout String) {
    babyName = "Huges Glue"
}

//does not accept literals or constants as args
//use expliti & before var name to specify that it can be changed
var babyName = "Justin Bieber"
print("👶 Original baby name ==> \(babyName)")
updateBabyNames(&babyName)
print("👶 After second thought baby name is ==> \(babyName)")

