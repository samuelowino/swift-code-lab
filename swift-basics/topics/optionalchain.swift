import Foundation

struct Planet {
    var gravity: Gravity?
}

struct Gravity {
    var force: Double = 10.23
}

var planet = Planet()

if let gravityForce = planet.gravity?.force {
    print("The planet has a gravitational force of \(gravityForce)")
} else {
    print("Planet gravity is still nil")
}

planet.gravity = Gravity()

if let gravityForce = planet.gravity?.force {
    print("The planet has a gravitational force of \(gravityForce)")
} else {
    print("Planet gravity is still nil")
}

