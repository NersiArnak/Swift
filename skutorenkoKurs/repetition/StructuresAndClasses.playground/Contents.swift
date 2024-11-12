// MARK: class work
class StudentClass {
    var name : String
    var age : Int
    
    init() {
        name = "No name"
        age = 0
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

struct StudentStruct {
    var name : String
    var age : Int
}


func addOneYear(student: StudentClass) {
    student.age += 1
}

func addOneYear(student: inout StudentStruct) {
    student.age += 1
    
}

let stClass1 = StudentClass(name: "Arnold", age: 18)
var stStruct1 = StudentStruct(name: "Arno", age: 20)

//stStruct1.age = 21

var stStruct2 = stStruct1
stStruct2.age = 21
stStruct2.name = "Sam"
print("struct: Старое имя: \(stStruct1.name), измененное имя: \(stStruct2.name)")

var stClass2 = stClass1
stClass2.age //18
stClass2.age = 21
print("class: Старый возраст: \(stClass1.age), измененный возраст: \(stClass2.age)")

stStruct1.age //20
addOneYear(student: &stStruct1)
stStruct1.age //21

stClass2.age //21
addOneYear(student: stClass1)
stClass1.age //22

var arrayStruct = [stStruct1]

arrayStruct[0].age = 50
stStruct1.age //21 не изменился!

var arrayClasses = [stClass1]
arrayClasses[0].age = 50
stClass1.age  //Стало 50!

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

someVideoMode.resolution.width = 1280
//print(someVideoMode.resolution.width)

let vga = Resolution(width: 100)

let nextVidoMode = someVideoMode

nextVidoMode.name = "Super HD"

if nextVidoMode === someVideoMode {
    print("Yes!!!")
}

//MARK: home work
print("\n№1")
struct Student {
    var name : String
    var surname : String
    var fatherName : String
    var yearOfBirth : Int
    var gpa : Double
}

var st1 = Student(name: "Arnak", surname: "Nersisyan", fatherName: "Garikovich", yearOfBirth: 2004, gpa: 4.8)
var st2 = Student(name: "Arseniy", surname: "Malicovskiy", fatherName: "Ivanovich", yearOfBirth: 1996, gpa: 4.5)
var st3 = Student(name: "Vago", surname: "Lenchi", fatherName: "Maximovich", yearOfBirth: 2009, gpa: 4.0)
var st4 = Student(name: "Kerop", surname: "Nersisyan", fatherName: "Garikovich", yearOfBirth: 1984, gpa: 4.7)

let stMagazine = [st1, st2, st3, st4]
func printElement(array: [Student]) {
    for (index, value) in array.enumerated() {
        print("\(index+1). Имя: \(value.name), Фамилия: \(value.surname), Отчетсво: \(value.fatherName), Год рождения: \(value.yearOfBirth), ГПА: \(value.gpa)")
    }
}
printElement(array: stMagazine)
print("\n№2")
let sortedGpa = stMagazine.sorted(by: {$0.gpa > $1.gpa})
print("Отсортированный массив по убыванию по gpa:")
printElement(array: sortedGpa)

print("\n№3")
let sortedSurname = stMagazine.sorted(by: {
    if $0.surname == $1.surname {
        return $0.name < $1.name
    }
    return $0.surname < $1.surname})
printElement(array: sortedSurname)

print("\n№4")
var newArray = stMagazine
newArray[0].name //Arnak
newArray[0].name = "Arno"
print("Старое имя: \(stMagazine[0].name), новое имя: \( newArray[0].name)")


print("\n№5")

class ClassStudent {
    var name : String
    var surname : String
    var fatherName : String
    var yearOfBirth : Int
    var gpa : Double
    
    init() {
        name = "nil"
        surname = "nil"
        fatherName = "nil"
        yearOfBirth = 0
        gpa = 0
    }
    
    init(name: String, surname: String, fatherName: String, yearOfBirth: Int, gpa: Double ) {
        self.name = name
        self.surname = surname
        self.fatherName = fatherName
        self.yearOfBirth = yearOfBirth
        self.gpa = gpa
    }
}

var classSt1 = ClassStudent(name: "Angel", surname: "Belyaeva", fatherName: "Olegovna", yearOfBirth: 2005, gpa: 5.0)

var classSt2 = ClassStudent(name: "Anton", surname: "Batonov", fatherName: "Vagenovich", yearOfBirth: 2000, gpa: 3.0)

var classSt3 = ClassStudent(name: "Elizabeth", surname: "Sapitonova", fatherName: "Romanovna", yearOfBirth: 1993, gpa: 3.4)

var classSt4 = ClassStudent(name: "Sofiya", surname: "Belyaeva", fatherName: "Arsenovna", yearOfBirth: 2003, gpa: 2.9)


let arrayMagazine = [classSt1, classSt2, classSt3, classSt4]

func printMagazine(array: [ClassStudent]) {
    var index = 0
    for i in array {
        index += 1
        print("\(index). Имя: \(i.name), Фамилия: \(i.surname), Отчество: \(i.fatherName), год рождения: \(i.yearOfBirth), гпа: \(i.gpa)")
    }
}

printMagazine(array: arrayMagazine)

print("\n№6")
let sortedGpaClasses = arrayMagazine.sorted(by: {$0.gpa > $1.gpa})
printMagazine(array: sortedGpaClasses)

print("\n№7")
let sortedSurNameClasses = arrayMagazine.sorted(by: {
    if $0.surname == $1.surname {
        return $0.name < $1.name
    }
    return $0.surname < $1.surname}
)

printMagazine(array: sortedSurNameClasses)

print("\n№8")
let newArrayСlasses = arrayMagazine
print("Имя до изменений - \(newArrayСlasses[0].name)")
newArrayСlasses[0].name = "Emka"
print("Имя после изменений - \(newArrayСlasses[0].name)")
print(arrayMagazine[0].name)

print("\nChess using structure\n")

struct ChessFigure {
    var name : Name
    var icon : Icon
    var color : Color
    var position : (Int, Character)
}

enum Color {
    case Black
    case White
}
enum Name : String {
    case King = "Король"
    case Queen = "Королева"
    case Pawn = "Пешка"
    case Rook = "Ладья"
    case Knight = "Конь"
    case Bishop = "Слон"
    
}

enum Icon : Character {
    case KingWhite = "♔"
    case KingBlack = "♚"
    case QueenWhite = "♕"
    case QueenBlack = "♛"
    case PawnWhite = "♙"
    case PawnBlack = "♟"
    case RookWhite = "♖"
    case RookBlack = "♜"
    case KnightWhite = "♘"
    case KnightBlack = "♞"
    case BishopWhite = "♗"
    case BishopBlack = "♝"
}

let kingWhite = ChessFigure(name: .King, icon: .KingWhite, color: .White, position: (1, "a"))
let blackQueen = ChessFigure(name: .Queen, icon: .QueenBlack, color: .Black, position: (3, "e"))
let arrayFigures = [kingWhite, blackQueen]

func valueFirures(figure: ChessFigure) {
    var index = 0
    index += 1
    print("\(index). Фигура: \(figure.name.rawValue)\(figure.icon.rawValue), позиция: (x:\(figure.position.0) y:\(figure.position.1))")
}

func printAllFigures(array: [ChessFigure]) {
    for i in array {
        valueFirures(figure: i)
    }
}

func charToInt(position: (x: Int, y: Character)) -> (Int, Int) {
    let alphabet = " abcdefgh"
    var positionY = 0
    for (index, value) in alphabet.enumerated() {
        if value == position.y {
            positionY = index
        }
    }
    return (position.x, positionY)
}

var board : [[Character]] = Array(repeating: Array(repeating: "-", count: 9), count: 9)

func setFigures(board: inout [[Character]], figure: ChessFigure) {
    let pos = charToInt(position: figure.position)
    board[pos.0][pos.1] = figure.icon.rawValue
}

func setAllFigures(board: inout [[Character]], arrayFigures: [ChessFigure]) {
    for i in arrayFigures {
        setFigures(board: &board, figure: i)
    }
}

func checkIcon(icon: Character) -> Bool {
    let arrayIcon : [Character] = ["♔", "♚", "♕", "♛", "♙", "♟", "♖", "♜", "♘", "♞", "♗", "♝"]
    var result = true
    for i in arrayIcon {
        if i == icon {
            result = false
        }
    }
    return result
}

func boardDrow(board: inout [[Character]]) {
    for i in 0..<board.count {
        for j in 0..<board[i].count {
            if checkIcon(icon: board[i][j]) {
                if (i+j) % 2 == 0 {
                    board[i][j] = "●"
                }
                else {
                    board[i][j] = "○"
                }
            }
            board[0][0] = " "
            board[1][0] = "1"
            board[2][0] = "2"
            board[3][0] = "3"
            board[4][0] = "4"
            board[5][0] = "5"
            board[6][0] = "6"
            board[7][0] = "7"
            board[8][0] = "8"
            board[0][1] = "a"
            board[0][2] = "b"
            board[0][3] = "c"
            board[0][4] = "d"
            board[0][5] = "e"
            board[0][6] = "f"
            board[0][7] = "g"
            board[0][8] = "h"
            print(board[i][j], terminator: " ")
        }
        print()
    }
}

func addFigure(board: inout [[Character]], figure: ChessFigure, newPosition: (x: Int, y: Character)) {
    let newPos = charToInt(position: newPosition)
    let oldPos = charToInt(position: figure.position)
    board[newPos.0][newPos.1] = figure.icon.rawValue
    board[oldPos.0][oldPos.1] = "-"
}

func move(board: inout  [[Character]], figure: ChessFigure, newPosition: (x: Int, y: Character)) {
    let newPos = charToInt(position: newPosition), oldPos = charToInt(position: figure.position)
    var moveI, moveJ: Int
    switch figure.name {
    case .King:
        moveI = abs(newPos.0 - oldPos.0) //0 || 1
        moveJ = abs(newPos.1 - oldPos.1) //0 || 1
        if  (moveI == 1 && moveJ == 1) || (moveI == 0 && moveJ == 1) || (moveI == 1 && moveJ == 0) {
            board[newPos.0][newPos.1] = figure.icon.rawValue
            board[oldPos.0][oldPos.1] = "-"
        }
    case .Queen:
        let sumOldPos = oldPos.0 + oldPos.1, disOldPos = oldPos.0 - oldPos.1
        let sumNewPos = newPos.0 + newPos.1, disNewPos = newPos.0 - newPos.1
        if (sumNewPos == sumOldPos || disNewPos == disOldPos) || (newPos.1 == oldPos.1 || newPos.0 == oldPos.0) {
            board[newPos.0][newPos.1] = figure.icon.rawValue
            board[oldPos.0][oldPos.1] = "-"
        }
    case .Pawn:
        moveI = abs(newPos.0 - oldPos.0) //1 || 2
        if  moveI == 1 || moveI == 2 {
            board[newPos.0][newPos.1] = figure.icon.rawValue
            board[oldPos.0][oldPos.1] = "-"
        }
    case .Rook:
        if (newPos.1 == oldPos.1) || (newPos.0 == oldPos.0) {
            board[newPos.0][newPos.1] = figure.icon.rawValue
            board[oldPos.0][oldPos.1] = "-"
        }
    case .Knight:
        moveI = abs(newPos.0 - oldPos.0) //1 || 2
        moveJ = abs(newPos.1 - oldPos.1) //1 || 2
        if moveI + moveJ == 3 {
            board[newPos.0][newPos.1] = figure.icon.rawValue
            board[oldPos.0][oldPos.1] = "-"
        }
    case .Bishop:
        let sumOldPos = oldPos.0 + oldPos.1, disOldPos = oldPos.0 - oldPos.1
        let sumNewPos = newPos.0 + newPos.1, disNewPos = newPos.0 - newPos.1
        if (sumNewPos == sumOldPos || disNewPos == disOldPos) {
            board[newPos.0][newPos.1] = figure.icon.rawValue
            board[oldPos.0][oldPos.1] = "-"
        }
    }
}

setAllFigures(board: &board, arrayFigures: arrayFigures)
boardDrow(board: &board)

print()
move(board: &board, figure: blackQueen, newPosition: (5,"g"))
boardDrow(board: &board)
