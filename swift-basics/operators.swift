//
//  operators.swift
//  swift-basics
//
//  Created by Samuel Owino on 18/11/2021.
//

import Foundation

print("Swift Basic Operators")

//Nil-Coalescing Operator
//Nil coalescing operator unwrapps options a ?? b if a is nil returns default value "b", if optional is not
//empty it ruturns the value of a
var optionalNumber:Int?

let value = (optionalNumber ?? 0)

let drakesSongs = ["Nonestop","0-to-100","Trophies"]
var favoriteDrakeSong:String = drakesSongs.randomElement() ?? "Not a fan"
let number:Int = Int("20") ?? 0
let notNumber:Int = Int("Not a number") ?? 0

print("value \(value) | favorite song \(favoriteDrakeSong) | number \(number) | not number \(notNumber)")

print("")

//Range operators
//Swift provides ragne operators as shortcuts for expressing range of values
//e.g a...b

//1. Closed Range Operator
//These are range operators that define moving from one starting point to end value
//e.g 1...5 runs from 1 to 5

for count in 1...5 {
    print("Counting to 5 range: \(count)")
}

print("")
//2. Half Open Range operator
//This defines a range a..<b where count starts at a to nearest value less than b
//Useful for counting arrays whose length start at 0

for index in 5..<8 {
    print("Index count: \(index)")
}

print("")

let rappersIKnow = ["Logic","Drake","Eminem","Lil Baby"]
let allRappersIKnow = rappersIKnow.count
for rapperIndex in 0..<allRappersIKnow {
    print("Rapper in index \(rapperIndex) is \(rappersIKnow[rapperIndex])")
}

print("")

//One-Side Range Operator
//One side range operator support ranges for as far as possible
// ...2 or 2... or ..<2
let floatInSpaceMovies = ["Guardians of the Galaxy","Star Wars","Star Trek"]

for movieIndex in [...2] {
    print("Movie index: \(movieIndex), movie \(floatInSpaceMovies[movieIndex])")
}

for movieIndex in [2...] {
    print("Movie index: \(movieIndex), movie \(floatInSpaceMovies[movieIndex])")
}

for movieIndex in [..<2] {
    print("Movie index: \(movieIndex), movie \(floatInSpaceMovies[movieIndex])")
}
