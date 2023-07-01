import UIKit

let names = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

struct Book {
    let title: String
    let author: String?
}

var book: Book? = nil
let author = book?.author?.first?.uppercased() ?? "A"
print(author)


// MARK: Linked Article:
// MARK: Optional Chaining in Swift (Andy Bargh)
class DriversLicence {
    var pointsOnLicence = 0
}

class Person {
    var licence: DriversLicence?
}

let andy = Person()
let pointsOnLicence = andy.licence?.pointsOnLicence

// MARK: Setting Properties Through Optional Chaining
// You can also (optionally) set a value through an optional chain
var points = 3
andy.licence?.pointsOnLicence = points

// You can check wether or not the assignment worked
if let result = andy.licence?.pointsOnLicence += points {
    print("Andy now has \(result) points on his licence.")
}

// MARK: Accessing Subscripts on a Type Where The Subscript Returns An Optional Type
var catalogue = ["Honda": (minPrice:10, maxPrice:100)]
var honda = catalogue["Honda"]

if let price = catalogue["Honda"]?.minPrice {
    print("The minimum price is \(price)")
}

if (catalogue["Honda"]?.maxPrice = 30) != nil {
    print(catalogue)
}

// MARK: Accessing Subscripts that Return Optionals on Optional Values
var otherCatalogue: Dictionary? = ["Lotus": (minPrice: 50, maxPrice: 200)]
var lotus = otherCatalogue?["Lotus"]

if let price = otherCatalogue?["Lotus"]?.minPrice {
    print("The minimum price is \(price)")
}

// MARK: Optional Chaining on Methods
extension DriversLicence {
    func isValidForVehicle(_ vehicle: Vehicle) -> Bool {
        return true
    }
}

class Vehicle {
    var owner: Person?
}

andy.licence = DriversLicence()
let car = Vehicle()
car.owner = andy

if let canDriveVehicle = andy.licence?.isValidForVehicle(car) {
    if (canDriveVehicle) {
        print("Andy's licence allows him to drive the car.")
    } else {
        print("Andy's licence doesn't allow him to drive the car.")
    }
} else {
    print("Andy doesn't have a licence.")
}

// MARK: Multiple Levels of Chaining
if let points = car.owner?.licence?.pointsOnLicence {
    print("The car's owner has \(points) points on their licence.")
}

if let canDriveVehicle = car.owner?.licence?.isValidForVehicle(car) {
    if (canDriveVehicle) {
        print("The owner of the car has a licence that allows them to drive it.")
    } else {
        print("The owner of the car doesn't have a licence that allows them to drive it.")
    }
} else {
    print("The car either doesn't have an owner or the owner doesn't have a drivers licence.")
}

// MARK: Optional Chaining on Optional Protocol Requirements (this is probably outdated and can now be written otherwise)
@objc protocol MyProtocol {
    @objc optional var x : Int { get set }
    @objc optional func optionalMethod()
}

class classA: MyProtocol {
    @objc var x: Int = 0
    
    @objc func optionalMethod() {
        print("Optional Method Called")
    }
}

class classB: MyProtocol {}

var a: MyProtocol = classA()
var b: MyProtocol = classB()

let aValue = a.x
if let aValue = aValue {
    print(aValue)
}

let bValue = b.x
if let bValue = bValue {
    print(bValue)
}

a.optionalMethod?()
b.optionalMethod?()
