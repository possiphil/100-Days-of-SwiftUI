import UIKit

var selected = "Monday"
selected = "Tuesday"
selected = "January" //a month?
selected = "Friday " //extra space?

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

enum Weekday1 {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = .tuesday
day = .friday

//enums are stored in a highly optimised way -> faster and error proof
