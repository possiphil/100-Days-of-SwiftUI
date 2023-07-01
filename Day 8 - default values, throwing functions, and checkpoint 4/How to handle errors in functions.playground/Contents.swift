import UIKit

// MARK: 1. Define all the errors that might happen in the code
// MARK: 2. Write a function that acts normally but can throw one or more of those errors if a serious problem is found
// MARK: 3. Try and run that function and handle any errors that come back

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 { throw PasswordError.short }
    if password == "12345" { throw PasswordError.obvious }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result).")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error: \(error.localizedDescription)")
}

let result1 = try! checkPassword("Tdow234") //normally don't wanna do this, but it's possible
