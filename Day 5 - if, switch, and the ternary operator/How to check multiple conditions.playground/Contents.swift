import UIKit

let age = 16

if age >= 18 {
    print("You can vote in the next election.")
}
if age < 18 {
    print("Sorry, you're too young to vote.")
}

if age >= 18 {
    print("You can vote in the next election.")
} else {
    print("Sorry, you're too young to vote.")
}

if age >= 18 {
    print("You can vote in the election.")
} else if age >= 16 {
    print("You can vote in the next election.")
} else {
    print("Sorry, you are too young to vote.")
}

let temp = 25

if temp > 20 && temp < 30 {
    print("It's a nice day.")
}

let userAge = 14
let hasParentalConsent = true

if age >= 18 || hasParentalConsent {
    print("You can buy the game!")
}

enum TransportOption {
    case airplane, helicopter, bicycle, car, escooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path...")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}

// There is no specific advice on this, but realistically any time you mix && and || in a single condition you should almost certainly use parentheses to make the result clear.


