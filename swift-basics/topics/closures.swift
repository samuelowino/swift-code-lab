import Foundation

let marvelActors:[String] = ["Chris Hemsworth","Scarlett Johansson","Chris Pratt","Paul Rudd","Robert Downey, Jr"]

let sortedNames = marvelActors.sorted { actor1, actor2 in actor1 < actor2}

print("Not Sorted: \(marvelActors)")
print("Sorted List: \(sortedNames)")