import UIKit

var responseMessages = [Int: String]()

responseMessages.updateValue("Internal server error", forKey: 500)
responseMessages.updateValue("File not found", forKey: 404)
responseMessages.updateValue("Access forbidden", forKey: 403)
responseMessages.updateValue("Ok", forKey: 200)

print(responseMessages)


var httpResponseCodes = [200, 403, 301]

for i in httpResponseCodes {
    if let value = responseMessages[i] {
        print("\(i): \(value)")
    } else {
        print("Unknown error \(i)")
    }
}


responseMessages.keys.sorted()


for (key, value) in responseMessages {
    print("\(key): \(value)")
}


var dict = ["primes": [2, 13, 15, 7, 11, 3, 5],
            "triangular": [21, 6, 3, 10, 15, 1, 28],
            "hexagonal": [1, 91, 15, 28, 45, 66, 6]]

for (_, value) in dict {
    print(value.sorted())
}


let dictOne = ["a": "b"]
let dictTwo = ["c": "d"]
var dictThree = [String: String]()

for (key, value) in dictOne {
    dictThree[key] = value
}

for (key, value) in dictTwo {
    dictThree[key] = value
}

print(dictThree)


var a = 1
var b = 2
var c = a
a = b
b = c

print(a, b)

b = a - b
a -= b
b += a

print(a, b)


/*
 Dictionary - неупорядоченная коллекция, которая хранит в себе пары ключ-значение.
 
 Ключи должны быть хешируемыми, значения могут быть любыми.
 
 Dictionary - структура.
 
 Hashable where для value Hashable, потому что ключи и так конформят хешебл. Если значения не будут конформить хешебл - словарь тоже.
 Collection - потому что коллекция, обращение по индексу (ключу).
 Sequence - для итерации по ключам и значениям.
 CustomReflectable - для отзеркаленной копии.
 ExpressibleByDictionaryLiteral - для создания словаря с помощью словарного литерала.
 CustomStringConvertible, CustomDebugStringConvertible - описание содержимого.
 Equatable, если value конформит Equatable. Для сравнения двух словарей.
 Encodable, where key: encodable. Для кодирования словаря.
 Decodable, where key: decodable. Для декодирования.
 */
