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

print("\n№2")

class Vehicle {
    var nameVehicle : TypeVhicle
    var speed : Double {
        return 0
    }
    var сapacity : Int {
        return 0
    }
    var priceOneTrip : Double {
        return 0
    }
    var countOfPassengers : Int
    
    enum TypeVhicle : String {
        case airplane = "самолет 🛩"
        case ship = "корабль 🛳 "
        case helicopter = "вертолет 🚁"
        case car = "машина 🚘"
        case train = "поезд 🚂"
    }
    
    init(nameVehicle : TypeVhicle, countOfPassengers : Int) {
        self.nameVehicle = nameVehicle
        self.countOfPassengers = countOfPassengers
        if countOfPassengers > сapacity {
            self.countOfPassengers = 0
            print("Количество пассажиров(\(countOfPassengers)) не может быть больше, чем вместимость(\(сapacity))")
        }
    }
}

class Airplane : Vehicle {
    override var speed : Double {
        return 800
    }
    override var сapacity : Int {
        return 155
    
    }
    override var priceOneTrip : Double {
        return 150
    }
}

class Ship : Vehicle {
    override var speed : Double {
        return 48
    }
    override var сapacity : Int {
        return 400
    }
    override var priceOneTrip : Double {
        return 250
    }
}

class Helicopter : Vehicle {
    override var speed : Double {
        return 220
    }
    override var сapacity : Int {
        return 22
    }
    override var priceOneTrip : Double {
        return 350
    }
}

class Car : Vehicle {
    override var speed : Double {
        return 80
    }
    override var сapacity : Int {
        return 5
    }
    override var priceOneTrip : Double {
        return 100
    }
}

class Train : Vehicle {
    override var speed : Double {
        return 50
    }
    override var сapacity : Int {
        return 500
    }
    override var priceOneTrip : Double {
        return 80
    }
}

let airplane = Airplane(nameVehicle: .airplane, countOfPassengers: 25)
let ship = Ship(nameVehicle: .ship, countOfPassengers: 100)
let helicopter = Helicopter(nameVehicle: .helicopter, countOfPassengers: 10)
let car = Car(nameVehicle: .car, countOfPassengers: 4)
let train = Train(nameVehicle: .train, countOfPassengers: 100)

let arrayOfVehicles: [Vehicle] = [airplane, ship, helicopter, car, train]

func transportСomparison(distance: Double, array: [Vehicle]) {
    
    //Считает кол-во потраченного времени на полет
    func calculateTime(speed : Double) -> Double {
        return distance / speed
    }
    
    //Считает кол-во потраченных денег на всех пассажиров транспорта
    func calculatePrice(priceOneTrip: Double, countOfPassengers: Int) -> Double {
        return priceOneTrip * Double(countOfPassengers)
    }
    
    //Считает минимальное времени на перелет
    func minTimeVehicle(array: [Vehicle]) -> (Double, String) {
        var min : Double?
        var nameVehicle = ""
        for i in array {
            if min == nil || calculateTime(speed: i.speed) < min! {
                min = calculateTime(speed: i.speed)
                nameVehicle = i.nameVehicle.rawValue
            }
        }
        print("Минимальное время на перелет: \(min!)ч, транспорт - \(nameVehicle)")
        return (min!, nameVehicle)
    }
    
    //Количество потраченных денег
    func priceToAllTrip(array: [Vehicle]) -> (Double, Int) {
        var allPrice : Double = 0
        var countVehicle : Int = 0
        for i in array {
            allPrice += calculatePrice(priceOneTrip: i.priceOneTrip, countOfPassengers: i.countOfPassengers)
            countVehicle += 1
        }
        print("Стоимость всех перевозок - \(allPrice)$, количество транспорта - \(countVehicle)")
        return (allPrice, countVehicle)
    }
    
    minTimeVehicle(array: array)
    priceToAllTrip(array: array)
}

transportСomparison(distance: 1000, array: arrayOfVehicles)

print("\n№3")

class LivingOrganism {
    var TypeLivingOrganism : TypeLivingOrganism {
        return .people
    }

    var typeGrupp : TypeGrupp {
        return .mammalia
    }
    
    var countLegs : Int? {
        return 0
    }
    
    enum TypeGrupp : String {
        case pisces = "Рыбы"
        case amphibia = "Земноводные"
        case reptilia = "Пресмыкающиеся"
        case aves = "Птицы"
        case mammalia = "Млекопитающие"
        
    }
    
    enum TypeLivingOrganism : String {
        case people = "Человек"
        case animal = "Животное"
    }

}

class People : LivingOrganism {
    override var TypeLivingOrganism : TypeLivingOrganism {
        return .people
    }
    
    override var typeGrupp : TypeGrupp {
        return .mammalia
    }
    
    override var countLegs: Int? {
        return 2
    }
}

class Monkey : LivingOrganism {
    override var TypeLivingOrganism : TypeLivingOrganism {
        return .animal
    }
    
    override var typeGrupp : TypeGrupp {
        return .mammalia
    }
    
    override var countLegs: Int? {
        return 4
    }
}

class Dog : LivingOrganism {
    override var TypeLivingOrganism : TypeLivingOrganism {
        return .animal
    }
    
    override var typeGrupp : TypeGrupp {
        return .mammalia
    }
    
    override var countLegs: Int? {
        return 4
    }
}

class Giraffe : LivingOrganism {
    override var TypeLivingOrganism : TypeLivingOrganism {
        return .animal
    }
    
    override var typeGrupp : TypeGrupp {
        return .mammalia
    }
    
    override var countLegs: Int? {
        return 4
    }
}

class Crocodile : LivingOrganism {
    override var TypeLivingOrganism : TypeLivingOrganism {
        return .animal
    }
    
    override var typeGrupp : TypeGrupp {
        return .reptilia
    }
    
    override var countLegs: Int? {
        return 4
    }
}

let peopleSeda = People()
let peopleKostya = People()
let dogArchi = Dog()
let dogGreys = Dog()
let monkeyAlex = Monkey()
let monkeyOsada = Monkey()
let giraffeMelman = Giraffe()
let giraffeOsk = Giraffe()
let crocodileLacoste = Crocodile()
let crocodileGena = Crocodile()

let arrayAnimals: [LivingOrganism] = [peopleSeda, peopleKostya ,dogArchi, dogGreys, monkeyAlex, monkeyOsada, giraffeMelman, giraffeOsk, crocodileLacoste, crocodileGena]

func calcLivingOrganisms(array: [LivingOrganism]) -> (Int, Int, Int, Int) {
    var countReptilia = 0
    var countFourLegs = 0
    var countAnimals = 0
    var countLivingOrganism = 0
    for i in array {
        if i.TypeLivingOrganism == .animal {
            countAnimals += 1
        }
        if i.countLegs == 4 {
            countFourLegs += 1
        }
        if i.typeGrupp == .reptilia {
            countReptilia += 1
        }
        countLivingOrganism += 1
    }
    
    print("Количество пресмыкающих - \(countReptilia)")
    print("Количество четвероногих - \(countFourLegs)")
    print("Количество животных - \(countAnimals)")
    print("Количество живых существ - \(countLivingOrganism)")
    return (countReptilia, countFourLegs, countAnimals, countLivingOrganism)
}

calcLivingOrganisms(array: arrayAnimals)
