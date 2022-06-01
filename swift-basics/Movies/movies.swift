//=========================
// OVERFLOW OPERATORS
//=========================

var maximum16BitFilmLength: Int16 = Int16.max

print("Maximum movie film trip length befor filming is \(maximum16BitFilmLength) ")

//maximum16BitFilmLength += 1 throws error

//===============================
//  TERNARY CONDITIONAL OPERATOR
//===============================

let productionStudiosOpenedIn1912: Int = 2
let productionStudiosOpenedIn1923: Int = 2
let productionStudiosOPenedIn1924: Int = 1

let maximumStudiosOpeningYear: Int = productionStudiosOpenedIn1912 > productionStudiosOPenedIn1924 ? productionStudiosOpenedIn1912 : productionStudiosOPenedIn1924

print("Maximum hollywood studios opened in one year is \(maximumStudiosOpeningYear)")

//=======================
//  ASSIGNEMTN OPERATOR
//=======================

let universalPicturesOpeningYear = 1912
let currentYear = 2022
let UniversalPicturesAgeInYears = currentYear - universalPicturesOpeningYear

print("Universal Pictures was started in the year \(universalPicturesOpeningYear) and in now on it's \(UniversalPicturesAgeInYears) anniversary")

//=========================
//  REMAINDER OPERATOR
//=========================

let totalMovieLength: Int = 120
let directorsCut: Int = 78
let deletedScenes: Int = totalMovieLength % directorsCut

print("The origincal feature film length was \(totalMovieLength) minutes, the directors cut is only \(directorsCut) minutes, with a total of \(deletedScenes) minutes worth of deleted scenes. Woof")

//=========================
// Nil Coalescing Operator
//=========================

var numberOfAClassCelbsInMovie: Int? = nil
let movieTicketSales: Int = 1_000_000

print("Movie ticker sales picked at \(numberOfAClassCelbsInMovie ?? movieTicketSales) sales, because they had \(numberOfAClassCelbsInMovie ?? 0) A class celebs in the movie ")

numberOfAClassCelbsInMovie = 5

print("Movie ticker sales picked at \(numberOfAClassCelbsInMovie ?? movieTicketSales) sales, because they had \(numberOfAClassCelbsInMovie ?? 0) A class celebs in the movie ")

//====================
//  RANGE OPERATORS  |
//====================
for monthIndex in 0..<12 {
    print("Month index is \(monthIndex), actual month is \(monthIndex + 1)")
}

let countDowns: [Int] = [0,1,2,3,4,5] 

for bombCountDown in countDowns[...5] {
    print("Tick \(bombCountDown) \(bombCountDown == 5 ? "Boom 💣" : "...")")
}

for bombCountDown in countDowns[..<5] {
    print("Tick \(bombCountDown) \(bombCountDown == 4 ? "Cut Green...💣" : "...")")
}

for bombCountDown in countDowns[1...] {
    print("Tick \(bombCountDown) \(bombCountDown == 4 ? "Cut Red...Boom 💣" : "...")")
}

let somePoem = "The fool doth think he is wise, but \rthe wise man knows himself to be a fool."

print(somePoem)

//===============================
//  EXTENDED STRING DELIMITERS  |
//===============================

let bestMovieQuotes = #"Frankly, my dear, I don't give a damn.\nGone with the Wind (1939)"#

print("\(bestMovieQuotes)")

//===============================
//  INITIALIZING AN EMPTY STRING |
//===============================

let emptyString: String = ""
let anotherEmptyString: String = String()

print("The value of emptyString is \(emptyString) and the other empty String is \(anotherEmptyString)")

//======================
//  String Mutability |
//======================

let immutableString: String = "This is permanence"
var mutableString: String = "Nothing is permanent, even this will change"

print("immutableString: \(immutableString)\nmutableString: \(mutableString) ")

//==============================
//  EXTENDED GRAPHEME CLUSTERS |
//==============================

let frencheAcute: Character = "\u{e9}"
let koreanOne: Character = "\u{D55C}"

print("French:\(frencheAcute)")
print("Korean One: \(koreanOne)")

//========================
//  COUNTING CHARACTERS |
//========================

let alphabet: String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
let numberOfCharactersInAlphabet: Int = alphabet.count

print("Number of characters in alphabet is \(numberOfCharactersInAlphabet)")

