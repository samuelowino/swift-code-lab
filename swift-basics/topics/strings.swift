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

//=================================================================

var why = "why"
why.insert("?", at: why.endIndex) // why ?
print(why)

//=================================================================

var warn = "You have been warned "
var details = " do not enter, private property"
warn.insert(contentsOf: details, at: warn.index(before: warn.endIndex))

print(warn)

//=================================================================

var hello = "Hello!"
hello.remove(at: hello.index(before: hello.endIndex))

print(hello)

//=================================================================

var helloWorld = "hello world"

let range = hello.index(helloWorld.endIndex, offsetBy: -5)..<helloWorld.endIndex

helloWorld.removeSubrange(range)

print(helloWorld)

//=================================================================

var greeting = "Hi mary"

if greeting.hasPrefix("Hi"){
    print(greeting)
}

var ending = "This is the end"

if ending.hasSuffix("end"){
    print(ending)
}