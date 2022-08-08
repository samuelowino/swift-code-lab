import Foundation

struct Rectangle {
    var width: Int 
    let height: Int
}

var box: Rectangle = Rectangle(width: 120, height: 80)

print("The box \(box)")

box.width = 150 //sets the width property to 150

print("The box After update \(box)")

//box.height = 90 //throws error

struct Circle {
    var radius: Int
    var diameter: Int
    var center: Circle {
        get {
            let circleDiameter: Int = radius * 2
            return Circle(radius: 8, diameter: circleDiameter)
        }

        set {
            radius = newValue.radius
            if newValue.diameter / 2 != newValue.radius {
                diameter = newValue.radius * 2
            } else {
                diameter = newValue.diameter
            }
        }
    }
}

var redCircle: Circle = Circle(radius: 4, diameter: 8)

print("Red circle \(redCircle)")

//Red circle Circle(radius: 4, diameter: 8)

redCircle.center = Circle(radius: 70, diameter: 100)

print("Red circle updated \(redCircle)")

//Red circle updated Circle(radius: 70, diameter: 140)

struct BankAccount {
    var totalDeposits: Double
    var totalWithdraws: Double
    var balance: Double {
        totalDeposits - totalWithdraws
    }
}

let barcklays = BankAccount(totalDeposits: 8000, totalWithdraws: 478.12)

let balance = barcklays.balance

print("Barcklays bank account balance is \(balance)")


struct Drive {
    var speed: Int
    var distance: Int {
        willSet(newDistance) {
            print("Updating distance covered to \(newDistance)")
        }

        didSet {
            if distance > 0 && timeHours > 0 {
                speed = distance / timeHours
            }
            print("Speed is now \(speed) km/hr")
        }
    }

    var timeHours: Int {
        willSet(newTimeHours) {
            print("Updating duration to \(newTimeHours) hours")
        }

        didSet {
            if distance > 0 && timeHours > 0 {
                speed = distance / timeHours
            }

            print("Speed is now \(speed) km/hr")
        }
    }
}

var drive = Drive(speed: 0, distance: 0, timeHours: 0)
drive.distance = 80
drive.timeHours = 1

//move....
drive.distance = 120
drive.timeHours = 4


print("")

struct Student {
    var name: String = ""
    var passedExams: Bool = false
    var score: Int = 0
}

@propertyWrapper
struct PassListFilter {
    var student: Student = Student()
    var wrappedValue: Student {
        get { 
            return student
        }

        set {
            print("Updating student pass listing status... based on score \(newValue.score)")

            if newValue.score >= 50 {
                student.passedExams = true
            } else {
                student.passedExams = false
            }

            print("Student has \(student.passedExams ? "Passed ✅ 🔰" : "Failed ⚠️🛑")")
        }

    }
}

class Grader {
    @PassListFilter var student: Student
}

let grader = Grader()
//Updating student pass listing status... based on score 0
//Student has Failed ⚠️🛑

grader.student.name = "One Punch Man"
grader.student.score = 34
//Updating student pass listing status... based on score 34
//Student has Failed ⚠️🛑

grader.student.score = 84
//Updating student pass listing status... based on score 84
//Student has Passed ✅ 🔰