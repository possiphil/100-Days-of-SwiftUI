import UIKit

class User {
    var username = "Anonymous"
    
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

var user1 = User()
var user2 = user1
var user3 = user1.copy()
user2.username = "Taylor"

print(user1.username)
print(user2.username)
print(user3.username)



class ConstantTest {
    var test = "constant"
    
    func copy() -> ConstantTest {
        let constant = ConstantTest()
        constant.test = test
        return constant
    }
}

let constant = ConstantTest()
let constant2 = constant
constant.test = "different"
constant.test = "again different"
constant2.test
//constant = constant2 -> can't assign

