import UIKit

// MARK: private: Don't let anything outside the struct use this.
// MARK: fileprivate: Don't let anything outside the current file use this
// MARK: public: Let anyone, anywhere use this.
// MARK: private(set): Let anyone read this property, but let only the internal methods write it.

struct BankAccount {
    private(set) var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)

let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}

// account.funds -= 1000 -> this would mess up the code
print("You currently have \(account.funds)$ in your bank account.")
