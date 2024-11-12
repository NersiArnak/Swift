// MARK: class work
struct Point {
    var x: Int
    var y: Int
    
    mutating func moveBy(x: Int, andY: Int) {
        self.x += x
        self.y += andY
    }
//    mutating func moveBy(x: Int, andY: Int) {
//        self = Point(x: self.x + x, y: self.y + y)
//    }
}

enum Color {
    static func numberOfElements() -> Int {
        self.printFunc()
        return 2
    }
    
    case White
    case Black
    
    mutating func invert()  {
        if self == Color.White {
            self = Color.Black
        }
        else {
            self = Color.White
        }
    }
    
    static func printFunc() {
        //print("enum")
    }
    
}

var c = Color.White
c.invert()
c.invert()
Color.numberOfElements()

//func move(point: inout Point, byX: Int, andY: Int) -> Point {
//    point.x += byX
//    point.y += andY
//    return point
//}

var p = Point(x: 1, y: 1)

p.moveBy(x: 2, andY: 3)

// MARK: home work
print("\n№1")

struct Room {
    var width: Int
    var height: Int
    var board: [[Character]]
    
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
        self.board = Array(repeating: Array(repeating: "⬜️", count: width), count: height)
    }
}

class Person {
    var name : String
    var x : Int {
        didSet {
            if x == 0 {
                print("Не выходите за рамки!")
                return x = oldValue
            }
        }
    }
    var y : Int {
        didSet {
            if y == 0 {
                return y = oldValue
            }
        }
    }
    
    enum Direction {
        case Top
        case Down
        case Right
        case Left
    }
    
    func move(direction: Direction) {
        switch direction {
        case .Top: x = x - 1
        case .Down: x = x + 1
        case .Right: y = y + 1
        case .Left: y = y - 1
        }
    }
    
    init(name: String, x: Int, y: Int) {
        self.name = name
        self.x = x
        self.y = y
    }
}

func printPersonInRoom(room: inout Room, person: Person) {
    for i in 0..<room.board.count {
        for j in 0..<room.board[i].count {
            let lastIndexI = room.board[i].count
            let lastIndexJ = room.board[j].count
            let side : Character = "⬛️"
            let finalPoint : Character = "🟩"
            room.board[0][j] = side
            room.board[i][0] = side
            room.board[lastIndexI-1][j] = side
            room.board[i][lastIndexJ-1] = side
            room.board[lastIndexI-2][lastIndexJ-2] = finalPoint
            print(room.board[i][j], terminator: " ")
            room.board[person.x][person.y] = "🦸‍♂️"
        }
        print()
    }
}

var room8x8 = Room(width: 8, height: 8)
let superMan = Person(name: "SuperMan", x: 5, y: 5)
superMan.move(direction: .Top)
superMan.move(direction: .Right)
superMan.move(direction: .Top)
superMan.move(direction: .Top)
superMan.move(direction: .Left)
superMan.move(direction: .Left)
printPersonInRoom(room: &room8x8, person: superMan)



