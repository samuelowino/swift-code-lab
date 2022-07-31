//
//  datetime.swift
//  swift-basics
//
//  Created by Samuel Owino on 24/07/2022.
//

import Foundation


extension Date {
    func setMonth(monthIndex: Int) -> Date? {
        let originalDateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour], from: self)
        
        var finalDateComponents = DateComponents()
        finalDateComponents.year = originalDateComponents.year
        finalDateComponents.month = monthIndex
        finalDateComponents.day = originalDateComponents.day
        finalDateComponents.hour = originalDateComponents.hour
        return Calendar.current.date(from: finalDateComponents)
    }
    
    static func isSameMonth(_ dateO1: Date, _ dateO2: Date) -> Bool {
        return Calendar.current.isDate(dateO1, equalTo: dateO2, toGranularity: .month)
    }
}

var today: Date = Date()

var dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour], from: today)

if let date = today.setMonth(monthIndex: 5) {
    print("Is same month \(Date.isSameMonth(date, Date()))")
}
