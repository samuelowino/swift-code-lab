//
//  generics.swift
//  swift-basics
//
//  Created by Samuel Owino on 25/11/2021.
//

import Foundation

print("Swift Book Chapter 19: Generics")

/**
 Generic code enabled you to write flexible,reusable functions and types that can work with any type, subject to requirements that you define.
 You can write code that avoids duplication and expresses its intent in a clear, abstract manner.
 */

func swapTwoString(_ a: inout String, _ b: inout String){
    let temporatyA = a
    a = b
    b = temporatyA
}

func swapTwoDoubles(_ a: inout Double, _ b: inout Double){
    let temporaryA = a
    a = b
    b = temporaryA
}

func swapTwoValues<T>(_ a: inout T, _ b: inout T){
    let temporaryA = a
    a = b
    b = temporaryA
}

struct Stack<Element> {
    var items:[Element] = []
    
    mutating func push(_ item: Element){
        items.append(item)
    }
    
    mutating func pop() -> Element{
        return items.removeLast()
    }
    
    mutating func length() -> Int{
        return items.count
    }
}

struct Book {
    var title:String
    var pages:Int
    var readingHours:Int
    
    func bookProperties() -> String{
        return """
        This Book is titled \(title)
        it has \(pages) pages in length
        and
        you will need about \(readingHours) hours to read the whole of it
        
        Cheer!
        """
    }

}

var stackOfBooks = Stack<Book>()
stackOfBooks.push(Book(title: "I suck at girls", pages: 100, readingHours: 8))
stackOfBooks.push(Book(title: "A Game of Thrones (1996)", pages: 1000, readingHours: 48))
stackOfBooks.push(Book(title: "Manning up, Swift in depth", pages: 200, readingHours: 15))

var removedBook:Book = stackOfBooks.pop()

print("After removing - \(removedBook.bookProperties()) - we are now left with \(stackOfBooks.length()) books books...")


