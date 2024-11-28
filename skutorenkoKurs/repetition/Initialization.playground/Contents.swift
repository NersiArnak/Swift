import Foundation

// MARK: class work (part №1)
class Student1 {
    var firstName : String
    var lastName : String
    var fullNmae : String {
        return firstName + " " + lastName
    }
    
    init() {
        self.firstName = ""
        self.lastName = ""
    }
}

class Student2 {
    var firstName: String = ""
    var lastName: String = ""
}

class Student3 {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

class Student4 {
    var middleName: String?
}

class Student5 {
    let maxAge : Int
    
    init() {
        maxAge = 100
    }
}

/*
class Student6 : Student5 {
    override init() {
        maxAge = 110
    }
}
*/

struct Student7 {
    var firstName: String
    var lastName: String
    
    init() {
        firstName = ""
        lastName = ""
    }

    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

let st1 = Student1()
let st2 = Student2()
let st3 = Student3(firstName: "a", lastName: "b")
let st5 = Student5()
let st7 = Student7(firstName: "a", lastName: "b")

class Human {
    var weight : Int
    var age : Int
    
    init(weight: Int, age: Int) {
        self.weight = weight
        self.age = age
    }
    
    convenience init(age: Int) {
        self.init(weight: 0, age: age)
    }
    
    convenience init(weight: Int) {
        self.init(weight: weight, age: 0)
    }
    
    convenience init() {
        self.init(weight: 0)
    }
    
    func test() {}
}

let h1 = Human(weight: 70, age: 25)
let h2 = Human(weight: 0, age: 25)
let h3 = Human()

class Student : Human {
    var firstName : String
    var lastName : String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        super.init(weight: 0, age: 0)
        self.weight = 50
    }
     
    override convenience init(weight: Int, age: Int) {
        self.init(firstName: "")
        self.weight = weight
        self.age = age
    }
    
    convenience init(firstName: String) {
        self.init(firstName: firstName, lastName: "")
        self.age = 28
    }
    
    deinit {
        print("Human deinitialized")
    }
}

let student1 = Student(firstName: "a")
student1.weight
let student2 = Student(firstName: "a", lastName: "b")

struct Size {
    var width = 0.0, height = 0.0
}

var size = Size(width: 100, height: 150)
size.width

// MARK: class work (part№2)
class Doctor : Student {
    var fieldOfStude : String

    init(fieldOfStude: String) {
        self.fieldOfStude = fieldOfStude
        super.init(firstName: "", lastName: "")
    }
    
//    convenience init(fieldOfStude: String) {
//        self.init(firstName: "Doctor", lastName: "House")
//        self.fieldOfStude = fieldOfStude
//    }
    
//    override init(weight: Int, age: Int) {
//        self.fieldOfStude = "Medicine"
//        super.init(weight: weight, age: age)
//    }
    
    override init(firstName: String, lastName: String) {
        self.fieldOfStude = "Medicine"
        super.init(firstName: firstName, lastName: lastName)
    }
    
    convenience init(firstName: String) {
        self.init(fieldOfStude: "Medicine")
        self.age = 35
        self.firstName = firstName
    }
}

let doc = Doctor(firstName: "Angelina")

// MARK: class work (part№3)
enum Color : Int {
    case Black, White
    
    init?(value : Int) {
        switch value {
        case 0: self = .Black
        case 1: self = .White
        default: return nil
        }
    }
}

struct SizeRoom {
    var width : Int
    var height :  Int
    
    init?(width : Int, height : Int) {
        if width < 0 || height < 0 {
            return nil
        }
        self.width = width
        self.height = height
    }
}

class Friend : Human {
    var name : String!
    
    var skin : Color = {
        let random = 1
        return Color(value: random)!
    }()
    
    init?(name: String) {
        self.name = name
        super.init(weight: 0, age: 0)
        if name.isEmpty {
            return nil
        }
    }
    
    required init() {
        self.name = "Hy!"
        super.init(weight: 0, age: 0)
    }
    
    deinit {
        print("Friend deinitialized")
    }
}

let friend = Friend(name: "") //nil
friend?.weight

class BestFriend : Friend {
    override init?(name: String) {
        if name.isEmpty {
            super.init()
        } else {
            super.init(name:name)
        }
    }
    
    required init() {
        super.init()
    }
    
    deinit {
        print("BestFriend deinitialized")
    }
}

let b = BestFriend(name: "b")
b?.name

let a = BestFriend(name: "a")
a!.skin

let s = BestFriend(name: "s")
s!.skin

let t = BestFriend(name: "t")
t!.skin

struct Test {
    var bestFriend : BestFriend? = BestFriend(name: "")
}

var test : Test? = Test()
test!.bestFriend = nil


// MARK: home work
print("№1")
class Car {
    var make : String
    var model : String
    var driveMod : DriveMod
    var typeBody : TypeBody
    nonisolated(unsafe) static var count = 0
    
    enum DriveMod : String {
        case full = "Полный"
        case rear = "Задний"
        case front = "Передний"
        case non = "Неизвестно"
    }
    
    enum TypeBody : String {
        case sedan = "Седан"
        case coupe = "Купэ"
        case statioWagon = "Универсал"
        case non = "Неизвестно"
    }
    
    func printCharacteristics() {
        print("\(Car.count).\nМарка - \(make)\nМодель - \(model)\nПривод - \(driveMod.rawValue)\nКузов - \(typeBody.rawValue)\n")
    }
    
    init(make: String, model: String, driveMod : DriveMod, typeBody : TypeBody) {
        self.make = make
        self.model = model
        self.driveMod = driveMod
        self.typeBody = typeBody
        Car.count += 1
    }
    
    convenience init(make: String, model: String, driveMod : DriveMod) {
        self.init(make: make, model: model, driveMod: driveMod, typeBody: .non)
    }
    
    convenience init(make: String, model: String) {
        self.init(make: make, model: model, driveMod: .non, typeBody: .non)
    }
    
    convenience init(make: String) {
        self.init(make: make, model: "non", driveMod: .non, typeBody: .non)
    }
    
 }

let bmwM5 = Car(make: "Bmw", model: "M5", driveMod: .full, typeBody: .sedan)
bmwM5.printCharacteristics()
let mercedesE63 = Car(make: "Mercedes", model: "E63", driveMod: .full)
mercedesE63.printCharacteristics()
let mercedesE631 = Car(make: "Mercedes", model: "E63", driveMod: .full)
mercedesE631.printCharacteristics()
