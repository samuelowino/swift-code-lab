//
//  properties.swift
//  swift-basics
//
//  Created by Samuel Owino on 22/11/2021.
//

import Foundation

print("Swift Book Chapter 8: Properties")

//Lazy Store Properties
//A lazy property is a property whose value is not calculated until the first time its used
//You indicate a lazy store property by adding the lazy modifier before its declaration

class WorldsStudentsDatabase {
    //loads very big list of students
    var allStudentsInTheWorld:Double?
    
    init(){
        //loads all students into memory
    }
}

class StudentListInitializer {
    //allStudents is a lazy init so that its never called until actual usage
    lazy var allStudents:WorldsStudentsDatabase = WorldsStudentsDatabase()
}

//Short hand setter and getter declaration

struct Point {
    var x:Int
    var y:Int
    
    init(_ x:Int, _ y:Int){
        self.x = x
        self.y = y
    }
    
    var center:Point {
        set {
            self.x = self.center.x
            self.y = self.center.y
        }
        
        get {
            return Point(self.x,self.y)
        }
    }
}

//Property Observers

struct RoadTrip {
    var durationHours:Int
    var distanceKm:Int
    var startingPoint:String?
    var destination:String?
    var pendingDistance:Int {
        willSet {
            print("Trip covered distance is \(newValue)")
        }
        
        didSet {
            print("Trip distance covered was \(oldValue)")
        }
    }
}

//Property Wrappers

//Global local variables

//Type Properties
