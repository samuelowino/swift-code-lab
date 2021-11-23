//
//  deinitialization.swift
//  swift-basics
//
//  Created by Samuel Owino on 23/11/2021.
//

import Foundation

print("Swift Book Chapter 11: Deinitialization")

//Deinitialization
//A denitializer is called immediately before a class instance is deallocated. You write deinitializers with the
//-deinit- keyword, similar to how initializers are written with the init keyword.
//Deinitializers are only available on class types.

//How Deinitialization Works
//Swift automatically deallocates your instances when they're no longer needed, to free up resources.
//Swift handles the memory management of instances through -automatic reference counting (ARC).
//Typically you don't need to perform manual cleanup when your instances are deallocated.
//However, when you are working with your own resources, you might need to perform some additional cleanup yourself.
//For example, if you write a custom class to open a file and write some data to it, you might need to close the file before
//the class instance is deallocated.

//Class definitions can have at most one deinitializer per class.
//The deinitializer doesn't take any parameters and is written without parentheses:

class UserApi {
    var request:String
    var server:String
    var payload:String
    
    init(url request:String, to server:String, with data:String) {
        self.request = request
        self.server = server
        self.payload = data
        print("Make Api request to \(server):\(server) with \(data) ")
    }
    
    deinit {
        print("Deinitializing UserApi, shutting down connections... clearing pending requests...")
    }
}

//Deinitializers are called automatically, just before instance declaration takes place.
//You aren't allowed to call a deinitializer yourself.
//Superclass deinitializers are inherited by their subclasses, and the superclass deinitializer
//is called automcatically at the end of a subclass deinitializer implementation.
//Superclass deinitializers are always called even if a subclass doesn't provide its own deinitializer.


