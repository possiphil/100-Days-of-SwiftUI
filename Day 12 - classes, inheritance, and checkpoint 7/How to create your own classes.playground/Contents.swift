import UIKit

// MARK: Similarities of structs and classes
// MARK: - You get to create and name them.
// MARK: - Add properties, methods, property observers, and access control.
// MARK: - Create custom initializers to configure new instances.

// MARK: Differences
// MARK: - You can make one class build upon functionality in another class.
// MARK: - Swift won't generate a memberwise initializer for classes.
// MARK: - If you copy an instance of a class, both copies share the same data.
// MARK: - We can add a deinitializer to run when the final copy is destroyed.
// MARK: - Constant class instances can have their variable properties changed.

class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10
