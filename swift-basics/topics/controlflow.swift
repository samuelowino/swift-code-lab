import Foundation

let studios: [String] = ["DC Comics","Marvel","Warner Bros"]

for studio in studios {
    print("Movie studio \(studio)")
}

let movies: [String : Int] = ["Winter Soldier" : 2014, "Iron Man" : 2008, "Thor" : 2011, "The Avengers" : 2012]

for (movie, releaseYear) in movies {
    print("Marvel Movie \(movie), Release: \(releaseYear)")
}

for index in 1...5 {
    print("ETA to Lift off \(index)")
}

for spot in 1..<4 {
    print("Spot \(spot)")
}

var index: Int = 0

while(index < 10) {
    print("Index -> \(index)")
    index += 1
}

var rank: Int = 10

repeat {
    print("Rank : \(rank)")
    rank -= 1
} while(rank > 0)

let condition: Bool = false

if condition {
    print("condition passed")
} else if condition == false {
    print("Condition failed")
} else {
    print("very strange")
}

enum SuperHeroe: String, CaseIterable {
    case OMNI_MAN = "Omni Man"
    case INVINCIBLE = "Invincible"
    case IMMORTAL = "Immortal"
    case ROBOT = "Robot"
} 

var heroe: SuperHeroe = .OMNI_MAN

switch heroe {
    case .OMNI_MAN:
        print("\(heroe.rawValue) is evil")
    case .INVINCIBLE:
        print("\(heroe.rawValue) is confused")
    case .IMMORTAL:
        print("\(heroe.rawValue) is dead")
    case .ROBOT:
        print("\(heroe.rawValue) is weird")
}

heroe = .ROBOT

switch heroe {
    case .OMNI_MAN, .ROBOT:
        print("\(heroe.rawValue) is evil")
    case .INVINCIBLE:
        print("\(heroe.rawValue) is confused")
    case .IMMORTAL:
        print("\(heroe.rawValue) is dead")
}

let indices: [Int] = [1,2,4,5,7,8,11,13,12]

for index in indices {
    if index % 2 == 0 {
        continue
    }

    print("Uneven number: \(index)")
}

for index in indices {
    if index > 2 {
        print("First Number greater than 2: \(index)")
        break
    }

}

let lookup: Int = 2

switch lookup {
    case 1...5:
        print("Found lookup value at 1...5 range")
        fallthrough
    case 6...13:
        print("Found lookup value at 6...13")
        fallthrough
    default:
        print("Finished lookup")
}

func answerDoor(ring: Bool){
    guard ring else {
        print("It's all in your head")
        return
    }

    print("Answer the door!")
}

answerDoor(ring: true)
answerDoor(ring: false)