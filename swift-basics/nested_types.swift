//
//  nested_types.swift
//  swift-basics
//
//  Created by Samuel Owino on 24/11/2021.
//

import Foundation

print("Swift Book Chapter 16: Nested Types")

//To nest a type within anothr type, write its definnition within the outer braces of the type it supports.
//Type can be nested to as manay level as required

struct Screen {
    struct Button {
        struct Text {
            static var text:String = "Hellow World!"
        }
    }
    
    struct Text {
        static var textSize:Int = 21
        static var text:String = "Screen Text"
    }
    
    struct Card {
        
        enum Color {
            case blue
            case red
        }
        
        struct Pill {
            
            static var color:Color = .red
            
            struct Text {
                static var text:String = "Pill Text"
            }
        }
    }
}

var message = Screen.Text.text

print("IPhone Screen Label reads - \(message)")
