import UIKit

class User {
    var name = "Paul"
}

// MARK: Constant class, variable property
let user = User()
user.name = "Taylor"
print(user.name)

// MARK: Variable class, variable property
var userVar = User()
userVar.name = "Taylor"
userVar = User()
print(userVar.name)

class UserConst {
    let name = "Paul"
}

// MARK: Constant class, constant property
let user2 = UserConst()
print(user2.name)

// MARK: Variable class, constant property
var user2Var = UserConst()
user2Var = UserConst()
print(user2Var.name)
