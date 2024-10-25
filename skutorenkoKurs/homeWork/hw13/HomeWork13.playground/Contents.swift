//HomeWork13
struct Student {
    var firstName : String
    var surName : String
    var lastName : String
    var yearOfBirth : Int
    var gpa : Double
}

var stArnak = Student(firstName: "Arnak", surName: "Nersisyan", lastName: "Garikovich", yearOfBirth: 2004, gpa: 4.2)
let stKodi = Student(firstName: "Kodi", surName: "Nersisyan", lastName: "Arnakovich", yearOfBirth: 2024, gpa: 5.0)
let stLina = Student(firstName: "Angelina", surName: "Nersisyan", lastName: "Olegovna", yearOfBirth: 2005, gpa: 5.0)
var stArchi = Student(firstName: "Archi", surName: "Nersisyan", lastName: "Garikovich", yearOfBirth: 2023, gpa: 5.0)
var masStudent = [stArnak, stKodi, stLina, stArchi]
print("task1\nЖурнал студентов")
for i in 0..<masStudent.count {
    print("\(i+1) - \(masStudent[i])")
}
print("\ntask2\nОтсортированный журнал студентов")
let sortedMasGPA = masStudent.sorted(by: {$0.gpa > $1.gpa})
func printStudent(mas: [Student]) {
    for i in 0..<mas.count {
        print("\(i+1) - \(mas[i])")
    }
}
printStudent(mas: sortedMasGPA)

print("\ntask3")
let sortedMasSurName = masStudent.sorted(by: {
    if $0.surName != $1.surName {
        return $0.surName < $1.surName
    }
    else if $0.surName == $1.surName {
        return $0.firstName < $1.firstName
    }
    else {
        return $0.surName < $1.surName
    }
})
printStudent(mas: sortedMasSurName)

print("\ntask4")
var newMas = masStudent
newMas[0].gpa = 10
printStudent(mas: masStudent)
print("Измененное значение(gpa):")
printStudent(mas: newMas)

print("\ntask5.1")
class StudentClassHW {
    var firstName : String
    var surName : String
    var lastName : String
    var yearOfBirth : Int
    var gpa : Double
    
    init(firstName: String, surName: String, lastName: String, yearOfBirth: Int, gpa: Double) {
        self.firstName = firstName
        self.surName = surName
        self.lastName = lastName
        self.yearOfBirth = yearOfBirth
        self.gpa = gpa
    }
    
}
var stArg = StudentClassHW(firstName: "Arg", surName: "Nersisyan", lastName: "Garikovich", yearOfBirth: 1998, gpa: 4.3)

var stSiran = StudentClassHW(firstName: "Siran", surName: "Tovmasyan", lastName: "Surenovna", yearOfBirth: 1976, gpa: 5.0)
var stGarik = StudentClassHW(firstName: "Garik", surName: "Nersisyan", lastName: "Lendrushevich", yearOfBirth: 1976, gpa: 5.0)

let masStudentClass = [stArg, stSiran, stGarik]
                       
func printClass(masClass: [StudentClassHW]) {
    for i in 0..<masClass.count {
        print("\(i+1) - Имя: \(masClass[i].firstName), Фамилия: \(masClass[i].surName), Отчестов: \(masClass[i].lastName), год рождения: \(masClass[i].yearOfBirth), средний балл: \(masClass[i].gpa)")
    }
}
printClass(masClass: masStudentClass)

print("\ntask5.2")
let sortedClassGPA = masStudentClass.sorted(by: {$0.gpa > $1.gpa})
printClass(masClass: sortedClassGPA)

print("\ntask5.3")
let sordedClassSurname = masStudentClass.sorted(by: {
    if $0.surName == $1.surName {
        return $0.firstName < $1.firstName
    }
    else {
        return $0.surName < $1.surName
    }
})
printClass(masClass: sordedClassSurname)

print("\ntask5.4")
var editClass = masStudentClass
editClass[0].gpa = 10
print("NewGPA - \(editClass[0].gpa),\nOldGPA - \(masStudentClass[0].gpa)")

print("\ntask6")
struct FigureStruct {
    var King = "Король"
    var Queen = "Королева"
    var Rook = "Ладья"
    var Bishop = "Слоняра"
    var Knight = "Конь"
    var Pawn = "Пешка"
}

struct Image {
    var KingBlack = "♚"
    var QueenBlack = "♛"
    var RookBlack = "♜"
    var BishopBlack = "♝"
    var KnightBlack = "♞"
    var PawnBlack = "♟"

    var KingWhite = "♔"
    var QueenWhite = "♕"
    var RookWhite = "♖"
    var BishopWhite = "♗"
    var KnightWhite = "♘"
    var PawnWhite = "♙"
    
}

let nameFigure = FigureStruct()
let imageFigure = Image()

struct Characteristics {
    var nameFigure : String
    var imageFigure : String
    var position : (Int, String)
}

let pawnBlack1 = Characteristics(nameFigure: nameFigure.Pawn, imageFigure: imageFigure.PawnBlack, position: (2, "A"))
let pawnBlack2 = Characteristics(nameFigure: nameFigure.Pawn, imageFigure: imageFigure.PawnBlack, position: (2, "B"))
let pawnBlack3 = Characteristics(nameFigure: nameFigure.Pawn, imageFigure: imageFigure.PawnBlack, position: (2, "C"))
let pawnBlack4 = Characteristics(nameFigure: nameFigure.Pawn, imageFigure: imageFigure.PawnBlack, position: (2, "D"))
let pawnBlack5 = Characteristics(nameFigure: nameFigure.Pawn, imageFigure: imageFigure.PawnBlack, position: (2, "E"))
let pawnBlack6 = Characteristics(nameFigure: nameFigure.Pawn, imageFigure: imageFigure.PawnBlack, position: (2, "F"))
let pawnBlack7 = Characteristics(nameFigure: nameFigure.Pawn, imageFigure: imageFigure.PawnBlack, position: (2, "G"))
let pawnBlack8 = Characteristics(nameFigure: nameFigure.Pawn, imageFigure: imageFigure.PawnBlack, position: (2, "H"))
let rookBlackA = Characteristics(nameFigure: nameFigure.Rook, imageFigure: imageFigure.RookBlack, position: (1, "A"))
let rookBlackH = Characteristics(nameFigure: nameFigure.Rook, imageFigure: imageFigure.RookBlack, position: (1, "H"))
let knightBlackB = Characteristics(nameFigure: nameFigure.Knight, imageFigure: imageFigure.KnightBlack, position: (1, "B"))
let knightBlackG = Characteristics(nameFigure: nameFigure.Knight, imageFigure: imageFigure.KnightBlack, position: (1, "G"))
let bishopBlackC = Characteristics(nameFigure: nameFigure.Bishop, imageFigure: imageFigure.BishopBlack, position: (1, "C"))
let bishopBlackF = Characteristics(nameFigure: nameFigure.Bishop, imageFigure: imageFigure.BishopBlack, position: (1, "F"))
let kingBlackE = Characteristics(nameFigure: nameFigure.King, imageFigure: imageFigure.KingBlack, position: (5, "E"))
let queenBlackD = Characteristics(nameFigure: nameFigure.Queen, imageFigure: imageFigure.QueenBlack, position: (1, "D"))

let pawnWhite1 = Characteristics(nameFigure: nameFigure.Pawn, imageFigure: imageFigure.PawnWhite, position: (7, "A"))
let pawnWhite2 = Characteristics(nameFigure: nameFigure.Pawn, imageFigure: imageFigure.PawnWhite, position: (7, "B"))
let pawnWhite3 = Characteristics(nameFigure: nameFigure.Pawn, imageFigure: imageFigure.PawnWhite, position: (7, "C"))
let pawnWhite4 = Characteristics(nameFigure: nameFigure.Pawn, imageFigure: imageFigure.PawnWhite, position: (7, "D"))
let pawnWhite5 = Characteristics(nameFigure: nameFigure.Pawn, imageFigure: imageFigure.PawnWhite, position: (7, "E"))
let pawnWhite6 = Characteristics(nameFigure: nameFigure.Pawn, imageFigure: imageFigure.PawnWhite, position: (7, "F"))
let pawnWhite7 = Characteristics(nameFigure: nameFigure.Pawn, imageFigure: imageFigure.PawnWhite, position: (7, "G"))
let pawnWhite8 = Characteristics(nameFigure: nameFigure.Pawn, imageFigure: imageFigure.PawnWhite, position: (7, "H"))
let rookWhiteA = Characteristics(nameFigure: nameFigure.Rook, imageFigure: imageFigure.RookWhite, position: (8, "A"))
let rookWhiteH = Characteristics(nameFigure: nameFigure.Rook, imageFigure: imageFigure.RookWhite, position: (8, "H"))
let knightWhiteB = Characteristics(nameFigure: nameFigure.Knight, imageFigure: imageFigure.KnightWhite, position: (8, "B"))
let knightWhiteG = Characteristics(nameFigure: nameFigure.Knight, imageFigure: imageFigure.KnightWhite, position: (8, "G"))
let bishopWhiteC = Characteristics(nameFigure: nameFigure.Bishop, imageFigure: imageFigure.BishopWhite, position: (8, "C"))
let bishopWhiteF = Characteristics(nameFigure: nameFigure.Bishop, imageFigure: imageFigure.BishopWhite, position: (5, "D"))
let kingWhiteE = Characteristics(nameFigure: nameFigure.King, imageFigure: imageFigure.KingWhite, position: (8, "E"))
let queenWhiteD = Characteristics(nameFigure: nameFigure.Queen, imageFigure: imageFigure.QueenWhite, position: (8, "D"))


let arrayFigures = [pawnBlack1,pawnBlack2,pawnBlack3,pawnBlack4,pawnBlack5,pawnBlack6,pawnBlack7,pawnBlack8, rookBlackA, rookBlackH, knightBlackB, knightBlackG, bishopBlackC, bishopBlackF, kingBlackE, queenBlackD, pawnWhite1,pawnWhite2,pawnWhite3,pawnWhite4,pawnWhite5,pawnWhite6,pawnWhite7,pawnWhite8, rookWhiteA, rookWhiteH, knightWhiteB, knightWhiteG, bishopWhiteC, bishopWhiteF, kingWhiteE, queenWhiteD]

func addFigure(figure: Characteristics) {
    print("Фигура: \(figure.nameFigure), цвет: \(figure.imageFigure), позиция: \(figure.position)")
}
func masFigure(mas: [Characteristics]) {
    for i in mas {
        addFigure(figure: i)
    }
}
masFigure(mas: arrayFigures)

var masChess = Array(repeating: Array(repeating: "●", count: 9), count: 9)

func chessABC(masChess: inout [[String]]) {
    masChess[0][0] = "*"
    masChess[0][1] = "A"
    masChess[0][2] = "B"
    masChess[0][3] = "C"
    masChess[0][4] = "D"
    masChess[0][5] = "E"
    masChess[0][6] = "F"
    masChess[0][7] = "G"
    masChess[0][8] = "H"
    masChess[1][0] = "1"
    masChess[2][0] = "2"
    masChess[3][0] = "3"
    masChess[4][0] = "4"
    masChess[5][0] = "5"
    masChess[6][0] = "6"
    masChess[7][0] = "7"
    masChess[8][0] = "8"
}

func printChess(masChess: inout [[String]]) {
    chessABC(masChess: &masChess)
    for i in 0..<masChess.count {
        for j in 0..<masChess[i].count {
            print(masChess[i][j], terminator: " ")
        }
        print(" ")
    }
}

func addFigures(masChess: inout [[String]], figure: Characteristics) {
    let masABC = ["A", "B", "C", "D", "E", "F", "G", "H"]
    var c0 = figure.position.0 //7
    var c1 = figure.position.1 //D
    var index = 0
    var time = 0
    for i in masABC {
        time += 1
        if c1 == i {
            index = time
        }
    }
    
    for i in 0..<masChess.count {
        for j in 0..<masChess[i].count {
            masChess[c0][index] = figure.imageFigure
            if (i + j) % 2 == 0 && masChess[i][j] != "♚" &&  masChess[i][j] != "♛" && masChess[i][j] != "♜" && masChess[i][j] !=  "♝" && masChess[i][j] !=  "♞" && masChess[i][j] != "♟" && masChess[i][j] != "♔" && masChess[i][j] != "♕" && masChess[i][j] != "♖" && masChess[i][j] != "♗" && masChess[i][j] != "♘" && masChess[i][j] !=  "♙" {
                masChess[i][j] = "○"
            }
        }
    }
}
//addFigures(masChess: &masChess, figure: pawnBlackA)

for i in arrayFigures {
    addFigures(masChess: &masChess, figure: i)
}
printChess(masChess: &masChess)

func position(masChess: inout [[String]], c0: Int, oldC0: Int, indexC1: Int, index: Int) {
    for i in 0..<masChess.count {
        for j in 0..<masChess[i].count {
            if i == oldC0 && j == indexC1 {
                if (i + j) % 2 == 0 {
                    masChess[i][j] = "○"
                }
                else {
                    masChess[i][j] = "●"
                }
            }
        }
    }
}

func assignment(masABS: [String], time: inout Int, timeOldC1: inout Int, c1: String, index: inout Int, indexC1: inout Int, oldC1: String) {
    for i in masABS {
        time += 1
        timeOldC1 += 1
        if c1 == i {
            index = time
        }
        if oldC1 == i {
            indexC1 = timeOldC1
        }
    }
}

func newPosition(masChess: inout [[String]], figure: Characteristics, newPosition: (Int, String )) {
    for i in 0..<masChess.count {
        for j in 0..<masChess[i].count {
            let masABC = ["A", "B", "C", "D", "E", "F", "G", "H"]
            let oldC0 = figure.position.0
            let oldC1 = figure.position.1
            var c0 = newPosition.0
            var c1 = newPosition.1
            var index = 0, indexC1 = 0, time = 0, timeOldC1 = 0
            var takeName = figure.nameFigure
            assignment(masABS: masABC, time: &time, timeOldC1: &timeOldC1, c1: c1, index: &index, indexC1: &indexC1, oldC1: oldC1)
            switch takeName {
            case "Пешка":
                let move = abs(c0 - oldC0)
                if index == indexC1 && (move == 1 || move == 2) {
                    position(masChess: &masChess, c0: c0, oldC0: oldC0, indexC1: indexC1, index: index)
                }
            case "Король", "Королева":
                let moveI = abs(c0 - oldC0), moveJ = abs(index - indexC1)
                if (moveI == 1 || moveI == 0) && (moveJ == 1 || moveJ == 0) {
                    position(masChess: &masChess, c0: c0, oldC0: oldC0, indexC1: indexC1, index: index)
                }
            case "Слоняра":
                let moveAddition = abs(c0 + index), moveSubtraction = abs(c0 - index)
                if abs(oldC0 + indexC1) == moveAddition || abs(oldC0 - indexC1) == moveSubtraction {
                    position(masChess: &masChess, c0: c0, oldC0: oldC0, indexC1: indexC1, index: index)
                }
            case "Конь":
                let moveI = 1, moveJ = 2
                if abs(oldC0 - c0) == moveI && abs(indexC1 - index) == moveJ || abs(oldC0 - c0) == moveJ && abs(indexC1 - index) == moveI {
                    position(masChess: &masChess, c0: c0, oldC0: oldC0, indexC1: indexC1, index: index)
                }
            case "Ладья":
                if c0 != oldC0 && index != indexC1 { break }
                position(masChess: &masChess, c0: c0, oldC0: oldC0, indexC1: indexC1, index: index)
    
            default: break
            }
            if i == c0 && j == index {
                masChess[i][j] = figure.imageFigure
            }
        }
    }
}
newPosition(masChess: &masChess, figure: bishopWhiteF, newPosition: (2, "H"))
print("\n")
printChess(masChess: &masChess)

//ClassWork13
//let student1 = (name: "Arnak", age: 20)
//let student2 = (name: "Bob", age: 22)
//let student3 = (nam: "Sam", ag: 23)

//class StudentClass {
//    var name : String
//    var age : Int
//    
//    init() {
//        name = "No name"
//        age = 20
//    }
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//}
//
//struct StudentStruct {
//    var name : String
//    var age : Int
//}
//
//func addOneYear(student: StudentClass) {
//    student.age = student.age + 1
//}
//
//func addOneYear(student: inout StudentStruct) {
//    student.age = student.age + 1
//}
//
//
//let stClass1 = StudentClass(name: "Bob", age: 18)
//stClass1.name = "Beb"
//stClass1.age = 22
//
//var stStruct1 = StudentStruct(name: "Sam", age: 24)
//print(stStruct1)
//stStruct1.age = 22
//
//var stStruct2 = stStruct1
//print(stStruct2.age)
//stStruct2.age = 25
//print(stStruct2, stStruct1)
//
//var stClass2 = stClass1
//stClass2.age = 20
//stClass2.name = "aaa"
//print(stClass2.age)
//print(stClass1.age)
//
//print(stStruct1)
//addOneYear(student: &stStruct1)
//print(stStruct1)
//addOneYear(student: stClass1)
//print(stClass1.age)
//
//var arrayStruct = [stStruct1]
//arrayStruct[0].age = 50
//print(stStruct1)
//var arrayClass = [stClass1]
//arrayClass[0].age = 50
//print(stClass1.age)


//Biliy
//enum SomeType {
//    case юг
//    case запад
//    case север
//    case восток
//        
//    mutating func myFunc() {
//        self = .восток
//    }
//}
//struct UserStruct {
//    var name: String
//    
//    func printName() {
//        print(self.name)
//    }
//    
//    mutating func changeName(newName: String) {
//        self.name = newName
//    }
//}
//
//class UserClass {
//    struct MyStruct {
//        var abc: String
//    }
//    var name: String = " "
//    var myEnum: SomeType = .восток
//    var myStruct: MyStruct = MyStruct(abc: "dsa")
//    
//    func printName() {
//        print(self.name)
//    }
//    
//    func changeName(newName: String) {
//        self.name = newName
//    }
//}
//
//let userStruct = UserStruct(name: "Slava")
//userStruct.printName()
//let userStruct1 = UserStruct(name: "Ваня")
//userStruct1.printName()
//let userClass = UserClass()
//
//let someConstant: UserClass.MyStruct
//
//
//let userStruct2 = UserStruct(name: "222")
//var userStruct3 = userStruct2
//userStruct3.name = "333"
//print(userStruct2.name)
//print(userStruct3.name)
//
//
//let userClass2 = UserClass()
//userClass2.name = "222"
//var userClass3 = userClass2
//userClass3.name = "333"
//userClass2.name
//print(userClass3.name)
//
//func changeUser(user: UserClass) {
//    user.name = "444"
//}
//changeUser(user: userClass3)
//
//print(userClass2.name)
//print(userClass3.name)
