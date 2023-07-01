import UIKit

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Mussing input")
        return
    }
    
    print("\(number) x \(number) is \(number * number)")
}

var myVar: Int? = 3

//if let unwrapped = myVar {
//    // Run if myVar has a value inside
//}

//guard let unwrapped = myVar else {
//    // Run if myVar doesn't have a value inside
//}


// MARK: When to use guard let rather than if let
// So, use if let if you just want to unwrap some optionals, but prefer guard let if you’re specifically checking that conditions are correct before continuing.

func getMeaningOfLife() -> Int? {
    42
}

func printMeaningOfLife() {
    if let name = getMeaningOfLife() {
        print(name)
    }
}

func printMeaningOL() {
    guard let name = getMeaningOfLife() else { return }
    
    print(name)
}
