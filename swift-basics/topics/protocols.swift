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

protocol RocketLauncher {
    init(target: String)
    
    func launch()
}

struct Katyusha: RocketLauncher {
    var direction: String = "Down"

    init(target: String) {
        self.direction = target
    }

    func launch() {
        print("Launching rocket to \(direction)")
    }
}

class Bazuka: RocketLauncher {
    var structure: String

    required init(target: String){
        self.structure = target
    }

    func launch(){
        print("Launching bazuka rocket into \(structure)")
    }
}

let rocketA = Katyusha(target: "Road block")
let rocketB = Bazuka(target: "Gummy Bears, Head Quaters")

rocketA.launch()
//Launching rocket to Road block

rocketB.launch()
//Launching bazuka rocket into Gummy Bears, Head Quaters


protocol Car {
    func drive() -> String

    func stop() -> String
}

class Driver {
    let model: String
    let car: Car

    init(car: Car, model: String){
        self.model = model
        self.car = car
    }

    func startCar(){
        let driving = car.drive()

        print(driving)
    }

    func stopCar(){
        let stopping = car.stop()

        print(stopping)
    }
}

struct JeepTruck: Car {
    func drive() -> String {
        "Driving the jeep truck"
    }

    func stop() -> String {
        "Stopping the jeep truck"
    }
}


//Usage 
let jeep = JeepTruck()
let joel = Driver(car: jeep, model: "Jeep Wrangler")

joel.startCar()
//Driving the jeep truck

joel.stopCar()
//Stopping the jeep truck