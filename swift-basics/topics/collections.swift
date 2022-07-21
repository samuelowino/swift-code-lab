import Foundation

//==========================================
// ARRAYS
//==========================================
let emptyArray: [Int] = [] //creates an empty array

print("empty array contains \(emptyArray.count) elements")

var colors = Array(repeating: "red", count: 5)

print("default colors: \(colors)")

let partAVowels: [Character] = Array(repeating: "e", count: 3)
let partBVowels: [Character] = Array(repeating: "a", count: 4)

let combined: [Character] = partAVowels + partBVowels

print("Part A \(partAVowels):\nPart B \(partBVowels):\nCombined \(combined)")

var phones = ["iPhone","Android","Blackberry"]
let phonesCount: Int = phones.count
print("Number of phones ==> \(phonesCount)")


var isPhoneDrawerEmpty: Bool = false

isPhoneDrawerEmpty = phones.isEmpty

print("Phone drawer isEmpty ==> \(isPhoneDrawerEmpty)")

print("*Removes all phones from drawer*")
phones = []

isPhoneDrawerEmpty = phones.isEmpty

print("Phone drawer isEmpty ==> \(isPhoneDrawerEmpty)")

phones = ["iPhone","Android","Blackberry"]

phones.append("Nothing Phone") 

print("\(phones)")

phones = ["iPhone","Android","Blackberry"]

var iPhones = ["iPhone 4","iPhone 7","iPhone 13 Pro"]
var androids = ["Pixel","Nexus","Samsung","Oppo Reno"]

phones += iPhones
phones += androids

print("iPhones ==> \(iPhones)")
print("androids ==> \(androids)")
print("phones ==> \(phones)")

phones = ["iPhone","Android","Blackberry"]

let lastPhone = phones[phones.count - 1 ]

print("Last phone on the list \(lastPhone)")

phones = ["iPhone","Android","Blackberry"]

phones[1] = "Android 12"
print("Updated phones \(phones)")

phones = ["iPhone","Android","Blackberry"]
phones.insert("Nokia Lumia", at: 1)
print("Updated phones \(phones)")

phones = ["iPhone","Android","Blackberry"]
phones.remove(at: 0)

print("Updated phones \(phones)")

phones = ["iPhone","Android","Blackberry"]

for phone in phones {
    print("Phone is: \(phone)")
}

// =============================================

struct Baby {
    let name: String
    let ageDays: Int?
    let birthHour: Int?
    let birthMin: Int?
    let mom: String
}

extension Baby: Hashable {
    static func == (lhs: Baby, rhs: Baby) -> Bool {
        return lhs.name == rhs.name && lhs.mom == rhs.mom
    }

    func hash(into hasher: inout Hasher){
        hasher.combine(name)
        hasher.combine(mom)
    }
}

let babyMike = Baby(name: "Mikey", ageDays: 4, birthHour: 8, birthMin: 23, mom: "Joan Waruguru")

let lostBaby = Baby(name: "Mikey", ageDays: nil, birthHour: nil, birthMin: nil, mom: "Joan Waruguru")

//Search for baby
if lostBaby == babyMike {
    print("Found lost baby \(lostBaby), mum is \(lostBaby.mom)")
} else {
    print("Baby is still lost, mum not found")
}