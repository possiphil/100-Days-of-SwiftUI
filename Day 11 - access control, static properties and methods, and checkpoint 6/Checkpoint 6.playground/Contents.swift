import UIKit

struct CarInformation {
    let model: String
    let seats: Int
    private(set) var currentGear: Int = 1 {
        didSet {
            print("You changed the gear to \(currentGear)")
        }
    }
    
    mutating func changeGear(up: Int = 0, down: Int = 0, to newGear: Int = 0) {
        if currentGear + up > 10 || currentGear - down < 1 {
            return
        } else {
            if up != 0 {
                currentGear += up
            } else if down != 0 {
                currentGear -= down
            } else if newGear != 0 {
                currentGear = newGear
            } else {
                print("You didn't change gears.")
            }
        }
    }
}

var ownCar = CarInformation(model: "Ibiza", seats: 5, currentGear: 5)

ownCar.changeGear(up: 0)


