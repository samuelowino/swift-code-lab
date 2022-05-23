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