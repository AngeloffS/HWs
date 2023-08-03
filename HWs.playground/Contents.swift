import UIKit

//1) Постарайтесь больше практиковаться, повторите то, что есть в видео.

//nil

var date: String?

date = "30.02.2017"

//if let unwrappedDate = date {
  //  print("Текущая дата \(unwrappedDate)")
//} else {
 //   print("Дата не была получена")
//}

//print(date!)

//if date != nil {
  //  print("Текущая дата \(date!)")
//} else {
  //  print("nil")
//}

let age: String = "20"

if Int(age) != nil {
    let ageInt = Int(age)!
    ageInt
}


//2) Зайти и обязательно познакомиться с документацией. Выпишите в ДЗ 5 примеров

let shortForm: Int? = Int("42")
let longForm: Optional<Int> = Int("42")

let number: Int? = Optional.some(42)
let noNumber: Int? = Optional.none
print(noNumber == nil)

let imagePaths = ["star": "/glyphs/star.png",
                  "portrait": "/images/content/portrait.jpg",
                  "spacer": "/images/shared/spacer.gif"]

if let starPath = imagePaths["star"] {
    print("The star image is at '\(starPath)'")
} else {
    print("Couldn't find the star image")
}

if imagePaths["star"]?.hasSuffix(".png") == true {
    print("The star image is in PNG format")
}

let defaultImagePath = "/images/default.png"
let heartPath = imagePaths["heart"] ?? defaultImagePath
print(heartPath)


//3) Создать 5 констант со СТРОКАМИ которые содержат цифры и посчитайте их используя новые инструменты.

let numOne = "1"
let numTwo = "2"
let numThree = "3"
let numFour = "4"
let numFive = "5"

let arrayNum = [numOne, numTwo, numThree, numFour, numFive]
var intArray = [Int]()
var sum = Int()

for _ in arrayNum where intArray == arrayNum.map( { Int($0)} ) {
    intArray.reduce(0, +)

}



//4) Создать 3 константы со значением nil.

let constOne: Int? = nil
let constTwo: Double? = nil
let constThree: Float? = nil


//5) Создать 5 опциональных типов констант и установите им значения.

let firstConst: Int? = 1
let secondConst: Double? = 1.1
let thirdConst: Float? = 1.11
let fourthConst: String = "Hello"
let fifthConts: Bool? = false


//6) Перечислите способы извлечения опционала с примерами (guard не использовать)

// -  Force unwrapping.

let email: String? = "angelovsv@icloud.com"

print(email!)

// - Implicity unwrapping.

let optionalString: String? = "Good Morning!"
let optionalStringTwo: String! = optionalString!

// - Optional binding.

let optionalUserName: String? = "Sergey"

if let userName = optionalUserName {
    print("Good morning \(userName)!")
} else {
    print("Sorry!User not found!")
}

// - Nil coalescing.

let a = 1
let b: Int? = 2
let c = b ?? 0
var summa = a + c

print(summa)


// 7) Создайте опциональный массив Int’ов с значениями от 1 до 11 Преобразуйте в новый массив добавив к каждому элементу букву «a». Выведите получившийся массив.

let firstArray: [Int]? = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
var secondArray = [String]()

if let firstArrayNum = firstArray {
    for numbers in firstArrayNum {
        secondArray += [String(numbers) + "a"]
    }
}

print(secondArray)


//8) Дан массив number: [Int]? = [5, 3, 6, 8, 1, 2, 4]. Найти сумму элементов массива и вывести в консоль. Для вычисления суммы использовать функцию высшего порядка.

let numbers: [Int]? = [5, 3, 6, 8, 1, 2, 4]
var result = numbers?.reduce(0, +) ?? 0

print(result)


//9) Создайте несколько опциональных значений. С помощью «оператора объединения с nil» извлеките значение.

let myName: String? = "Sergey"

myName ?? " "

let myAge: Int? = 27

myAge ?? 0

let myHeight: Double? = 111.1

myHeight ?? 0

let iAmMan: Bool? = true

iAmMan ?? false


//10) Дан массив numbers: [String]? = ["5", "3", "шесть"].Если количество элементов в массиве больше 2 тогда преобразовать данный массив в массив [Int] и вывести в консоль

let numbersArray: [String]? = ["5", "3", "шесть"]

if let count = numbersArray?.count, count > 2 {
        var result = [Int]()
        numbersArray?.forEach({ result += [Int($0) ?? 0]})
        print(result)
    }


//11) Распечатайте свое имя в цикле for.

if let name = myName {
    for char in name {
        print(char)
    }
}


//12) Создайте массив с возрастом всех членов вашей семьи и распечатайте в консоли через цикл for.

let ages = [2, 27, 28, 49, 50, 48, 64]

for age in ages {
    print(age)
}
