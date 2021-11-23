//
//  optional_chaining.swift
//  swift-basics
//
//  Created by Samuel Owino on 23/11/2021.
//

import Foundation

print("Swift Book Chapter 12: Optional Chaining")

//Optional chaining is a process for querying and calling properties, methods and subscripts on an
//optional that might currently be nil.
//If the optional contains a value, the proprty method, or subscript call succeeds; if the optional is nil
//the property,method or subscript call returns nil.
//Multiple queries can be chained together and the entire chain fails gracefully if any link in the chain is nil

//To reflect the fact that optional chaining can be called on a nil value, the result of an optional chaining call is always
// an optional value, even if the property,method or subscript you are querying returns a non-optional value.
//You can use this optional return value to check whether the optional chaining call was successful, or didn't
//succeed due to a nil value in the chain. - the returned value is nil

enum Color {
    case white
    case red
    case pink
}

class ChewingGum {
    var color:Color = Color.red
}

class Lollipop {
    var possibleChewingGum: ChewingGum?
}

var bigLollipo = Lollipop()

if let lollipopChewingGumColor = bigLollipo.possibleChewingGum?.color {
    print("🍭 Lollipop has \(lollipopChewingGumColor) chewing gum. Enjoy! 🍭🍭")
}else {
    print("Sorry Lollipop 🍭 has no chewing gum... 😭😭")
}

bigLollipo.possibleChewingGum = ChewingGum()

if let lollipopChewingGumColor = bigLollipo.possibleChewingGum?.color {
    print("🍭 Lollipop has \(lollipopChewingGumColor) chewing gum. Enjoy! 😺😺")
}else {
    print("Sorry Lollipop 🍭 has no chewing gum... 😭😭")
}
