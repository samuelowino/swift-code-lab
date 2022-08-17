import Foundation


extension  Date {
    func durationSeconds() -> Double {
        self.timeIntervalSince(Date())
    }
}

let now = Date()

var finalDateComponents = DateComponents()
finalDateComponents.year = 2022
finalDateComponents.month = 8
finalDateComponents.day = 16
finalDateComponents.hour = 23

let later = Calendar.current.date(from: finalDateComponents)

if let later = later {
    print("later \(later)")
    print("Duration is s \(later.durationSeconds())")
}else { 
    print("later is nil") 
}



