import Foundation

struct LunarLander {
    var weight: Double 
    var maxCapacity: Int
    var astronauts: Int

    mutating func addAstronauts(withCount number: Int){
        if number > self.maxCapacity {
            print("Weight limit exceeded")
        } else {
            astronauts = number
            print("Added \(self.astronauts) astronaut to the moon lander")
        }
    }
}

var apolloLunarLander = LunarLander(weight: 12000.12, maxCapacity: 3, astronauts: 0)

apolloLunarLander.addAstronauts(withCount: 8)


//=================

struct Watch {
    var hour: Int
    var minute: Int

    mutating func setAlarm(atHour hour: Int, atMin min: Int){
        self.hour = hour
        self.minute = min
    }
}

var rolex = Watch(hour: 22, minute: 45)

rolex.setAlarm(atHour: 23, atMin: 15)

print("Alarm set for \(rolex)")