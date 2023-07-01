import UIKit

do {
    let data = "hello, world".data(using: .utf8)!
    let decoder = JSONDecoder()
    let string = try decoder.decode(String.self, from: data)
} catch is DecodingError {
    print("something went wrong while decoding!")
} catch { error
    print("something went wrong!")
    print(error)
}

enum MyError: Error {
    case myErrorCase
}

func doSomething() throws {
    throw MyError.myErrorCase
}

print(try? doSomething()) //returns an optional

let data = "hello, world".data(using: .utf8)!
let decoder = JSONDecoder()
let string = try? decoder.decode(String.self, from: data)

print(string)

if string == nil {
    // why is string nil? Is it due to an error? Or did the function execute successfully and we just got back nil without encountering any errors?
    print("String is nil")
}

//try! doSomething()

func returnsOptionalString() throws -> String? {
    return "test"
}

func decodeJSON(_ data: Data) throws -> String {
    let decoder = JSONDecoder()
    let decodedString = try decoder.decode(String.self, from: data)
    
    return decodedString
}

func execute(_ closure: (() throws -> Void)) rethrows {
    try closure()
}

execute {
    print("hello!")
}

do {
    try execute {
        throw MyError.myErrorCase
    }
} catch {
    print(error)
}

let mapped: [Int] = try [1, 2, 3].map { int in
    if int > 3 {
        throw MyError.myErrorCase
    }
    
    return int * 2
}


