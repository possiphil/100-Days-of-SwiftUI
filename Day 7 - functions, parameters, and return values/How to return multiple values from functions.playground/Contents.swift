import UIKit

func isUppercase(string: String) -> Bool {
    string == string.uppercased()
}

//can use -> array or -> dictionary, but its messy

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
    // -> Tuple (can also be used without specific indexes (default: 0,1,2,...)
}

//let user = getUser()
let (firstName, lastName) = getUser()
print("Name: \(firstName) \(lastName)")

let(firstName2, _) = getUser()
print("Name: \(firstName2)")
