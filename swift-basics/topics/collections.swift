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

//==========================SET==================================

var letters = Set<Character>()

print("letters \(letters.count)")

let colorCodes: Set<String> = ["Red","Orange","Green", "Blue","White"]

print("colors ==> \(colorCodes)")

let colorCodec: Set = ["Red","Orange","Green", "Blue","White"]

print("color codec ==> \(colorCodec)")

var apolloMissions: Set = ["SA-1","SA-2","SA-3","SA-4","SA-5","AS-101"]

print("The number of apollo missions is \(apolloMissions.count)")

if apolloMissions.isEmpty {
    print("Apollo Missions? Which Apollo Missions ?")
} else {
    print("Oh a apollo missions? Yes apollo missions")
}

print("Current list of missions ==> \(apolloMissions)")

apolloMissions.insert("AS-201")
apolloMissions.insert("AS-203")

print("Added two more missions into the punch card ::AS-201:: ::AS-203::")

print("Updated list of missions ==> \(apolloMissions)")

apolloMissions = ["SA-1","SA-2","SA-3","SA-4","SA-5","AS-101"]

print("removing missions-AS-101...")

apolloMissions.remove("AS-101")

print("updated missions list is \(apolloMissions) | count is \(apolloMissions.count)")

print("removing all missions from record... please wait")

apolloMissions.removeAll()

print("updated missions list is \(apolloMissions) | count is \(apolloMissions.count)")

apolloMissions = ["SA-1","SA-2","SA-3","SA-4","SA-5","AS-101"]

if apolloMissions.contains("SA-3") {
    print("SA-3 is part and parcel of the apollo missions")
} else {
    print("SA-3 is not an apollo missions... anymore")
}

for mission in apolloMissions {
    print("NASA Mission ==> \(mission)")
}

let sortedMissionsArray = apolloMissions.sorted()

for mission in apolloMissions {
    print("Before Sorting: apolloMission \(mission)")
}

for sortedMission in sortedMissionsArray{
    print("After Sorting: apolloMissions \(sortedMission)")
}

var marsMissions: [String : Int] = ["1M No.1" : 1960, "1M No.2" : 1960]

print(marsMissions)


print("There have been \(marsMissions.count) Mars missions")

if marsMissions.isEmpty {
    print("We have zero Mars missions")
} else {
    print("We have \(marsMissions.count) Mars missions")
}

marsMissions["Mars 2020 Perseverance Rover"] = 2020

print("New list of missions \(marsMissions)")

marsMissions.updateValue(2020, forKey: "Mars Perseverance Rover")

print("Missions \(marsMissions)")


marsMissions["1M No.1"] = nil

if let _1MNo1Mission = marsMissions["1M No.1"] {
    print("Found the 1M No.1 mission as \(_1MNo1Mission)")
} else {
    print("1M No.1 does not exist, someone must have removed it")
}

if let removedMission = marsMissions.removeValue(forKey: "1M No.2"){
    print("Removed mission \(removedMission) from list")
} else {
    print("Could not remove mission key does not exist")
}

var missions: [String : Int] = ["1M No.1" : 1960, "1M No.2" : 1961]

for (mission, year) in missions {
    print("Missions \(mission) : Year \(year)")
}

for mission in missions.keys {
    print("Missions \(mission)")
}

for year in missions.values {
    print("Mission Year \(year)")
}
