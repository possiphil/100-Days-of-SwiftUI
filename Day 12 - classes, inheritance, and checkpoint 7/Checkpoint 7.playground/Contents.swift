import UIKit

class Animal {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}
let animal = Animal(legs: 6)

class Dog: Animal {
    init() {
        super.init(legs: 4)
    }
    
    func speak() {
        print("Woof.")
    }
}
let dog = Dog()
dog.speak()

final class Corgi: Dog {
    override func speak() {
        print("woof woof :)")
    }
}
let corgi = Corgi()
corgi.speak()

final class Poodle: Dog {
    override func speak() {
        print("woof")
    }
}
let poodle = Poodle()
poodle.speak()

class Cat: Animal {
    var isTame: Bool
    
    init(isTame: Bool) {
        self.isTame = isTame
        super.init(legs: 4)
    }
    
    func speak() {
        print("Meow.")
    }
}
let cat = Cat(isTame: false)
cat.speak()

final class Persian: Cat {
    override func speak() {
        print("Memow")
    }
}
let persian = Persian(isTame: true)
persian.speak()

final class Lion: Cat {
    override func speak() {
        print("RAWR XD")
    }
}
let lion = Lion(isTame: false)
lion.speak()

