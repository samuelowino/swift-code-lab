//
//  inheritance.swift
//  swift-basics
//
//  Created by Samuel Owino on 22/11/2021.
//

import Foundation

print("Swift Book Chapter 9: Inheritance")

enum EngineeringDepertment {
    case mechanicalEngineering
    case civilEngineering
    case electricalEngineering
    case other
}

class Student {
    var name:String = "Student No-Name"
    var id:Int = 0
    
    init(for name:String, regNo id:Int){
        self.name = name
        self.id = id
    }
    
    func register() -> Bool{
        print("Student registered...details\nName: \(name)\nStudent ID: \(id)")
        return true
    }
    
}

class EngineeringStudent: Student {
    var depertment:EngineeringDepertment = EngineeringDepertment.other
    init(names student:String,registrationNo id:Int, under depertment:EngineeringDepertment){
        super.init(for: student, regNo: id)
        self.depertment = depertment
    }
    override func register() -> Bool {
        print("Registering engineering student from \(self.depertment) depertment")
        return true
    }
}

var sharon = EngineeringStudent(names: "Sharon Musembi", registrationNo: 98711, under: EngineeringDepertment.mechanicalEngineering)

if sharon.register() {
    print("Studnet \(sharon.name) has registered to \(sharon.depertment) successfully!")
} else {
    print("Non-Student \(sharon.name) has not been registered to \(sharon.depertment)")
}








