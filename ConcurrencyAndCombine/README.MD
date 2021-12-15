> This covers general concurrency in swift and the Combine framework.

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

An asynchronous function still does one of those three things, but it can also pause in the middle when it's waiting for something. Inside the body of an asynchronouse function or method, you mark each of these places where execution can be suspended.

To indicate that a funnction or method is asychronous, you write the async keyword in its declaration after its parameters, similar to how you use **throws** to mark a throwing function.  If the method or function returns a value, you write **async** before the return arrow(->).

For example, here's how you might fetch the names of photos in gallery:

```
func listPhotos(inGallery name: String) async -> [String] {
    let result = // ... some asynchronous networking code ...
    return result
}
```

For a function or method that's both asychronous and throwing, you write async before throws.


- - - 

# Combine
> Framework

Customizable handling of asynchronous events by combining event-processing operators.

## Overview

The Combine framework provides a declarative Swift API for processing values over time. These values can represent many kinds of asynchronous events. Combine declares *publishers* to expose values that can change over time and *subscribers* to receive those values from the publishers.

* The **Publisher protocol** declares a type that can deliver a sequence of values over time. Publishers have **operators** to act on the values received from **upstream publishers** and **republish** them. 

* At the end of a chain of publishers, a **Subscriber** acts on elements as it receives them. Publishers only emit values when explicitly requested to do so by subscribers. This puts subscriber code in control of how fast it receives events from the publishers it's connected to.

> Several **Foundation** types expose their functionality through publishers, including **Timer**,**NotificationCenter**, and **URLSession**. 

You can combine the output of multiple publishers and coordinate their interaction. 

For example: You can subscribe to the updates from a text field's publisher, and use the text to perform URL requests. You can then use another publisher to process the responses and use them to update your app.

- - -

## Receiving and Handling Events with Combine

> Use Case
> In AppKit, each keystroke in the text field produces a **Notification** that you can subscribe to with Combine. After receiving the notification, you can use operators to change the content and timing of event delivery, and use the final result to update your app's user interfacce.

### Connect a publisher to a subscriber

```
let publisher = NotificationCenter.default
                    .publisher(
                    for: NSControl.textDidChangeNotification, 
                    object: filterField)
```

To receive the text field's notifications with Combine, access the default instance of **NotificationCenter** and call its **publisher(for:object:)** method. This call takes the notification name and source object that you want notifications from, and returns a publisher that produces notification elements.

You use a **Subscriber** to receive elements from the publisher. 

Combine provides two built-in subscribers, which automatically match the output and failure of their attached publisher:

* **sink(receiveCompletion:receiveValue:)** takes two closures. 
    The first closure executes when it receives **Subscribers.Completion**, which is an enumeration that indicates whether the publisher finished normally or failed with an error. 
    
    The second closure executes when it receives an element from the publisher.
    
* **assign(to:on:)** immediately assigns every element it receives to a property of a given object, using a key path to indicate the property.

```
let sub = NotifiactionCenter.default
            .publisher(
                for: NSControl.textDidChangeNotification, 
                object: filterField
                )
                
            .sink(
                receiveCompletion: { result in print($0)},
                receiveValue: { value in print(value) }
            )
            
```

### receiveComplete
The closure to execute on completion

### receiveValue
The closure to execute on receipt of a value



