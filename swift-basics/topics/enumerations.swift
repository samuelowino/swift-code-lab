import Foundation

enum Switch: Int {
    case on = 1
    case off = 2
}

print("\(Switch.on)")
print("\(Switch.on.rawValue)")
print("\(Switch.off.rawValue)")

enum Color: String, CaseIterable {
    case blue = "Blueish"
    case green = "Greeny"
    case orange = "Oranger"
}

for color in Color.allCases {
    print("Paint it \(color.rawValue)")
}