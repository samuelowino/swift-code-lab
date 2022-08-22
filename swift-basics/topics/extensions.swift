import Foundation

extension Int {
    var doubleValue: Double {
        return Double(self)
    }
}

let length: Int = 5
let doubleL: Double = length.doubleValue

print("Length doubled \(doubleL)")


struct BattleBot {
    var score: Int = 0
    var rank: Int = 0
    var wins: Int = 0
    var name: String = ""
}

struct Bot {
    var name: String = ""
}

extension BattleBot {
    init(bot: Bot, score: Int, rank: Int, wins: Int){
        self.score = score
        self.rank = rank
        self.wins = wins
        self.name = bot.name
    }

    func toString() -> String {
        return "\(self)"
    }
}

let marioBot = Bot(name: "Mario")

let battleBot = BattleBot(bot: marioBot, score: 45, rank: 1, wins: 3451)

print("Bot deets: \(battleBot.toString())")


struct CarModes {
    var name: String = ""
    var model: String = ""
    var modes: [String] = []
}

extension CarModes {
    mutating func addMode(_ modeDesc: String) {
        print("Applying mode...\(modeDesc)")

        self.modes.append(modeDesc)

        print("Finisedh applying mode...New modes \(modes)")
    }
}

var modeCruiser = CarModes(name: "Modified Land Cruiser", model: "XM342", modes: [])

modeCruiser.addMode("Suspension Kits")