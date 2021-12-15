> This covers general concurrency inn swift and the Combine framework.

# Concurrency

Swift has built-in support for writing asychronous and parallel code ina structured way. Asynchronous code can be suspended and resumed later, although only one piece of the program executes at a time. 
 Suspending and resuming code in your program lets it continnue to make progress on short-term operations like updating the UI while continuing to make progress on short-term operations like fetching data over the network or parsing files.
 
 Parallel code means multiple pieces of code run simultaneously-for example, a computer with a four-core processor can run four pieces of code at the same time, with each core carrying out multiple operations at a time; it suspends operations that are waiting for an external system, and makes it easire to write this code in a memory-safe way.
 
 > Note:
 > If you've written concurrent code before, you might be used to working with threads. The concurrency model in Swift is built on top of threads, but you don't interact with them directly. An asynchronous fuction in Swift can give up the thread that it's running on, which lets another asynchronous function run on that thread while the first is blocked.
 
 - - -
 
 The following code downloads a list of photo names, downlods the first photo in that list, and shows that photo to the user:
 
 ```
 listPhotos(inGallery: "Summer Vacation") { photoNames in 
    let sortedNames = photoNames.sorted()
    let name = sortedNames[0]
    
    downloadPhoto(named: name) { photo in
        show(photo)
    }
 
}
 ```
 
## Defining and Calling Asynchronous Functions

An asynchronous function or asynchronous method is a special kind of function or method that can be suspended while on it's pathway through execution. This is in contrast to ordinary, synchronous functions and methods, which either run to completion, throw an error, or never return.

An asynchronous function still does one of those three things, but it can also pause in the middle when it's waiting for something. Inside the body of an asynchronouse function or method, you mark each these places where execution can be suspended.



