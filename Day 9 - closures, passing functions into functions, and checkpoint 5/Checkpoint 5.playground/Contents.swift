import UIKit

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]



//let filteredNumbers = luckyNumbers.filter { $0 % 2 != 0}
//
//let sortedNumbers = filteredNumbers.sorted()
//
//let luckyNumbersString = sortedNumbers.map { "\($0) is a lucky number" }
//
//for i in luckyNumbersString {
//    print(i)
//}


for i in luckyNumbers.filter({ $0 % 2 != 0 }).sorted().map({ "\($0) is a lucky number" }) {
    print(i)
}
