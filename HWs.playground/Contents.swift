import UIKit

let multilineString = """

 Скажи-ка, дядя, ведь недаром
 Москва, спаленная пожаром,
 Французу отдана?
 Ведь были ж схватки боевые,
 Да, говорят, еще какие!
 Недаром помнит вся Россия
 Про день Бородина!
 
 """


var name = "Sergey"

for i in name {
    print(i)
}


name += " Angelov"

let age = 27

print("Hi! My name is \(name). I'm \(age) years old.")


let greetigs = "Hello there!"

var secondGreetings = ""

for char in greetigs {
    if char == " " {
        continue
    }
    secondGreetings.append(char)
}

print(secondGreetings)


let reversed = String(greetigs.reversed())

print(reversed)


if greetigs.contains("o") {
    print("Yes")
} else {
    print("No")
}


let time = "23:51:01"

let elements = time.components(separatedBy: ":")

for element in elements {
    print(Int(element) ?? 0)
}

var elementOne = ""
var elementTwo = ""
var elementThree = ""

var counter = 0

for char in time {
    if String(char) != ":" {
        switch counter {
        case 0: elementOne += String(char)
        case 1: elementTwo += String(char)
        default: elementThree += String(char)
        }
    } else {
        counter += 1
    }
}

Int(elementOne)
Int(elementTwo)
Int(elementThree)


let pi = 3.14159
let formatedPi = String(format: "%.2f", pi)


var letters = "AaBbCc"

letters.uppercased()

letters.removeFirst()

letters.removeLast()

letters.append("!")
