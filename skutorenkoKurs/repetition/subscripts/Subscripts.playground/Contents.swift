// MARK: class work
let array = ["a", "b", "c"]
array[0]
array[1]
array[2]

struct Family {
    var father = "Father"
    var mother = "Mother"
    var kids = ["Kid1", "Kid2", "Kid3"]
    
    var count : Int {
//        get {
//            return 2 + kids.count
//        }
        2 + kids.count
    }
    
    subscript(index: Int) -> String? {
        get {
            switch index {
            case 0: return father
            case 1: return mother
            case 2..<(2 + kids.count): return kids[index - 2]
            default: return nil
            }
        }
        set {
            let value = newValue ?? ""
            switch index {
            case 0: return father = value
            case 1: return mother = value
            case 2..<(2 + kids.count): return  kids[index - 2] = value
            default: break
            }
        }
    }
    
    subscript(index: Int, suffix: String) -> String? {
        var name = self[index] ?? ""
        name += " " + suffix
        return name
    }
}

var family = Family()

family.father
family.mother
family.count

family[0]
family[1]
family[2]
family[3]
family[4]

family[0] = "Daddy"
family[1] = "Mommy"
family[2] = "Buddy"
family[2, "the great"]

struct Field {
    var dict : [String: String] = [:]
    
    func keyForColumn(column: String, row: Int) -> String {
        return column + String(row)
    }
    
    subscript (column: String, row: Int) -> String? {
        get {
            return dict[keyForColumn(column: column, row: row)]
        }
        set {
            dict[keyForColumn(column: column, row: row)] = newValue
        }
    }
}

var field = Field()
field["a", 5]

//MARK: home work
print("№1 game - chess\n")
struct GameChess {
    private func letterToNum(line: Character) -> (value: Int, count: Int) {
        let alphabet = "abcdefgh"
        var num = 0
        var index = 1
        var count = alphabet.count
        for i in alphabet {
            if i == Character(line.lowercased()) {
                num = index
            }
        }
        return (num, count)
    }
    
    enum Color : String {
        case white = "White"
        case black = "Black"
    }
    
    subscript(line: Character, column: Int) -> String? {
        var color = Color.black
        let newLine = letterToNum(line: line).value
        let count = letterToNum(line: line).count
        if column > count || column <= 0 {
            return nil
        }
        
        if (newLine + column) % 2 == 0 {
            color = Color.white
        }
        return color.rawValue
    }

}

var point = GameChess()
point["A", 2]

print("№2 game - tic tac toe")
class TicTacToe {
    var height : Int
    var width : Int
    var board : [[Character]]
    
    
    init(height: Int, width: Int) {
        self.height = height
        self.width = width
        self.board = Array(repeating: Array(repeating: "⬜️", count: width), count: height)
    }
    
    func drowPrint(board: inout [[Character]]) {
        let lastHeight = height - 1
        let lastWidth = width - 1
        let side : Character = "⬛️"
        for i in 0..<board.count {
            for j in 0..<board[i].count {
                board[0][j] = side
                board[i][0] = side
                board[lastHeight][j] = side
                board[i][lastWidth] = side
                print(board[i][j], terminator: " ")
            }
            print()
        }
    }
    
    enum Value : Character {
        case empty = "⬜️"
        case cross = "❌"
        case circle = "⭕️"
    }
    
    subscript(x: Int, y: Int, value: Value) -> Character? {
        let lastHeight = height - 1
        let lastWidth = width - 1
        if x < 0 || x > lastHeight || y < 0 || y > lastWidth {
            print("[\(x),\(y)] - неверное значение")
            return nil
        }
        if board[x][y] != "⬜️" {
            print("Клетка занята")
            return nil
        }
        else {
            switch value {
                case .empty:
                board[x][y] = value.rawValue
            case .cross:
                board[x][y] = value.rawValue
            case .circle:
                board[x][y] = value.rawValue
            }
        }
        return board[x][y]
    }
}

let board = TicTacToe(height: 8, width: 8)
board[10, 2, .cross]
board[3, 2, .cross]
board[1, 2, .circle]
board[1, 2, .circle]
board.drowPrint(board: &board.board)