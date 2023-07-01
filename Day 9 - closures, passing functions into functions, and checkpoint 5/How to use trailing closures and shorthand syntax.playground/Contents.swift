import UIKit

//Paul uses shorthand syntax unless three things are true:
//1. The closures body is long
//2. $0, $1, ... are used multiple times
//3. If you end up with 3 or more parameters

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

let sorted = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }
    return $0 < $1
}
print(sorted)

let reverseTeam = team.sorted { $0 > $1 }
print(reverseTeam)

let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)


// MARK: Why does Swift have trailing closure syntax?
func animate(duration: Double, animations: () -> Void) {
    print("Starting a \(duration) second animation…")
    animations()
}

animate(duration: 3) {
    print("Fade out the image")
}


