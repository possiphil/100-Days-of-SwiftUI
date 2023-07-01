import UIKit

var optionalArray: [Int]? = nil

let randomIntInArray = optionalArray?.randomElement() ?? Int.random(in: 1...100)

print(randomIntInArray)
