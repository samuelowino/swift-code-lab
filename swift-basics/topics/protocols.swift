import Foundation

protocol KillBox {
    var stillStanding: Int { get set }
    var size: Double { get }
}

struct RawBox: KillBox {
    var stillStanding: Int
    let size: Double = 1200
}

let raw = RawBox(stillStanding: 5)

print("\(raw)")


protocol Bedroom {
    func openDoor()

    func switchOffLights()

}

struct MasterBedroom: Bedroom {
    func openDoor() {
        print("Opending the door to master bedroom")
    }

    func switchOffLights(){
        print("Master bedroom lights are off")
    }
}

struct KidsBedroom: Bedroom {
    func openDoor(){
        print("Opending the door to the kids bedroom")
    }

    func switchOffLights() {
        print("Children switched off the lights to their bedroom")
    }
}

let parentsBedroom = MasterBedroom()
let kidsBedroom = KidsBedroom()

parentsBedroom.openDoor()
kidsBedroom.openDoor()
kidsBedroom.switchOffLights()
parentsBedroom.switchOffLights()


protocol PowerAdapter {
    var voltage: Double { set get }
    var capacity: Int { set get }
    
    mutating func changeConfig(withVolts voltage: Double, on capacity: Int)
}

struct AppleBrick: PowerAdapter {
    var voltage: Double = 120
    var capacity: Int = 1000

    mutating func changeConfig(withVolts voltage: Double, on capacity: Int) {
        self.voltage = voltage
        self.capacity = capacity
    }
}

var charger = AppleBrick()

print("Old Charger Config: \(charger)")

charger.changeConfig(withVolts: 500, on: 6)

print("New Charger Config: \(charger)")
