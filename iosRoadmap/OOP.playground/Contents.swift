import Foundation

// MARK: - Task #1 [Создание классов и объектов]

print("Task #1")

protocol Human {
    var age: Int {get}
    func printInfo()
}

extension Human {
    func printInfo() {
        print("По умолчанию")
    }
}

class Person : Human {
    
    private(set) var name: String
    private var email: String
    internal var age: Int
    
    init(name: String, email: String, age: Int) {
        self.name = name
        self.email = email
        self.age = age
    }
    
    func set(name: String) {
        if !name.isEmpty && name.count >= 3 {
            self.name = name
        } else {
            self.name = "Аноним"
            print("Имя указано некорректно. Имя установлено по умолчанию")
        }
    }
    
    func getName() -> String {
         return name
    }
    
    func set(email: String) {
        if email.contains("@") {
            self.email = email
        } else {
            self.email = "none"
            print("Почта указано некорректно")
        }
    }
    
    func getEmail() -> String {
        return email
    }
    
    func set(age: Int) {
        if age > 0 {
            self.age = age
        } else {
            self.age = 0
            print("Некорректный возраст. Возраст установлен на 0")
        }
    }
    
    func getAge() -> Int {
        return age
    }
    
    func printInfo() {
        print("Имя: \(name)\nПочта: \(email)\nВозраст: \(age)")
    }
}

class Employee : Person {
    var position: String
    var salary: Int
    
    init(name: String, email: String, age: Int, position: String, salary: Int) {
        self.position = position
        self.salary = salary
        super.init(name: name, email: email, age: age)
    }
    
    override func printInfo() {
        super.printInfo()
        print("Позиция: \(position)\nЗарплата: \(salary)")
    }
}

struct Student : Human {
    var age = 18
}

class School {
    let person: Human
    
    init(person: Human) {
        self.person = person
    }
    
    func information() {
        person.printInfo()
    }
    
    func showYourAge() {
        person.age
    }
}

enum Uburshik : Human {
    case one
    var age: Int {
        return 72
    }
    
    func printInfo() {
        print("Я уборщик, мой стаж \(age)")
    }
}

var person0 = Person(name: "Antuan", email: "krishka@yandex.ru", age: 33)
var person1 = Employee(name: "Jhon", email: "kotvsapogah@mail.ru", age: 20, position: "Middle", salary: 180000)
var student = Student()
var uborshik = Uburshik.one

person0.printInfo()
print()
person1.printInfo()

print("\nШкола: ")
let school = School(person: person1)
school.information()
school.showYourAge()
