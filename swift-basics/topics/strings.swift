import Foundation

let title: String = "The Batman"
let startChar: Character = title[title.startIndex]
//let lastChar: Character = title[title.endIndex] Fatal error: String index is out of bounds
let lastChar: Character = title[title.index(before: title.endIndex)]


print("Start char: \(startChar), End Char: \(lastChar)")

//=================================================================

let emptyWords = ""
let start = emptyWords.startIndex
let end = emptyWords.endIndex

print(String(describing: type(of: start)))

print("Start of empty words: \(start) end of emptyWords \(end)")

//=================================================================

let easy: String = "ABC"
var mid = easy.index(before: easy.endIndex)

print("mid ABC is ==> \(easy[mid])")

mid = easy.index(after: easy.startIndex)

print("mid is ==> \(easy[mid])")

//=================================================================

let joy: String = "happy😁";
let emoji: Character = joy[joy.index(joy.startIndex, offsetBy:5)]

print("Joy emoji is ==> \(emoji)")