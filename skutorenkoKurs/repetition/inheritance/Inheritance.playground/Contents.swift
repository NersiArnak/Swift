// MARK: class work
/*final*/ class Human {
    final var finalProperty: String = "final"
    var firstName: String = " "
    var lastName: String = " "
    
    var fullName: String {
        return firstName + " " + lastName
    }
    
    func sayHello() -> String {
        return "Hello, \(fullName)"
    }
}

class SmartHuman : Human {
    
}

class Student : SmartHuman {
    override func sayHello() -> String {
        return super.sayHello() + ", my friend"
    }
}

class Kid : Human {
    var favoriteToy = "iMac"
    override func sayHello() -> String {
        return "agu"
    }
    
    override var fullName: String {
        return firstName
    }
    
    override var firstName: String {
        set {
            super.firstName = newValue + " :)"
        }
        get {
            return super.firstName
        }
    }
    
    override var lastName: String {
        didSet {
            print("new value - \(self.lastName)")
        }
    }
}

let human = Human()
human.firstName = "John"
human.lastName = "Doe"
human.fullName
human.sayHello()

let student = Student()
student.firstName = "Arnak"
student.lastName = "Nersisyan"
student.fullName
student.sayHello()

let kid = Kid()
kid.firstName = "Gari"
kid.lastName = "Nersisyan"
kid.fullName
kid.sayHello()

let array : [Human] = [human, kid, student]

for value in array {
    print(value.sayHello())
}


// MARK: home work
print("\n№1")
class Artist {
    var name: String
    var surname: String
    var fullname: String {
        return name + " " + surname
    }
    
    func perfomance() {
        print("\(name) \(surname) - выступает")
    }
    
    init(name: String, surname: String) {
        self.name = name
        self.surname = surname
    }
}

class Actor : Artist {
    var genre : String
    
    override func perfomance() {
        print("\(name) \(surname) - актер, выступает в жанре: \(genre) 🎭")
    }
    
    init(name: String, surname: String, genre: String) {
        self.genre = genre
        super.init(name: name, surname: surname)
    }
}

class Dancer : Artist {
    let typeArtist = "танцор"
    override func perfomance() {
        print("\(name) \(surname) - \(typeArtist) 💃")
    }
}

class Drower : Artist {
    private var typeDrower = "постимпрессионист"
    override var fullname : String {
        return super.fullname + " - great drower 🎨"
    }
    override func perfomance() {
        print("\(name) \(surname) - художник, \(typeDrower) 🎨")
    }
}

let actor = Actor(name: "Александр", surname: "Попов", genre: "комедия")
let dancer = Dancer(name: "Самвел", surname: "Сердюкян")
let drower = Drower(name: "Макс", surname: "Думов")

var arrayArtist : [Artist] = [actor, dancer, drower]
for i in arrayArtist {
    i.perfomance()
}

