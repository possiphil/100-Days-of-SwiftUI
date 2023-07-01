import UIKit

let opposites = ["Mario": "Wario", "Luigi": "Waluigi"]

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}

var num1 = 1_000_000
var num2 = 0
var num3: Int? = nil

var str1 = "Hello"
var str2 = ""
var str3: String? = nil

var arr1 = [0]
var arr2 = [Int]()
var arr3: [Int]? = nil

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil

if let number = number {
    print(square(number: number))
}


// MARK: Swift: Why We Use Optionals (Lets Build That App)
func findGreatestValueInList(list: [Int]) -> Int? {
    if list.count == 0 {
        return nil
    }
    
    var greatestValue = -1
    
    for number in list {
        if number > greatestValue {
            greatestValue = number
        }
    }
    
    return greatestValue
}

//findGreatestValueInList(list: [1, 2, 3, 1, 10, 4, 200])
//findGreatestValueInList(list: [-2, -1])

[1, 2, 3].max()


// MARK: Why does Swift make us unwrap optionals?
func getUsername() -> String? {
    "Taylor"
}

if let username = getUsername() {
    print("Username is \(username)")
} else {
    print("No username")
}
