import Foundation

struct House {
    var rooms: Int

    init(){
        rooms = 4
    }
}

let house = House()

print("The default number of rooms is \(house.rooms)")

enum Color {
    case red
    case blue
    case orange
}

struct Fruit {
    var name: String
    var color: Color

    init(withName name: String, ofColor color: Color){
        self.name = name
        self.color = color
    }
}

let apple = Fruit(withName: "Apple", ofColor: Color.red)

print("Details \(apple)")

struct Ginx {
    var winxed: String?
    var count: Int

    init(winxed: String?, count: Int){
        self.winxed = winxed
        self.count = count
    }
}

let ginxer = Ginx(winxed: nil, count: 0)

print("Ginxer default \(ginxer)")

struct PowerBrick {
    let capacity: Double
    var price: Double

    init(withCapacity: Double, cost: Double){
        self.capacity = withCapacity
        self.price = cost
    }
}

let brick = PowerBrick(withCapacity: 34.12, cost: 78.89)

//brick.capacity = 100.88
//error: cannot assign to property: 'capacity' is a 'let' constant

print("Adapter details: \(brick)")

enum KeyboardType {
    case qwerty
    case qwertz
    case other
}

struct Keyboard {
    var type: KeyboardType = .qwerty
    var brand: String = "Logitech"
    var model: String = "MX Mini"
}

let logitechMXMini = Keyboard()

print("⌨️ logitechMXMini \(logitechMXMini)")

struct Home {
    var rooms: Int = 3
    var yard: Bool = false
    var balcony: Bool = true
    var windows: Int = 10
}

let mansion = Home()

print("\(mansion)")
