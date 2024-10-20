var age = 65
var name = "Alex"

switch age {
case 0...16:
    print("Школота")
case 17...21:
    print("Студент")
case 22...50:
    print("Взрослый")
    
case 51, 56, 58, 60:
    print("Дед")
default:
    break
}


switch name {
case "Alex":
    print("Hi, Bro")
case "Alex" where age >= 59:
    print("I dont't know you")
default:
    break
}

let tuple = (name, age)

switch tuple {
case (_, let number) where number >= 59 && number <= 70:
print("Brooooooo")
case ("Alex", _):
    print("Alex")
    
case ("Alex", 60):
    print("Hi, Bro")
    
case ("Alex", 59):
    print("No, Bro")
    default :
    break
}


let point = (5,5)
switch point {
    case let (x,y) where x == y:
        print("x == y"  )
    case let (x,y) where x == -y:
        print ("x == -y")
    case let (_, y) where y < 0:
        print("y < 0")
    default: break
}

let array : [CustomStringConvertible] = [5, 5.4, Float(5.4)]

switch array[2] {
case _ as Int: print("Int")
case _ as Float: print("Float")
case _ as Double: print("Double")
default:
    break
}


//hw
print("№1")
let myResume = "Hello, my name is Arnak, I am a 3rd year student at the Moscow Institute of Radio Engineering, Electronics and Automation, and also a student at Sber School21. My direction is Software Engineering. By"
myResume.count
var sumVowels = 0
var sumConsonants = 0
var sumPunctuation = 0
var sumOthers = 0
for i in myResume {
    let j = i.lowercased()
    switch j {
        case "a", "e", "i", "o", "u":
        sumVowels += 1
    case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
        sumConsonants += 1
    case ".", ",", "!", "?", ":":
        sumPunctuation += 1
    default:
        sumOthers += 1
    }
}

print("Гласных -", sumVowels, "\nСогласных -", sumConsonants, "\nЗнаков пунктуации -", sumPunctuation, "\nОстальное -", sumOthers)

print("\n№2")
let myAge = -1

switch myAge {
case let c where c < 0 :
    print("Incorrect age")
case 0...3 :
    print("Baby")
case 4...10 :
    print("Child")
case 11...18 :
    print("Teenager")
case 19...50 :
    print("Adult")
default:
    print("Old")
}

print("\n№3")
let myName = "Арнак"
let mySurname = "Нерсисян"
let myNextName = "Гарикович"
let fullName = (name: myName, surname: mySurname, nextName: myNextName)
switch fullName {
case let (name, _, _) where name.hasPrefix("А") == true || name.hasPrefix("О") == true:
    print(fullName.name)
case let (_, surname, _) where (surname.hasPrefix("З") == true) || (surname.hasPrefix("Е") == true):
    print(fullName)
case let (_, _, nextName) where (nextName.hasPrefix("В") == true) || (nextName.hasPrefix("Д") == true):
    print("\(fullName.name) \(fullName.nextName)")
default:
    print("\(fullName.name) \(fullName.surname) \(fullName.nextName)")
}

print("\n№4")

let ship00 = (0,0)
let ship01 = (0,1)
let ship02 = (0,2)
let ship03 = (0,3)

let ship20 = (2,0)
let ship21 = (2,1)
let ship22 = (2,2)

let ship24 = (2,4)
let ship25 = (2,5)
let ship26 = (2,6)

let ship40 = (4,0)
let ship41 = (4,1)

let ship43 = (4,3)
let ship44 = (4,4)

let ship46 = (4,6)
let ship47 = (4,7)

let ship93 = (9,3)
let ship95 = (9,5)
let ship97 = (9,7)
let ship99 = (9,9)

let ollShips = [ship00, ship01, ship02, ship03, ship20, ship21, ship22, ship24, ship25, ship26, ship40, ship41, ship43, ship44, ship46, ship47, ship93, ship95, ship97, ship99]

var board = Array(repeating: Array(repeating: "O", count: 10), count: 10)

for i in 0..<ollShips.count {
    let ship = ollShips[i]
    board[ship.0][ship.1] = "X"
}

let coordinates = (9,7)
var res = "Мимо"

for i in 0..<board.count {
    for j in 0..<board[i].count {
        switch coordinates {
        case let (x,y) where board[x][y] == "X":
            board[x][y] = "П"
            res = "Попал! Ухууу!"
        default : break
        }
    
        print(board[i][j], terminator: " ")
    }
    print()
}
print(res)
