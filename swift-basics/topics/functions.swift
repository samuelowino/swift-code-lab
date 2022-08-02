import Foundation

func printNumbers(numbers: Int...){
    for number in numbers {
        print("Number \(number)")
    }
}

printNumbers(numbers: 4,3,5,2,6,4,7)