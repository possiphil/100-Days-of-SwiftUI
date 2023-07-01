import UIKit

protocol Building {
    var rooms: Int { get }
    var cost: Int { get }
    var agent: String { get }
    
    func printSalesSummery()
}

extension Building {
    func printSalesSummery() {
        print("Congratulations! You've bought a new building from \(agent) with \(rooms) rooms. This costs you $\(cost).")
    }
}

struct House: Building {
    let name: String
    var rooms: Int
    var cost: Int
    var agent: String
}

extension House {
    func printSalesSummery() {
        print("Congratulations! Your new estate \(name) from \(agent) is now available to you! It has \(rooms) rooms and cost you a liver and $\(cost).")
    }
}

struct Office: Building {
    var rooms: Int
    var cost: Int
    var agent: String
}

var newHome = House(name: "LA Coastview Villa", rooms: 14, cost: 10_500_000, agent: "Paul Hudson")
newHome.printSalesSummery()
let newOffice = Office(rooms: 20, cost: 1_500_000, agent: "Tarik Loaner")
newOffice.printSalesSummery()
