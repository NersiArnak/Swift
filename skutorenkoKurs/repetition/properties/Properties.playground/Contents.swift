import Foundation
//cw
//struct Student {
//    var firstName: String {
//        willSet {
//            print("will set " + newValue + " instead of " + firstName)
//        }
//        didSet(oldFirstName) {
//            print("did set " + firstName + " instead of " + oldFirstName)
//            firstName = firstName.capitalized
//        }
//    }
//    
//    var lastName : String {
//        didSet(oldFirstName) {
//            lastName = lastName.capitalized
//        }
//    }
//    
//    var fullName : String {
//        get {
//            return firstName + " " + lastName
//        }
//        set {
//            print("Full name " + newValue)
//            let words = newValue.components(separatedBy: " ")
//            if words.count > 0 {
//                firstName = words[0]
//            }
//            if words.count > 1 {
//                lastName = words[1]
//            }
//        }
//    }
//}
//
//var student = Student(firstName: "Alex", lastName: "Skutorenko")
//
//student.firstName
//student.lastName
//
//student.firstName = "Bob"
//student.fullName
//
//student.fullName = "Ivan Ivanov"


//hw
//class stringAppend {
//    var mas : [Int] = []
//    init(array: [Int], number: Int) {
//        mas = array
//        mas.append(number)
//    }
//}
//
//var expClass = stringAppend(array: [], number: 4)
//expClass.mas.append(3)
//print(expClass.mas)

var width = 7.0 {
    willSet {
        print("Собираюсь установить значение \(newValue)")
        print(width)
    } //вызывается перед установкой нового значение
    didSet {
        print("Заменяю значение \(oldValue) на \(width)")
    } //вызывается после установки нового значение
}
width = 10.0
var height = 3.0
var litresMeter = 1.5

print()
var amountOfPaint: Double {
    get {
        return (width * height / litresMeter)
    } //получение значения
    
    set {
        let area = newValue * litresMeter
        print("new area: \(area) ")
    } //изменения значения
}

print(amountOfPaint)
amountOfPaint = 7

print("\n№1")
struct DateHB {
    var day: Int
    var month: Int
    var year: Int
    
    init() {
        day = 0
        month = 0
        year = 0
    }
    
    init(day: Int, month: Int, year: Int) {
        self.day = day
        self.month = month
        self.year = year
    }
}

struct StudentAM {
    var name: String
    var surname: String
    var fatherName: String
    var hb = DateHB()
    var age : Int {
        get {
            return 2024 - hb.year
        }
    }
    var studied : Int {
        get {
            var res = 0
            if age > 7 {
                res = age - 6
            }
            else {
                res = 0
            }
            return res
        }
    }
}

var st1 = StudentAM(name: "Arnak", surname: "Nersisyan", fatherName: "Grikovich", hb: DateHB(day: 25, month: 2, year: 2004))

print("Имя - \(st1.name), Фамилия - \(st1.surname), Отчество - \(st1.fatherName), дата рождения - \(st1.hb.day).0\(st1.hb.month).\(st1.hb.year), возраст - \(st1.age) лет, \(st1.studied) лет учился")

print("\n№2")


struct Segment {
    struct Point {
        var a: Double {
            didSet {
                print("Точка a была \(oldValue), стала \(a)")
            }
        }
        var b: Double {
            didSet {
                print("Точка b была \(oldValue), стала \(b)")
            }
        }
    }
    var point : Point
    
    var midPoint : Double {
        get {
            return (point.a + point.b) / 2
        }
        set {
            let difference = newValue - midPoint
            point.a = point.a + difference
            point.b = point.b + difference
        }
    }
    
    var length : Double {
        get {
            return point.b - point.a
        }
        set {
            let difference = newValue - length
            point.b = point.b + difference
        }
    }
}

var segment1 = Segment(point: Segment.Point(a: 5, b: 10))
segment1.midPoint
segment1.midPoint = 3
segment1.midPoint
segment1.point.a
segment1.point.b
//segment1.length
//segment1.length = 8
//segment1.length
//segment1.a
//segment1.b


