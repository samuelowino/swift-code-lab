// Swift-5 New Features

import Foundation

// SE-0255 Omit Return on single expression functions
// 🔗https://github.com/apple/swift-evolution/blob/main/proposals/0025-scoped-access-level.md

func getInput(_ input: String) -> String {
    input //returns the input
}

let result = getInput("Hello Swift-5")

print(result)

// SE-0200 Enhanced String Delimited for Raw Strings #
// 🔗https://github.com/apple/swift-evolution/blob/main/proposals/0200-raw-string-escaping.md

func printResults(_ candidate: String, _ score: Int){
    let message = #"Hi, so \(candidate) scored only \(score)"#
    print(message)
}

printResults("Joan", 22) //Hi, so \(candidate) score only \(score)


func printResultsV2(_ candidate: String, _ score: Int){
    let message = #"Hi, so \#(candidate) scored only \#(score)"#
    print(message)
}

printResultsV2("Joan", 22) //Hi, so Joan score only 22

func printResultsV3(_ candidate: String,_ score: Int){
    let message = #"Hi, so "in this competion" \#(candidate) scored only \#(score)"#
    print(message)
}

printResultsV3("Joan", 22) //Hi, so "in this competion" Joan scored only 22

//SE-0228 Expressible String Interpolation
// 🔗https://github.com/apple/swift-evolution/blob/main/proposals/0228-fix-expressiblebystringinterpolation.md

struct Rocket {
    var name: String
    var mfcDate: Date

    init(_ name: String, _ mfcDate: Date) {
        self.name = name
        self.mfcDate = mfcDate
    }
}

extension String.StringInterpolation {
    mutating func appendInterpolation(_ rocket: Rocket){
        appendInterpolation("Name: ==> \(rocket.name)\nManufacture Date: ==> \(rocket.mfcDate)")
    }
}

let saturnV: Rocket = Rocket("Saturn V", Date())

print("\(saturnV)")

// SE-0249 Key Path Expressions as Functions

struct User {
    let email: String
    let admin: Bool
}

var users: [User] = []

users.append(User(email: "joel@app.com", admin: false))
users.append(User(email: "marck@app.com", admin: false))
users.append(User(email: "denise@app.com",admin: false))
users.append(User(email: "magnito@app.com",admin: true))

//Using map()
//Returns an array containing the results of the mapping given the closure over
//the sequence's elements
let emails: [String] = users.map { $0.email}

print("\(emails)") //["joel@app.com", "marck@app.com", "denise@app.com", "magnito@app.com"]

let adminLevel: [Bool] = users.map { $0.admin}

print("\(adminLevel)") //[false, false, false, true]

//Using Keypath

let userEmails: [String] = users.map(\.email)

print("\(userEmails)") //["joel@app.com", "marck@app.com", "denise@app.com", "magnito@app.com"]

let adminLevels: [Bool] = users.map(\.admin)

print("\(adminLevels)") //[false, false, false, true]