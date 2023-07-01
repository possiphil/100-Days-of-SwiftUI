import UIKit

// MARK: Used for:
// MARK: 1. Example data
// MARK: 2. To store constant data that needs to be accessed in multiple areas (common data)

struct School {
    static var studentCount = 0
    
    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Taylor Swift")
print(School.studentCount)

// MARK: If you want to mix static and non-static properties and methods, there are two rules:
// MARK: 1. If you want to access non-static stuff from static stuff, you can't!
// MARK: 2. The other way around, you can read the static version (you can use Self inside).

// MARK: self: The current value of a struct    -> 55, "Hello", true
// MARK: Self: The current type of a struct     -> Int, String, Bool

struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

AppData.version

struct Employee {
    let username: String
    let password: String
    
    static let example = Employee(username: "cfederighi", password: "h4irf0rce0ne")
}

Employee.example

struct randomNumber {
    static var entropy = Int.random(in: 1...1000)
    
    static func getEntropy() -> Int {
        entropy += 1
        return entropy
    }
}

for _ in 0..<10 {
    print(randomNumber.getEntropy())
}
