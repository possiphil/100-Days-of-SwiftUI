import UIKit

func greetUser() {
    print("Hi there!")
}
greetUser()

var greetCopy = greetUser //if you are copying a function, you don't write parentheses
var greetCopy2: () -> Void = greetUser
greetCopy()

let sayHello = {
    print("Hi there!")
}
sayHello() //-> closure

let sayHello2 = { (name: String) -> String in
    "Hi \(name)!"
}

sayHello2("Taylor")

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989) //external parameters are gone
print(user)

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}

//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//print(captainFirstTeam)

let captainFirstTeam = team.sorted(by: { (name1: String, name2:String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
})

print(captainFirstTeam)
