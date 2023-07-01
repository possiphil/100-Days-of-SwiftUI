import UIKit

let root = sqrt(169)
print(root)

func rollDice() -> Int {
    Int.random(in: 1...6)
}
let result = rollDice()
print(result)

let letters = "abcde"
let secondLetters = "cdabe"
func compareLettersOfString(firstString: String, secondString: String) -> Bool {
    firstString.sorted() == secondString.sorted()
    //when a function has only one line of code that returns a value, we can remove the keyword "return"
}
compareLettersOfString(firstString: letters, secondString: secondLetters)

func pythagoras(a: Double, b:Double) -> Double {
    sqrt(a * a + b * b)
}

let c = pythagoras(a: 3, b: 4)
print(c)

func sayHello() {
    return //force the function the exit immediately
}

func greet(name: String) -> String {
    name == "Taylor Swift" ? "Oh wow!" : "Hello, \(name)"
    //this is a single expression (other than if), therefore can be used without return
}


