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

class Room {
    var width: Int
    var height: Int
    var board: [[Character]]
    static let finalPoint : Character = "🟩"

    init(width: Int, height: Int) {
        let lastIndexI = width - 1
        let lastIndexJ = height - 1
        self.width = width
        self.height = height
        self.board = Array(repeating: Array(repeating: "⬜️", count: width), count: height)
        
        self.board[lastIndexI-1][lastIndexJ-1] = Room.finalPoint
    }
}


func checkPosition(x: inout Int, y: inout Int, room: Room) -> Bool {
    let lastIndexI = room.width - 1
    let lastIndexJ = room.height - 1
    var result = true
    if (x <= 0 || y <= 0) || (x >= lastIndexI || x >= lastIndexJ) || (y >= lastIndexI || y >= lastIndexJ)/* || room.board[x][y] != "⬜️"*/ {
        x
        y
        x = 1
        y = 1
        room.board[x][y] = "❌"
        result =  false
        
    }
    return result
}

    
class Person {
    var name : String
    var x : Int
    var y : Int
    enum Direction {
        case Top
        case Down
        case Right
        case Left
    }
    
    func move(direction: Direction, room: Room, box: Box) {
        room.board[self.x][self.y] = "⬜️"
        let lastIndexI = room.width - 1
        let lastIndexJ = room.height - 1
        switch direction {
        case .Top: if x - 1 == box.x && y == box.y{
            room.board[box.x][box.y] = "⬜️"
            box.x = box.x - 1
            box.funcEditPoint(x: box.x, y: box.y, room: room)
            x = x - 1;
        }
            else {
                x = x - 1
            }
        case .Down: if x + 1 == box.x && y == box.y {
            room.board[box.x][box.y] = "⬜️"
            box.x = box.x + 1
            box.funcEditPoint(x: box.x, y: box.y, room: room)
            x = x + 1
        }
            else {
                x = x + 1
            }
        case .Right: if y + 1 == box.y && x == box.x {
            room.board[box.x][box.y] = "⬜️"
            box.y = box.y + 1
            box.funcEditPoint(x: box.x, y: box.y, room: room)
            y = y + 1
        }
            else {
                y = y + 1
            }
        case .Left: if y - 1 == box.y && x == box.x {
            room.board[box.x][box.y] = "⬜️"
            box.y = box.y - 1
            box.funcEditPoint(x: box.x, y: box.y, room: room)
            y = y - 1
        }
            else {
                y = y - 1
            }
        }
        
        if checkPosition(x: &self.x, y: &self.y, room: room) {
            room.board[self.x][self.y] = "🤖"
        }
        
    }
    
    class Box {
        var x: Int
        var y: Int
    
        init(x: Int, y: Int, room: Room) {
            self.x = x
            self.y = y
            if checkPosition(x: &self.x, y: &self.y, room: room) {
                room.board[self.x][self.y] = "📦"
            }
        }
        
        func funcEditPoint(x: Int, y: Int, room: Room) {
            if checkPosition(x: &self.x, y: &self.y, room: room) {
                self.x
                self.y
                room.board[x][y] = "📦"
                if x == room.width - 2 && y == room.height - 2 {
                    room.board[x][y] = "🎉"
                }
            }
        }
    }
    
    init(name: String, x: Int, y: Int, room: Room) {
        self.name = name
        self.x = x
        self.y = y
        if checkPosition(x: &self.x, y: &self.y, room: room) {
            room.board[self.x][self.y] = "🤖"
        }
    }
}

func printPersonInRoom(room: inout Room, person: Person) {
    for i in 0..<room.board.count {
        for j in 0..<room.board[i].count {
            let lastIndexI = room.width - 1
            let lastIndexJ = room.height - 1
            let side : Character = "⬛️"
            room.board[0][j] = side
            room.board[i][0] = side
            room.board[lastIndexI][j] = side
            room.board[i][lastIndexJ] = side
            print(room.board[i][j], terminator: " ")
        }
        print()
    }
    print()
}

var room8x8 = Room(width: 8, height: 8)
var superMan = Person(name: "SuperMan", x: 3, y: 2, room: room8x8)
var box = Person.Box(x: 3, y: 4, room: room8x8)
printPersonInRoom(room: &room8x8, person: superMan)

