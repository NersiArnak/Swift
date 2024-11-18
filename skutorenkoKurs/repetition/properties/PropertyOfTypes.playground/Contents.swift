// MARK: Class work
let MaxNameLenght = 20 //Глобальная переменная
let MinNameLenght = 2
class Human {
    var name : String {
        didSet {
            if name.count > MaxNameLenght {
                name = oldValue
            }
        }
    }
    
    lazy var storyOfMyLife : String! = "This is a story of my entire life..."
    
    static let maxAge = 100
    var age : Int {
        didSet {
            if age > Human.maxAge {
                age = oldValue
            }
        }
    }
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

enum Direction {
    static let enumDescription = "Directions in the game"
    case Left
    case Right
    case Top
    case Bottom
    var isVertical : Bool {
        return self == .Top || self == .Bottom
    }
    
    var isHorizontal : Bool {
        return !isVertical
    }
}

let testEnum = Direction.Left
testEnum.isHorizontal

struct Cat {
    var name : String
    static let maxAge = 20
    var age : Int {
        didSet {
            if age > Cat.maxAge {
                age = oldValue
            }
        }
    }
}


let human = Human(name: "John", age: 40)
human.age = 1000
human.age
var cat = Cat(name: "Tom", age: 10)
human.age = 1000
cat.age = 50

// MARK: Home work

print("\n№1")
struct FileDescription {
    static let maxSizeFile = 100
    static let maxNameFile = 102400 // в килобайтах
    var path: String
    var nameFile: String {
        didSet {
            if nameFile.count > FileDescription.maxNameFile {
                return nameFile = oldValue
            }
        }
    }
    var sizeFile : Int {
        didSet {
            if sizeFile > FileDescription.maxSizeFile {
                return sizeFile = oldValue
            }
        }
    }
    var folderPath : String
    var typeFile : TypeFile
    var fileContents : String
    
    enum TypeFile : String {
        case hidden = "скрытый"
        case notHidden = "не скрытый"
    }
}

var file1 = FileDescription(path: "/Users/nersiarnak/Desktop/Swift/skutorenkoKurs/repetition/properties/PropertyOfTypes.playground", nameFile: "PropertyOfTypes.playground", sizeFile: 29, folderPath: "/Users/nersiarnak/Desktop/Swift/skutorenkoKurs/repetition/properties", typeFile: .notHidden, fileContents: "Урок по типам свойст")

//file1.sizeFile = 10240666

func printFileDescription(file: FileDescription) {
    print("Путь до файла: \(file.path)\nИмя файла: \(file.nameFile)\nРазмер файла: \(file.sizeFile) КилоБайт\nПуть к папке: \(file.folderPath)\nТип файла: \(file.typeFile.rawValue)\nСодержимое файла: \(file.fileContents)\n")
}

printFileDescription(file: file1)

print("\n№2")
enum ColorGamma : Int {
    static let startValue = 0x000000
    static let endValue = 0xFFFFFF
    static let countColor = endValue - startValue
        
    case red = 0xFF0000
    case green = 0x00FF00
    case blue = 0x0000FF
}

print(ColorGamma.countColor)

print("\n№3")
class HumanHW {
    static let maxHeight = 250.0
    static let minHeight = 10.0
    static let maxWeight = 555.0
    static let minWeight = 10.0
    static let error = "Incorrect value"
    nonisolated(unsafe) static var instanceCount = 0
    
    var name: String {
        didSet {
            if name.count > MaxNameLenght || name.count < MaxNameLenght {
                name = oldValue
            }
        }
    }
    var surname: String {
        didSet {
            if surname.count > MaxNameLenght  || surname.count < MaxNameLenght{
                surname = oldValue
            }
        }
    }
    var fatherName: String {
        didSet {
            if fatherName.count > MaxNameLenght || fatherName.count < MaxNameLenght {
                fatherName = oldValue
            }
        }
    }
    var height: Double {
        didSet {
            if height > HumanHW.maxHeight || height < HumanHW.minHeight {
                height = oldValue
            }
        }
    }
    
    var weight: Double {
        didSet {
            if weight > HumanHW.maxWeight  || weight < HumanHW.minWeight {
                weight = oldValue
            }
        }
    }
    
    init(name: String, surname: String, fatherName: String, height: Double, weight: Double) {
        self.name = name
        if name.count > MaxNameLenght || name.count < MinNameLenght {
            self.name = HumanHW.error
        }
        self.surname = surname
        if surname.count > MaxNameLenght || surname.count < MinNameLenght {
            self.surname = HumanHW.error
        }
        self.fatherName = fatherName
        if fatherName.count > MaxNameLenght || fatherName.count < MinNameLenght {
            self.fatherName = HumanHW.error
        }
        self.height = height
        if height > HumanHW.maxHeight || height < HumanHW.minHeight {
            self.height = 0
        }
        self.weight = weight
        if weight > HumanHW.maxWeight  || weight < HumanHW.minWeight {
            self.weight = 0
        }
        HumanHW.instanceCount += 1
    }
}


//func printHuman(human: HumanHW) {
//    print("Имя: \(human.name)\nФамилия: \(human.surname)\nОтчество: \(human.fatherName)\nРост: \(human.height)\nВес: \(human.weight)\n")
//}
//
//let human1 = HumanHW(name: "Arnak", surname: "Nersisyan", fatherName: "Garikovich", height: 174.9, weight: 67.7)
//
//printHuman(human: human1)


