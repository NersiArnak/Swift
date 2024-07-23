import Foundation

//HomeWork9
print("tesk1")
let str = "In the vast expanse of the digital universe, where data flows like rivers through silicon valleys, there exists a unique challenge: crafting a message of precisely 200 characters, a task 1984 simple!!"

let vowels = ["A", "E", "I", "O", "U", "Y", "a","e", "i", "o", "u", "y"]
let consonants = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Z", "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z"]

var sumVowels = 0
var sumConsonants = 0
var sumSpaces = 0
var sumPunctuation = 0

for i in str {
    switch i {
        case "A", "E", "I", "O", "U", "Y", "a","e", "i", "o", "u", "y":
            sumVowels += 1
            
        case "B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Z", "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z":
            sumConsonants += 1
        case " ":
            sumSpaces += 1
        
        default:
        sumPunctuation += 1
        }
}
print("Гласные - \(sumVowels)")
print("Согласные - \(sumConsonants)")
print("Пробелы - \(sumSpaces)")
print("Знаки пунктуации - \(sumPunctuation)")

print("\ntask2")

let myAge = 20

switch myAge{
    case 1...10:
        print("Малыш")
    case 11...18:
        print("Подросток")
    case 19...40:
        print("Взрослый")
    case 41...80:
        print("Старик")
    default:
        break
}

print("\ntask3")

//let fullName = (firstName: "Arnak", lastName: "Nersisyan", fullName: "Garikovich")
//
//
//let name = "Arnak"
//for i in 0..<name.count {
//    if Character(name[i].0) == "a" {
//        print("add")
//    }
//}

//let myName = (firstName: "Arnak", lastName: "Nersisyan", surName: "Garikovich")
//
//let name = (name: "[Arnak", surName: "Nersisyan", lastName: "Narikovich")
//let indexName = name.name.index(name.name.startIndex, offsetBy: 0)
//let indexSurName = name.surName.index(name.surName.startIndex, offsetBy: 0)
//let indexLastName = name.lastName.index(name.lastName.startIndex, offsetBy: 0
//)


//if charAO.0 == name.name[indexName] || charAO.1 == name.name[indexName]{
//    print(name.name)
//}
//else if charEZ.0 == name.surName[indexSurName] || charEZ.0 == name.surName[indexSurName] {
//    print(name.surName)
//}
//else if charVD.0 == name.lastName[indexLastName] || charVD.1 == name.lastName[indexLastName] {
//    print(name.name, name.lastName)
//}
//else {
//    print(name)
//}

let charAO : (Character, Character) = ("A", "O")
let charEZ : (Character, Character) = ("E", "Z")
let charVD : (Character, Character) = ("V", "D")

let name = "Arnak"
let surName = "Nersisyan"
let lastName = "Garikovich"

let tupleName = (name: name, surName: surName, lastName: lastName)

let indexName = name.index(name.startIndex, offsetBy: 0)
let indexSurName = surName.index(surName.startIndex, offsetBy: 0)
let indexLastName = lastName.index(lastName.startIndex, offsetBy: 0)

let charFirstName = name[indexName]
let charFirstSurName = surName[indexSurName]
let charFirstLastName = lastName[indexLastName]

switch tupleName {
case (let myName, _, _) where charFirstName == charAO.0 || charFirstName == charAO.1:
    print("Name - \(tupleName.name)")
    
//case (let myName, _, _) where myName.hasPrefix("A") || myName.hasPrefix("O"):
//    print("Name - \(tupleName.name)"
    
case (_, let mySurName, _) where charFirstSurName == charEZ.0 || charFirstSurName == charEZ.1:
    print("SurName - \(tupleName.surName)")
    
case (_, _, let myLastName) where charFirstLastName == charVD.0 || charFirstLastName == charVD.1:
    print("Name - \(tupleName.name), LastName - \(tupleName.lastName)")
default:
    print("Name - \(tupleName.name)\nSurName - \(tupleName.surName)\nLastName - \(tupleName.lastName)")
}
    
print("\ntask4")

let masLetters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]

var dict = [String : String]()

let kor = (x:"j",y:5)
var results : String = "мимо"

let myShip11 = ("a",0)
let myShip12 = ("a",1)
let myShip13 = ("a",2)
let myShip14 = ("a",3)

let myShip21 = ("c",0)
let myShip22 = ("c",1)
let myShip23 = ("c",2)

let myShip31 = ("e",0)
let myShip32 = ("f",0)
let myShip33 = ("g",0)

let myShip41 = ("i",1)
let myShip42 = ("i",2)

let myShip51 = ("j",5)
let myShip52 = ("j",6)

let myShip61 = ("g",4)
let myShip62 = ("h",4)

let myShip7 = ("c",5)
let myShip8 = ("e",3)
let myShip9 = ("e",6)
let myShip10 = ("h",7)


let mas = [myShip11, myShip12, myShip13, myShip14, myShip21, myShip22, myShip23, myShip31, myShip32, myShip33, myShip41, myShip42, myShip51, myShip52, myShip61, myShip62, myShip7, myShip8, myShip9, myShip10]

for i in mas {
    switch kor {
    case (_, _) where kor == i:
        results = "попал"
    default:
        break
    }
}
print("\(kor): \(results)")

//switch kor {
//case("a", 0...2):
//    dict["\(kor.x)\(kor.y)"] = "Попал"
//    print(dict)
//default:
//    dict["\(kor.x)\(kor.y)"] = "Мимо"
//    print(dict)
//}

//if kor.0 == myShip1.0 && kor.1 == myShip1.1 {
//    dict["\(kor.0)\(kor.1)"] = true
//} else if kor.0 == myShip2.0 && kor.1 == myShip2.1 {
//    dict["\(kor.0)\(kor.1)"] = true
//} else if kor.0 == myShip3.0 && kor.1 == myShip3.1 {
//    dict["\(kor.0)\(kor.1)"] = true
//}
//else {
//    dict["\(kor.0)\(kor.1)"] = false
//}
//print(dict)

//ClassWork9
//var age = 14
//
//for i in 0..<20 {
//    
//    if i < 15 {
//        continue
//    }
//    
//    if i == 10 {
//        break
//    }
//    print(i)
//}
//
//switch age {
//    case 0...15:
//        print("school")
//        fallthrough
//    case 17...21:
//        print("student")
//        fallthrough
//    case 52:
//    print("НЕ срабoтaлo!")
//    case 51, 56:
//    print("Срабoтaлo!")
//default:
//    break
//}
//
//var age1 = 60
//var name = "Alex"
//
//switch name {
//    case "Alex" where age1 < 50:
//        print("Hi, Alex")
//    case "Alex" where age1 >= 50:
//        print("Bye, Alex")
//    
//default:
//        break
//}
//
//var opt : Int? = 5
//
//if let a  = opt {
//    print(a)
//}
//
//let tuple = (name, age1)
//
//switch tuple {
//    case ("Alex", 60):
//        print(name, age1)
//    case ("Alex", 59):
//        print(name, age1)
//    
//case (_, let number) where number >= 50 && number >= 70:
//    print("Hi, old man")
//    default:
//        break
//}
//
//let point = (5,5)
//
//switch point {
//    case let (x,y) where x == y:
//        print("x = y")
//    case let (x,y) where x == -y:
//        print("x != y")
//    
//    default:
//        break
//}
//
//let array : [CustomStringConvertible] = [5, 5.4, Float(5.3)]
//
//switch array[2] {
//    case _ as Int:
//        print("Int")
//    case _ as Float:
//        print("Float")
//    case _ as Double:
//        print("Double")
//    
//    default:
//        break
//}
//
