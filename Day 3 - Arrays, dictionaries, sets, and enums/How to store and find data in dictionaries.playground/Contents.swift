import UIKit

var employee = ["Taylor Swift", "Singer", "Nashville"]
print("Name: \(employee[0])")
print("Job title: \(employee[1])")
print("Location: \(employee[2])")
//this is complicated and can be problematic

let employee2 = [
    "name"      : "Taylor Swift",
    "job"       : "Singer",
    "location"  : "Nashville"
]
print(employee2["name", default: "Unknown"])

let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false
]

let olympics = [
    2012 : "London",
    2016 : "Rio de Janeiro",
    2021 : "Tokyo"
]

print(olympics[2012, default: "Unknown"])

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neil"] = 216
heights["LeBron James"] = 206

var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"
archEnemies["Batman"] = "Penguin"


// Dictionaries don’t store our items using an index, but instead they optimize the way they store items for fast retrieval. So, when we say user["country"] it will send back the item at that key (or nil) instantly, even if we have a dictionary with 100,000 items inside.
