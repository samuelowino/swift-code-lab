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

        set(circle) {
            radius = circle.radius
            if circle.diameter / 2 != circle.radius {
                diameter = circle.radius * 2
            } else {
                diameter = circle.diameter
            }
        }
    }
}

var redCircle: Circle = Circle(radius: 4, diameter: 8)

print("Red circle \(redCircle)")

//Red circle Circle(radius: 4, diameter: 8)

redCircle.center = Circle(radius: 70, diameter: 100)

print("Red circle updated \(redCircle)")