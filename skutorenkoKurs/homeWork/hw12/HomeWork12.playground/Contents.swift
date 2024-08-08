import SwiftUI
//HomeWork12

//print("\ntask1")
enum ColorFigures : String {
    case Black = "Черный"
    case White = "Белый"
}

enum NameFigures : String {
    case KingName = "Кароль"
    //королева
    case QueenName = "Каролева"
    //слон
    case BishopName = "Слоняра"
    //конь
    case KnightName = "Конь"
    //ладья
    case RookName = "Ладья"
    //пешка
    case PawnName = "Пешка"
}


enum ChessFigures {
    case King(name: NameFigures, color: ColorFigures, position: (Character, Int))
    case Queen(name: NameFigures, color: ColorFigures, position: (Character, Int))
    case Bishop(name: NameFigures, color: ColorFigures, position: (Character, Int))
    case Knight(name: NameFigures, color: ColorFigures, position: (Character, Int))
    case Rook(name: NameFigures, color: ColorFigures, position: (Character, Int))
    case Pawn(name: NameFigures, color: ColorFigures, position: (Character, Int))
    
}

let KingBlack = ChessFigures.King(name: NameFigures.KingName, color: .Black, position: ("D", 0))
let KingWhite = ChessFigures.King(name: NameFigures.KingName, color: .White, position: ("D", 2))
let RookWhite = ChessFigures.Rook(name: NameFigures.RookName, color: .White, position: ("G", 0))
let RookBlack = ChessFigures.Rook(name: NameFigures.RookName, color: .Black, position: ("B", 6))
let PawnBlack = ChessFigures.Pawn(name: NameFigures.PawnName, color: .Black, position: ("D", 6))
let QueenWhite = ChessFigures.Queen(name: NameFigures.QueenName, color: .White, position: ("F", 4))
let BishopWhite = ChessFigures.Bishop(name: NameFigures.BishopName, color: .White, position: ("C", 5))
let KnightBlack = ChessFigures.Knight(name: NameFigures.KnightName, color: .Black, position: ("D", 3))

print("\ntask1-2")
var arrayFigures = [KingBlack, KingWhite, PawnBlack, QueenWhite, BishopWhite, RookWhite, KnightBlack, RookBlack]

func printFigures(enumFigures: ChessFigures) {
    switch enumFigures {
    case let .King(name, color, position):
        print("Фигура - \(name.rawValue), \(color.rawValue), \(position)")
    case let .Queen(name, color, position):
        print("Фигура - \(name.rawValue), \(color.rawValue), \(position)")
    case let .Bishop(name, color, position):
        print("Фигура - \(name.rawValue), \(color.rawValue), \(position)")
    case let .Knight(name, color, position):
        print("Фигура - \(name.rawValue), \(color.rawValue), \(position)")
    case let .Rook(name, color, position):
        print("Фигура - \(name.rawValue), \(color.rawValue), \(position)")
    case let .Pawn(name, color, position):
        print("Фигура - \(name.rawValue), \(color.rawValue), \(position)")
    }
}

printFigures(enumFigures: KingBlack)

func printArrayFigures(masFigures: [ChessFigures]) {
    for i in masFigures {
        printFigures(enumFigures: i)
    }
}
printArrayFigures(masFigures: arrayFigures)

print("\ntask3")

var board = Array(repeating: Array(repeating: "⬛️", count: 8), count: 8)

func editResults(enumchik: (ChessFigures)) -> ((Int, Int), String, String) {
    var tuple : (abc:Int, onenine:Int) = (0,0)
    let str = "ABCDIFGH"
    var takeColor = " "
    var takeName = " "
    switch enumchik {
    case let .Bishop(name, color, position):
        takeName = name.rawValue
        takeColor = color.rawValue
        for (index, i) in str.enumerated(){
            if position.0 == i{
                tuple = (index, position.1)
            }
        }
    case let .King(name, color, position):
        takeName = name.rawValue
        takeColor = color.rawValue
        for (index, i) in str.enumerated(){
            if position.0 == i{
                tuple = (index, position.1)
            }
        }
    case let .Knight(name, color, position):
        takeName = name.rawValue
        takeColor = color.rawValue
        for (index, i) in str.enumerated(){
            if position.0 == i{
                tuple = (index, position.1)
            }
        }
    case let .Pawn(name, color, position):
        takeName = name.rawValue
        takeColor = color.rawValue
        for (index, i) in str.enumerated(){
            if position.0 == i{
                tuple = (index, position.1)
            }
        }
    case let .Queen(name, color, position):
        takeName = name.rawValue
        takeColor = color.rawValue
        for (index, i) in str.enumerated(){
            if position.0 == i{
                tuple = (index, position.1)
            }
        }
    case let .Rook(name, color, position):
        takeName = name.rawValue
        takeColor = color.rawValue
        for (index, i) in str.enumerated(){
            if position.0 == i{
                tuple = (index, position.1)
            }
        }
    }
    return (tuple, takeColor, takeName)
}

func printChessBoard(board: inout [[String]]) {
    for i in 0..<board.count {
        for j in 0..<board[i].count {
            print(board[i][j], terminator: " ")
        }
        print()
    }
}

func drowBoard(board: inout [[String]], figure: ChessFigures) -> [[String]]{
    for i in 0..<board.count {
        for j in 0..<board[i].count {
            let resultsConst = editResults(enumchik: figure)
            let takeTuple = resultsConst.0
            let takeColor = resultsConst.1
            let c0 = takeTuple.0
            let c1 = takeTuple.1
            if i == c1 && j == c0 {
                if takeColor == "Белый" {
                    board[i][j] = "🟩"
                }
                if takeColor == "Черный" {
                        board[i][j] = "🟥"
                }
            }
            else if (i + j) % 2 == 0 && board[i][j] != "🟩" && board[i][j] != "🟥" {
                board[i][j] = "⬜️"
            }
        }
    }
    return board
}

func locationChess(masEnum: [ChessFigures]) {
    var timeArray = [[String]]()
    for i in masEnum {
        timeArray = drowBoard(board: &board, figure: i)
    }
    printChessBoard(board: &timeArray)
}
locationChess(masEnum: arrayFigures)

print("\ntask4")
func calculationColors(c0: Int, c1: Int, mas: [[String]], tupleNewCoor: (Int, Int), takeColor: String) -> String {
    var c = "⬜️"
    for i in 0..<mas.count{
        for j in 0..<mas[i].count{
            if (c0 + c1) % 2 == 0 {
                board[c1][c0] = "⬜️"
            } else {
                board[c1][c0] = "⬛️"
            }
            if i == tupleNewCoor.0 && j == tupleNewCoor.1 {
                if takeColor == "Черный" {
                    board[i][j] = "🟥"
                    c = board[i][j]
                }
                else {
                    board[i][j] = "🟩"
                    c = board[i][j]
                }
            }
        }
    }
    return c
}

//let tupleСoordinates = (6, 2)
func changeСoordinates(enumchik: ChessFigures, tupleNewCoor: (Int, Int)) {
    for i in 0..<board.count {
        for j in 0..<board.count {
            let num0 = tupleNewCoor.0, num1 = tupleNewCoor.1, tupl = editResults(enumchik: enumchik)
            let takeName = tupl.2, takeColor = tupl.1
            let takeTuple = tupl.0
            let c0 = takeTuple.0, c1 = takeTuple.1
            if ((num0 >= board.count || num1 >= board.count) || (tupleNewCoor.0 == c1 && tupleNewCoor.1 == c0) || (num0 < 0 || num1 < 0)) {
                break
            }
            switch takeName {
            case "Пешка":
                let move = abs(tupleNewCoor.0 - c1)
                if tupleNewCoor.1 == c0 && (move == 1 || move == 2) {
                    calculationColors(c0: c0, c1: c1, mas: board, tupleNewCoor: tupleNewCoor, takeColor: takeColor)
                }
            case "Кароль", "Каролева":
                let moveI = abs(tupleNewCoor.0 - c1), moveJ = abs(tupleNewCoor.1 - c0)
                if (moveI == 1 || moveI == 0) && (moveJ == 1 || moveJ == 0) {
                    calculationColors(c0: c0, c1: c1, mas: board, tupleNewCoor: tupleNewCoor, takeColor: takeColor)
                }
            case "Слоняра":
                let moveAddition = abs(tupleNewCoor.0 + tupleNewCoor.1), moveSubtraction = abs(tupleNewCoor.0 - tupleNewCoor.1)
                if abs(c1 + c0) == moveAddition || abs(c1 - c0) == moveSubtraction {
                    calculationColors(c0: c0, c1: c1, mas: board, tupleNewCoor: tupleNewCoor, takeColor: takeColor)
                }
            case "Конь":
                let moveI = 1, moveJ = 2
                if abs(tupleNewCoor.0 - c1) == moveI && abs(tupleNewCoor.1 - c0) == moveJ || abs(tupleNewCoor.0 - c1) == moveJ && abs(tupleNewCoor.1 - c0) == moveI {
                    calculationColors(c0: c0, c1: c1, mas: board, tupleNewCoor: tupleNewCoor, takeColor: takeColor)
                }
            case "Ладья":
                if tupleNewCoor.0 != c1 && tupleNewCoor.1 != c0 { break }
                calculationColors(c0: c0, c1: c1, mas: board, tupleNewCoor: tupleNewCoor, takeColor: takeColor)
            default: break
            }
        }
    }
    printChessBoard(board: &board)
}
changeСoordinates(enumchik: RookBlack, tupleNewCoor: (5, 1))


//ClassWork12
//enum Direction : String {
//    case Left = "Left!"
//    case Right = "Right!"
//}
//
//enum Action {
//    case Walk(meters: Int)
//    case Run(meters: Int, speed: Double)
//    case Stop
//    case Turn(direction: Direction)
//}
//var action = Action.Run(meters: 20, speed: 15.0)
////action = .Stop
////action = .Walk(meters: 99)
////action = .Turn(direction: .Left)
//var direction = Direction(rawValue: "Right!")!
//action = .Turn(direction: direction)
//
//switch action {
//case .Stop:
//    print("Stop")
////case .Walk(let meters): print("walk \(meters) meters")
//case .Walk(let meters) where meters < 100:
//    print("short \(meters) meters")
//case .Walk(let meters):
//    print("long \(meters) meters")
//case .Run(let m, let s):
//    print("run \(m) meters with speed \(s)")
//case .Turn(let dir) where dir == .Left:
//    print("Turn left")
//case .Turn(let dir) where dir == .Right:
//    print("Turn right")
//    break
//default:
//    break
//}
//print(Direction.Left.rawValue)
//
//
////Урок от Вячеслава Билий
//enum Directions: String, CaseIterable {
//    case north
//    case south
//    case west
//    case east
//    
//    mutating func turn90clockWise() {
//        switch self {
//        case .north:
//            self = .east
//        case .east:
//            self = .south
//        case .west:
//            self = .north
//        case .south:
//            self = .west
//        }
//    }
//    
//}
//
//var directions = Directions.north
//directions = .east
//directions.turn90clockWise()
//
//for i in Directions.allCases {
//    print(i.rawValue, i)
//    var value = i.rawValue
//}
//
//var newEnum = Directions(rawValue: "west") // nil
//
//enum UserDirection {
//    case north(damage: Int, equpment: [String])
//    case south(health: Int, luck: Int)
//    case west(name: String)
//    case east(money: Double)
//    
//}
//
//var userDirection = UserDirection.north(damage: 40, equpment: ["hammer", "ak47"])
//
//print("\n")
//switch userDirection {
//case .north(let damage, let equpment):
//    print("North value = \(damage), \(equpment)")
//case .south:
//    print("Sorth")
//case .west(let name):
//    print("West name - \(name)")
//case .east:
//    print("East")
//}
//
//switch userDirection {
//case .north:
//    print("Замерзнуть")
//default: break
//}
//
//if case .north = userDirection {
//    print("Замерзнуть")
//}
//
////Recursive Enum
//indirect enum MessageType {
//    case image(UIImage)
//    case text(String)
//    case file(Data)
//    case reply(MessageType)
//}
//
//let message = MessageType.reply(MessageType.image(UIImage()))

/*Примеры из жизни
 
- Тип погоды (облачно, ясно, гроза, дождь)
- Состояние сообщения (прочитано, не прочитано, отправлено)
- Cтатус платежа (оплачено, ошибка(статус ошибки), обрабатывается)

*/


