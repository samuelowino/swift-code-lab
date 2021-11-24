//
//  concurrency.swift
//  swift-basics
//
//  Created by Samuel Owino on 24/11/2021.
//

import Foundation

print("Swift Book Chapter 14: Concurrency")

/**
 
 INTRODUCTION TO SWIFT CONCURRENCY
 
 Swift has built-in support for writing asynchronouse and parallel code in a structured way.
 Asynchronous code can be suspended and resumed later, although only one piece of the program executes at a time.
 Suspending code in your program lets it continue to make progress on short-term operations like updating its UI
 while continuing to work on long-running operations like fetching data over the network or parsing files.
 
 Parallel code means multiple pieces of code run simulateneously - for example;
 a computer with a four-core processor can run four pieces of code at the same time, with each core carrying out one of the tasks.
 
 Swift lets you express your intent in a way that enabled some compile-time checking- for example, you can use actors to safely access mutable state.

 */

/**
 
 DEFINING AND CALLING ASYNCHRONOUS FUNCTIONS
 
 In Swift, an synchronous function or asynchronous method is a special kind of function or method that can be suspended while on it's pathway through
 execution. This is in contrast to ordinary, synchronous functions and methods, which either run to completion, throw an error, or even return.
 An asynchronous function still does one of those things, but it can also pause in the middle when it's waiting for something.
 Inside the body of an asynchronous function, you makr each of these places where execution can be suspended.
 
 To indicate that a function or method is asynchronous, you write the async keyword in its declarationafter its parameters, similar to how you use the throws
 to mark a throwing function. If the funnction returns a value, you write async before the return arrow (->).
 
 When calling an asynchronous method, execution suspends until that method returns.
 You write await in front of the call to mark the possible suspenion point. This is like writing try when calling a throwing function, to mark the possible change to the program's
 flow of execution.
 
 */

func listPhotos(inGallery name:String) async -> [String] {
    print("Fetching photos in about 5 seconds")
    let result:[String] = ["birthday-party.png","cat.jpg","screenshot001_1.png"]
    await Task.sleep(5 * 1_000_000_000)
    print("Completed fetching photos")
    return result
}

/**
 ASYNC CALL IN A FUNCTION THAT DOES NOT SUPPORT CONCURRENTY ERROR
 
 This error occurs when you've tried to call an async function from a synchronous function, which is not allowed in swift
 - asynchronouse functions must be able to suspend themselves and their callers, and synchronous functions simply don't know how to do that.
 
 If your asynnchronous work needs to be awaited for, you don't have much of a choice but to mark your current code as also being -async so that you
 can use -await as normal. However, something this can result in a bit of an "async infection" - you mark you funnction as being async, which means its caller
 needs to be async too, as does its called and so on, until you've turned one error into 50
 
 In this situation, you can create a dedicated -Task to solve the problem.
 
 func doRegularWork() {
    Task {
         await doAsyncWork()
    }
 }
 
 */

func renderPhotosAfterFetch() {
    Task {
        await listPhotos(inGallery: "Wallpapers")
    }
}

renderPhotosAfterFetch()

