import UIKit

/* Псевдоним типа(typealias) позволяет задать альтернативное имя для существующих типов данных для повышения читабельности кода */

typealias name = String
typealias age = Int
typealias russian = Bool
typealias weight = Double

let myName: name = "Sergey"
let myAge: age = 27
let myNation: russian = true
let myWeight: weight = 111.1


let a = 21
let b = 2.5
let c = 11.07

let sumOne = Double(a) + b + c

print(sumOne)

let sumTwo = a - Int(b) - Int(c)

print(sumTwo)

let sumThree = Double(a) / b + c

print(Int(sumThree))


/* Целое число(Int) - тип данных обозначающий целое число */


/* Числовые литералы - числа в необработанном виде*/

let exampleOne = 255
let exampleTwo = 0b11111111
let exampleThree = 0xFF
let exampleFour = 0o377


/* Int8, UInt8, Int16, UInt16, Int32, UInt32, Int64, UInt64 */


/* Unicod - интернациональный стандарт для кодирования */

let questio: Character = "\u{0049}"
let eAcute: Character = "\u{2665}"
let combinedEAcute: Character = "\u{24}"


/* Hashable - протокол который предоставляет hashValue объекту, который можно поместить в хеш - таблицу, для эффективного поиска и сопоставления данных.
 
  Comparable - типы данных которые, могут быть сравнены между собой для определения отношений порядка */


struct Employee: Hashable {
    
    var name: String
    
}

let objectOne = Employee(name: "Sarah")
let objectTwo = Employee(name: "Sarah")
let objectThree = Employee(name: "John")

objectOne.hashValue
objectTwo.hashValue
objectThree.hashValue

/* Хеш - целое число, которое зависит от используемой системы. В зависимости от этого можно получить разные числа одного и того же кода  */


/* Основное различие между Float и Double заключается в том, что Float хранит в себе 32 битные данные с плавающей точкой, в то время как Double 64  битные. Точность Double = 15 цифр, точность Float = 7 цифр. Apple рекомендует использовать Double.  */
