import UIKit

let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action

let luggageCode = "1" + "2" + "3" + "4" + "5" //this way is very wasteful if you add multiple times

let quote = "Then he tapped a sign saying \"Believe\" and walked away."

let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old." //much more efficient and can add int
print(message)

let number = 11
let missionMessage = "Apollo " + String(number) + " landed on the moon." //still not as efficient and readable

print("5 x 5 is \(5*5)")
