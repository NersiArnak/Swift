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
    
    init(weight : Int, age : Int) {
        self.weight = weight
        self.age = age
    }
    
    convenience init(age: Int) {
        self.init(weight: 0, age : age)
    }
    
    convenience init(weight: Int) {
        self.init(weight: weight, age: 0)
    }
    
    convenience init() {
        self.init(weight: 0)
    }
    
    func test() {}
}

let h1 = Human(weight: 76, age: 26)
let h2 = Human(weight: 0, age: 26)
let h3 = Human()


class Student : Human {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        super.init(weight: 0, age: 0)
    }
}
