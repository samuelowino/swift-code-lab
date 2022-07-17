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

