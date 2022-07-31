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