//
//  collections.swift
//  swift-basics
//
//  Created by Samuel Owino on 18/11/2021.
//

import Foundation

print("Swift Chapter 4, Collections")

//==> Swift Collections comprise of arrays, sets and dictionaries
//==> Swift collections are mutable, which means you can change a collection after creating it
//==> Swift arrays store non-unique elements of the same type in ordered index
//==> Swift array elements type is specified by either Array<Type> or commonly [Type]
var favouriteKenyanMusicians:[String] = ["#1 Karun","#2 Bey T","#3 Steph Kapella","#4Khaligraph Jones","#5 Octopizzo","#6 Tunji"]

print("These 254 musicians are great \(favouriteKenyanMusicians)")

print("")
//Empty array
var emptyArray:[Int] = []

//Add elements to array after initialization
emptyArray.append(1991)
emptyArray.append(2021)

print("Some numbers for you \(emptyArray)")

//Adding two arrays together
var milk:[String] = ["Dairy milk","Brookside milk","Generic Milk"]
var water:[String] = ["Dasani water","Generic water","River water","Lake Water"]
var teaLeaves:[String] = ["Baraka Tea","Limuru Tea","Kericho Tea"]
var tea_s:[String] = milk + water + teaLeaves

print("Here is some tea \(tea_s)")

//operations on arrays
//count
let milkBrands:Int = milk.count
//check if empty
let anyTeaLeft:Bool = tea_s.isEmpty
//append values
water.append("Ocean water") //would probably not make good tea
//append with +=
teaLeaves += ["Some other tea brand","The tea brand I dont use"]
print("New tea leaves \(teaLeaves)")
//extract array with subscript syntax
let firstMilkBrand:String = milk[0]
print("First milk brand \(firstMilkBrand)")
//replace element with subscript syntax
milk[1...2] = ["Jola Milk","Miss Bapes"]
print("New milk brand list \(milk)")
//insert at specific index with inser(_,at:[index])
tea_s.insert("Sufuria", at:0) // you can't make tea without sufuria[swahili]
print("tea_s 2.0 \(tea_s)")
//remove last element
tea_s.removeLast()
tea_s.removeFirst()
//iterate over an array
print("")
for teaIngredient in tea_s {
    print("Tea Ingredient ==> \(teaIngredient)")
}
print("")

//Sets
//initialize a set
var colors = Set<String>()
colors.insert("Red")
colors.insert("Green")
colors.insert("Blue")

//create set with literal values
let finalSet:Set<Double> = [12.04,8.1,1.1]

enum BallColor {
    case blue
    case green
    case orange
    case other
}

//Must implement Hashable protocol
class Ball:Hashable,Equatable {
    var uuid:String = UUID().uuidString
    var color:BallColor
    var diameter:Int
    
    init(color:BallColor,size:Int){
        self.color = color
        self.diameter = size
    }
    
    func printBallSpecs(){
        print("Ball Specs color: \(color), diameter:\(diameter) inches")
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(uuid)
    }
    
    static func ==(lhs:Ball, rhs:Ball) -> Bool {
        return lhs.uuid == rhs.uuid
    }
}

var fifaBalls:Set<Ball> = Set<Ball>()

let greenFifaBall:Ball = Ball(color:BallColor.green,size:21)
let blueFifaBall:Ball = Ball(color:BallColor.blue,size:8)

fifaBalls.insert(greenFifaBall)
fifaBalls.insert(blueFifaBall)

for fifaBall in fifaBalls {
    print(fifaBall.printBallSpecs())
}

//Dictionaries
//Swift dictionary stores associations between keys of the same type and values of the same type

//Empty dictionary with keys of type string and values of type int
var topScores:[String:Int] = [:]

//create dictionary with literals
var billBoardHot5:[Int:String] = [
    1:"Drake - Nonestop",
    2:"Logic - Midnight",
    3:"Joyner Lucas ft Eminen - Lucky you",
    4:"Simi - UNDESERVING",
    5:"Bey T - 8:95"
]

//count items in a dictionary with dictionary.count

print("Billboard top \(billBoardHot5.count) songs list")

//check if dictionary is empty with .empty

if topScores.isEmpty {
    topScores = ["Maxwell GameR": 1]
} else {
    print("We already have top scorers Maxwell.")
}

//Add values to dictionary with subscript syntax
topScores["Mumito"] = 2

print("\nCurrent top scores ==> \(topScores)")

//Update value by subscript
topScores["Mumito"] = 1
topScores["Maxwell GameR"] = 2

print("\nUpdated top score as of last game \(topScores)")

//Update top score with updateValue dictionary function
topScores.updateValue(2, forKey: "Mumito")
topScores.updateValue(1, forKey: "Maxwell GameR")

print("\nAfter third run scores are \(topScores)")

//iterate over the dictionary with fo-in
for (player,score) in topScores {
    print("\nPlayer: \(player) ==> Rank: \(score)")
}

//obtain an iterable for dictionary keys or values as follows
print("\nWe have the following players")
for player in topScores.keys {
    print(player)
}

print("\nPossible ranks are as follows")
for rank in topScores.values {
    print(rank)
}

//Dictionary as function return type
func getPlaceCoordinates() -> Dictionary<String,Double> {
    var placeCoordinates:[String:Double] = [:]
    
    placeCoordinates["Kenya Lat"] = 75.21
    placeCoordinates["Kenya Lng"] = 21.02
    placeCoordinates["NYC Lat"] = 100.87
    placeCoordinates["NYC Lng"] = 33.54
    
    return placeCoordinates
}

print("Google Maps Clone <<<")
for (place,coordinates) in getPlaceCoordinates() {
    print("\(place) is \(coordinates)")
}
