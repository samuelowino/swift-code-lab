import Foundation

class Mission {
    var launchDate: Date
    var success: Bool

    init(date: Date, success: Bool){
        self.launchDate = date
        self.success = success
    }
}

class MarsMission: Mission {
    var landingSite: String
    var astronoutes: [String]

    init(date: Date, landing: String, crew: [String]){
        self.landingSite = landing
        self.astronoutes = crew

        super.init(date: date, success: false)
    }
}

class MoonMission: Mission {
    var purpose: String
    var apolloRocketType: String
    var crew: [String]

    init(date: Date, landing: String, purpose: String, rocket: String, crew: [String]){
        self.purpose = purpose
        self.apolloRocketType = rocket
        self.crew = crew

        super.init(date: date, success: false)
    }
}

let crew = ["Håvard Fjær","Kim Steadman","Jennifer Shatts"]

let apolloCrew = ["Armstrong","Michael Collins","Buzz Aldrin"]

let ingenuity = MarsMission(date: Date(), landing: "Jezero Crater: Mars", crew: crew)

let apollo11 = MoonMission(date: Date(), landing: "Sea of Tranquility: Moon", purpose: "Collect rocks", rocket: "Saturn V", crew: apolloCrew)

if ingenuity is MarsMission {
    print("ingenuity is a mars mission")
}

if ingenuity is Mission {
    print("ingenuity is a mission")
}

if apollo11 is MoonMission {
    print("Apollo 11 was a moon mission")
}

if apollo11 is Mission {
    print("Apollo 11 was a mission")
}

class Astronaut { }

if let ingenuity = ingenuity  as? Astronaut {
    print("ingenuity is an Astronaut")
} else {
    print("Ingenuity is not an Astronaut")

    if let ingenuity = ingenuity as? Mission {
        print("Ingenuity is a mission")

        if let ingenuity = ingenuity as? MarsMission {
            print("Ingenuity is a mars mission")
        }
    }
}