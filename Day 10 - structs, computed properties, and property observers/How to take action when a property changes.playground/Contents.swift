import UIKit

struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
for _ in 0..<5 {
    game.score += Int.random(in: 1...10)
}

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is \(contacts)")
            print("New value will be: \(newValue)")
        } //this is when you want your program to have enough time to do something when the property changed (eg animation)
        
        didSet {
            print("There are now \(contacts.count) contacts")
            print("Old value was: \(oldValue)")
        } //this is used more often
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")

// There is one place where using a property observer is a bad idea, and that’s if you put slow work in there. If you had a User struct with an age integer, you would expect that changing age would take place virtually instantly – it’s just a number, after all. If you attach a didSet property observer that does all sorts of slow work, then suddenly changing a single integer could take way longer than you expected, and it could cause all sorts of problems for you.
