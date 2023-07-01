import UIKit

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

let teslaX = Car(isElectric: true, isConvertible: false)


final class Sportscar: Vehicle {
    let isSlow = false
}

let lamborghini = Sportscar(isElectric: false)


final class Roadster: Car {
    let isOffroad: Bool
    
    init(isElectric: Bool, isConvertible: Bool, isOffroad: Bool) {
        self.isOffroad = isOffroad
        super.init(isElectric: isElectric, isConvertible: isConvertible)
    }
}
