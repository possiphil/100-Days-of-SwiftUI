import UIKit

enum sqrtError: Error {
    case outOfBounds
    case noRoot
}

func sqrtOfNumber(_ number: Int) throws -> Int{
    if number < 1 || number > 10_000 {
        throw sqrtError.outOfBounds
    }
    let max = number / 2
    var sqrt = 0
    
    for i in 2...max {
        if i * i == number {
            sqrt = i
            break
        }
    }
    
    if sqrt == 0 { throw sqrtError.noRoot }
    
    return sqrt
}

let number = 100

do {
    print(try sqrtOfNumber(number))
} catch sqrtError.outOfBounds {
    print("\(number) isn't between 1 and 10,000.")
} catch sqrtError.noRoot {
    print("\(number) does not have an integer square root.")
} catch {
    print(error)
}
