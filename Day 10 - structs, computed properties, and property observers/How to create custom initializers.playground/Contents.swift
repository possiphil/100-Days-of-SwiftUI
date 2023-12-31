import UIKit

struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

extension Player {
    init() {
        self.name = "Anonymous"
        self.number = 0
    }
}

let player = Player(name: "Megan R")
print(player.number)

let anonymous = Player()
