import UIKit

// MARK: Closed range operator going from a through b
let range: ClosedRange = 0...10
print(range.first!)
print(range.last!)

let names = ["Antoine", "Maaike", "Jaap"]
for index in 0...2 {
    print("Name \(index) is \(names[index])")
}

let range2: CountableClosedRange = 0...2
print(names[range2])
print(names[0...2])


// MARK: Half-open range operator going from a to b
let range3: Range = 0..<10
print(range.first!)
print(range.last!)

print(names[0..<names.count])


// MARK: One-sided operator going from a or to b
print(names[...2])
print(names[1...])

let neededNames = 2
var collectedNames: [String] = []
for index in 0... {
    guard collectedNames.count != neededNames else {break}
    collectedNames.append(names[index])
}
print(collectedNames)


// MARK: Converting a Range to an NSRange in Swift
let title = "A Swift Blog"
let range4 = title.range(of: "Swift")!
let convertedRange = NSRange(range4, in: title)
let attributedString = NSMutableAttributedString(string: title)
attributedString.setAttributes([NSAttributedString.Key.foregroundColor: UIColor.orange], range: convertedRange)
print(attributedString)


// MARK: Ranges and Strings
let emojiText: NSString = "?launcher"
print(emojiText.substring(with: NSRange(location: 0, length: 2)))


// MARK: Working with String indexes
let emojiText2 = "?launcher"
let endIndex = emojiText2.index(emojiText2.startIndex, offsetBy: 2)
let range5: Range<String.Index> = emojiText2.startIndex..<endIndex
print(emojiText2[range5])

