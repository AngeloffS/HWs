import UIKit

//1) Повторить то что было в уроке.
//
//class ParentsClass {
//
//    var array = [String]()
//
//    var name = ""
//    var age = 20
//
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//}
//
//class Son: ParentsClass {
//
//    func method(name: String) {
//        print("Hello \(name)")
//    }
//}
//
//var sonClass = Son(name: "Iron", age: 30)
//
//sonClass.name
//sonClass.method(name: "Jack")
//
//sonClass.name = "Jack"
//sonClass.age
//
//
//struct NameStruct {
//    var name: String
//    var age: Int
//}
//
//var str = NameStruct(name: "Max", age: 20)


//2) Создать класс родитель и 2 класса наследника.

class Human {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Man: Human {
    
    var sex: String
    var age: Int
    
    init(sex: String, name: String, age: Int) {
        self.sex = sex
        self.age = age
        super.init(name: name)
    }
}

class Woman: Human {
    
    var age: Int
    var sex: String
    
    init(sex: String, name: String, age: Int) {
        self.age = age
        self.sex = sex
        super.init(name: name)
    }
}

let man = Man(sex: "M", name: "Sergey", age: 27)
let woman = Woman(sex: "W", name: "Inna", age: 28)


/*
3) Написать программу, в которой создать класс *House* в нем несколько свойств - *width*, *height* и несколько методов - *create*(выводит произведение свойств),*destroy*(отображает в принте что дом уничтожен).
*/

class House {
    
    var width: Int
    var height: Int
    
    func create() {
        width * height
    }
    
    func destroy() {
        print("House has been destroyed!")
    }
    
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
}


//4) Создайте класс с методом, который сортирует массив учеников.


class Students {
    
  var students = [String]()

  func sortStudents() {
    self.students = self.students.sorted()
  }
}


//5) Написать свою структуру и класс, пояснить в комментариях - чем отличаются структуры от классов.

class ExampleClass {
    
    var name = "Class"
}

struct ExampleStruct {
    
    var name: String
}

//Структура в отличии от класса имеет встренный инициализатор.
//Структура - Value type, Класс - Reference type.
//Структруа - неизменяемая


//6) Обьяснить в коментариях есть ли у классов множественное наследование, и пояснить что это.

//Да, у классов есть множественное наследование. Это когда классы могут наследоваться друг от друга это и называется множественное наследование. Это позволяет создать иерархию классов.


//7) Обьяснить может ли структуры наследоваться.

//Нет, они не наследуются, но как и классы могут принимать протоколы.


// 8) Выписать по 1 пример из документации, 1 из Усова, 1 из заметок профи. Примеры на свое усмотрение.

struct ChessPlayer {
    var name: String = "Игрок"
    var victories: UInt = 0
    init(name: String) {
        self.name = name
    }
    func description() {
        print("Игрок \(name) имеет \(victories) побед")
    }
}

var andrey = ChessPlayer(name: "Андрей")
andrey.description()

struct Resolution {
    var width = 0
    var height = 0
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

print("The width of someVideoMode is \(someVideoMode.resolution.width)")
