//cw
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

//var action : Action = Action.Run(meters: 20, speed: 15)
//action = Action.Stop
//action = .Walk(meters: 100)
//action = .Turn(direction: .Left)
//var dirRight = Direction(rawValue: "Right")!
//action = .Turn(direction: dirRight)

//switch action {
//case .Stop:
//    print("Stop")
//case .Walk(let meters) where meters < 100:
//    print("shot walk")
//case .Walk(let meters):
//    print("long walk")
//    
//case .Run(let meters, let speed) where meters <= 100 &&  speed > 10:
//    print("run \(meters) meters at \(speed) speed")
//case .Turn(let dir) where dir == .Left:
//    print("Turn left")
//case .Turn(let dir) where dir == .Right:
//    print("Turn Right")
//default:
//    break
//}
//print(Direction.Left.rawValue)

//hw
print("№1")
enum ChessFigure {
    case optionsFigure(type: TypeFigure, icon: Icon, color: Color, position: (x: Int, y: Character))
    
    enum Color : String {
        case White = "белый"
        case Black = "черный"
    }
    
    enum TypeFigure : String {
        case Pawn = "Пешка"
        case Knight = "Конь"
        case Bishop = "Слон"
        case Rook = "Ладья"
        case Queen = "Королева"
        case King = "Король"
    }
     
    enum Icon : Character {
        case PawnBlack = "♟"
        case PawnWhite = "♙"
        case KnightBlack = "♞"
        case KnightWhite = "♘"
        case BishopBlack = "♝"
        case BishopWhite = "♗"
        case RookBlack = "♜"
        case RookWhite = "♖"
        case QueenBlack = "♛"
        case QueenWhite = "♕"
        case KingBlack = "♚"
        case KingWhite = "♔"
    }
}


let kingBlack = ChessFigure.optionsFigure(type: .King, icon:   .KingBlack, color: .Black, position: (x: 7, y: "b"))
let kingWhite = ChessFigure.optionsFigure(type: .King, icon: .KingWhite, color: .White, position: (x: 2, y: "b"))
let queenWhite = ChessFigure.optionsFigure(type: .Queen, icon: .QueenWhite, color: .White, position: (x: 5, y: "e"))
let rookBlack = ChessFigure.optionsFigure(type: .Rook, icon: .RookBlack, color: .Black, position: (x: 7, y: "h"))
let pawnWhite = ChessFigure.optionsFigure(type: .Pawn, icon: .PawnWhite, color: .White, position: (x: 7, y: "g"))
let bishopBlack = ChessFigure.optionsFigure(type: .Bishop, icon: .BishopBlack, color: .Black, position: (x: 5, y: "e"))
let knightWhite = ChessFigure.optionsFigure(type: .Knight, icon: .KnightWhite, color: .White, position: (x: 3, y: "d"))

print("\n№2")
//let array = [kingBlack, kingWhite, queenWhite, rookBlack, pawnWhite, bishopBlack, knightWhite]
let array = [queenWhite]

func valueFigure(enumchik: ChessFigure) {
    switch enumchik {
    case let .optionsFigure(type, icon, color, (x,y)):
        print("Фигура - \(type.rawValue)\(icon.rawValue): цвет - \(color), координаты - (\(x)\(y))")
    }
}

func printAllFigures(array: [ChessFigure]) {
    for i in array {
        valueFigure(enumchik: i)
    }
}
printAllFigures(array: array)

print("\n№3")
var board : [[Character]] = Array(repeating: Array(repeating: " ", count: 9), count: 9)

func setFigure(board: inout [[Character]], figure: ChessFigure) {
    switch figure {
    case let .optionsFigure(_,icon, _, (x, y)):
        let alphabet = " abcdefgh"
        for (index, value) in alphabet.enumerated() {
            if value == y {
                board[x][index] = icon.rawValue
            }
        }
    }
}

func setAllFigures(board: inout [[Character]], array: [ChessFigure]) {
    for i in array {
        setFigure(board: &board, figure: i)
    }
}

func checkIcon(iconCheck: Character) -> Bool {
    let arrayIcon : [Character] = ["♟", "♙", "♞", "♘", "♝", "♗", "♜", "♖", "♛", "♕", "♚", "♔"]
    var result = true
    for i in arrayIcon {
        if iconCheck == i {
            result = false
            break
        }
    }
    return result
}


func drowBoard(board: inout [[Character]] ) {
    for i in 0..<board.count {
        for j in 0..<board[i].count {
            if checkIcon(iconCheck: board[i][j]) {
                if (i + j) % 2 == 1 {
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
setAllFigures(board: &board, array: array)
drowBoard(board: &board)

print("\n№4")

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

func moveFigure(board: inout [[Character]], figure: ChessFigure, newPosition: (x: Int, y: Character)) {
    let newPos = charToInt(position: newPosition)
    var moveI, moveJ: Int
    switch figure {
    case let .optionsFigure(type, icon, _, (x, y)) where type == .Pawn:
        let oldPos = charToInt(position: (x, y))
        moveI = abs(newPos.0 - oldPos.0) //1 || 2
        if  moveI == 1 || moveI == 2 {
            board[newPos.0][newPos.1] = icon.rawValue
            board[oldPos.0][oldPos.1] = "-"
        }
    case let .optionsFigure(type, icon, _, (x, y)) where type == .Rook:
        let oldPos = charToInt(position: (x, y))
        if (newPos.1 == oldPos.1) || (newPos.0 == oldPos.0) {
            board[newPos.0][newPos.1] = icon.rawValue
            board[oldPos.0][oldPos.1] = "-"
        }
    case let .optionsFigure(type, icon, _, (x, y)) where type == .King:
        let oldPos = charToInt(position: (x, y))
        moveI = abs(newPos.0 - oldPos.0) //0 || 1
        moveJ = abs(newPos.1 - oldPos.1) //0 || 1
        if  (moveI == 1 && moveJ == 1) || (moveI == 0 && moveJ == 1) || (moveI == 1 && moveJ == 0) {
            board[newPos.0][newPos.1] = icon.rawValue
            board[oldPos.0][oldPos.1] = "-"
        }
    case let .optionsFigure(type, icon, _, (x, y)) where type == .Bishop:
        let oldPos = charToInt(position: (x, y))
        let sumOldPos = oldPos.0 + oldPos.1 //Сумма старых
        let disOldPos = oldPos.0 - oldPos.1 //Разность старых
        let sumNewPos = newPos.0 + newPos.1 //Сумма новых
        let disNewPos = newPos.0 - newPos.1 //Разность новых
        if (sumNewPos == sumOldPos || disNewPos == disOldPos) {
            board[newPos.0][newPos.1] = icon.rawValue
            board[oldPos.0][oldPos.1] = "-"
        }
    case let .optionsFigure(type, icon, _, (x, y)) where type == .Knight:
        let oldPos = charToInt(position: (x, y))
        moveI = abs(newPos.0 - oldPos.0) //1 || 2
        moveJ = abs(newPos.1 - oldPos.1) //1 || 2
        if moveI + moveJ == 3 {
            board[newPos.0][newPos.1] = icon.rawValue
            board[oldPos.0][oldPos.1] = "-"
        }
    case let .optionsFigure(type, icon, _, (x, y)) where type == .Queen:
        let oldPos = charToInt(position: (x, y))
        let sumOldPos = oldPos.0 + oldPos.1 //Сумма старых
        let disOldPos = oldPos.0 - oldPos.1 //Разность старых
        let sumNewPos = newPos.0 + newPos.1 //Сумма новых
        let disNewPos = newPos.0 - newPos.1 //Разность новых
        if (sumNewPos == sumOldPos || disNewPos == disOldPos) || (newPos.1 == oldPos.1 || newPos.0 == oldPos.0) {
            board[newPos.0][newPos.1] = icon.rawValue
            board[oldPos.0][oldPos.1] = "-"
        }
    default:
        print("Неверный ход!")
    }
}

moveFigure(board: &board, figure: queenWhite, newPosition: (8, "о"))
drowBoard(board: &board)



