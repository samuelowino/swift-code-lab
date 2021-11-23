//
//  initialization.swift
//  swift-basics
//
//  Created by Samuel Owino on 23/11/2021.
//

import Foundation

print("Swift Book Chapter 10: Initialization")

//Initialization Parameters
//You can provide initialization parameters as part of an initializer's definition,
//to define the types and names of the values that customize the initialization process

//Initialization parameters have the same capability and syntax as function and method parameters.

enum LamborghiniModel {
    case aventador
    case huracan
    case urus
    case _330GT
    case _400GT
    case miura
    case espada
    case countach
}

struct Lamborghini {
    var topSpeedKmph:Double
    var model:LamborghiniModel
    
    init(model type:LamborghiniModel, speedFromKmph speedKmph:Double){
        model = type
        topSpeedKmph = speedKmph
    }
    
    init(model type:LamborghiniModel, speedFromMph speedMph:Double){
        model = type
        topSpeedKmph = speedMph * 1.6093440
    }
    
    func carDetails(){
        print("Model: \(model) Top Speed:\(topSpeedKmph) Km/h")
    }
}

var aventador2021 = Lamborghini(model: LamborghiniModel.aventador, speedFromMph: 217)
var huracan2014 = Lamborghini(model: LamborghiniModel.huracan, speedFromKmph: 325)
var urus2018 = Lamborghini(model: LamborghiniModel.urus, speedFromKmph: 305)

var favouriteLamboModels = [aventador2021,huracan2014,urus2018]

var sortedBySpeed = favouriteLamboModels.sorted(by: {model1, model2 in model1.topSpeedKmph > model2.topSpeedKmph})

print("Sports cars I can't afford")

for car in sortedBySpeed {
    print(car.carDetails())
}

//Assigning Constant Properties During Initialization
//You can assign a value to a constant property at ay point during initialization, as long as it's set to a definite value by the time initialization finishes.
//Once a constant property is assigned a value, it can't be further modified.

class SurveyQuestion {
    let text:String
    var response:String?
    
    init(text:String){
        self.text = text
    }
    
    func ask(){
        print(text)
    }
}

let surveyQuestion = SurveyQuestion(text:"How do you feel about house flies ?")
surveyQuestion.ask()
surveyQuestion.response = "Nauseated"

//Default Initializers
//Swift provides a default initializer for any structure or class that provides default values for all of its properties
//and doesn't provide at least one initializer itself.
//The default initializer simply creates a new instance with all of its properties set to their default values

class ShoppingListItem {
    var name:String?
    var quantity:Int = 0
    var purchased:Bool = false
    
    func viewList(){
        print("Shopping List:\nName: \(name)\nQty: \(quantity)\nPurchase Status:\(purchased)")
    }
}

var item = ShoppingListItem()

item.viewList()

//Memberwise Initializers for Structure Types
//Structure types automatically receive a memberwise initializer if they don't define any of their own custom initializers.
//Unlike a default initializer, the structure receives a memberwise initializer even if it has stored properties that don't have default values

struct Size {
    var width:Double = 0.0
    var height:Double = 0.0
}

let sixBySix = Size(width: 6.0, height: 6.0)

//When you call memberwise initializers, you can omit values for any properties that have default values.

let sixByWhatever = Size(width:6)

//Required Initializers
//Write the -required modifier beffore the definition of a class initializer to indicate that every subclass of the class must implement that initializer
class Watch {
    var timer:String
    required init(countDownFeature timer:String){
        self.timer = timer
    }
}

class RolexWatch:Watch {
    var model:String
    required init(countDownFeature timer: String) {
        super.init(countDownFeature: timer)
    }
}

var rolexDayDateWatch = RolexWatch(countDownFeature: "Day Date and Time")
rolexDayDateWatch.model = "Day-Date"

var rolexDaytona = RolexWatch(countDownFeature: "Chronograph")
rolexDaytona.model = "Daytona"

//Setting a Default Property Value with a Closure or Function
//If a stored property's default value requires some customization or setup, you can use a closure or global function to provider a customized default value
//for that property. Whenever a new instance of the type that the property belongs to is initialized, the closure or function is called, and its return value
//is assigned as the property's default value

class Player {
    var name:String?
    var lotteryEntry:Int
    
    init(_ entry:Int){
        self.lotteryEntry = entry
    }
}

class Lottery {
    let randomWinner: Player = {
        var randomSalt:Int = Int.random(in: 1..<1000)
        var randomDoubleSalt:Int = Int.random(in: 500...700)
        var winningNumber:Int = randomSalt % randomDoubleSalt
        return Player(winningNumber)
    }()
}

var lotto = Lottery()
var winningPlayer:Player = lotto.randomWinner

//Note that the closurer's end curly braces is followed by an empty pair of parenthesis ().
//This tells Swift to execute the closure immediately.If you omit these parentheses,
//you are trying to assign the closure itself to the property, and not the return value of the closure.


