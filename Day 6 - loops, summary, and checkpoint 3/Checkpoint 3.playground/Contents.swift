import UIKit

for i in 1...100 {
    switch true {
    case i.isMultiple(of: 3) && i.isMultiple(of: 5):    print("FIZZBUZZ!")
    case i.isMultiple(of: 3):                           print("FIZZ")
    case i.isMultiple(of: 5):                           print("BUZZ")
    default:                                            print(i)
    }
}
