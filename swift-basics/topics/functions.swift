import Foundation

func printNumbers(numbers: Int...){
    for number in numbers {
        print("Number \(number)")
    }
}

printNumbers(numbers: 4,3,5,2,6,4,7)

struct Ageist {

    func updateAge(dob: Int, currentAge: inout Int){
        let currentYear: Int = 2027
        currentAge = currentYear - dob
    }
}

var age: Int = 0 //the argument has to be a var not a let constant

let ageist: Ageist = Ageist()

ageist.updateAge(dob: 1930, currentAge: &age)

print("Updated age is \(age)")