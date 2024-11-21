// MARK: home work
class Room {
    var height: Int
    var width: Int
    var board: [[Character]]
    private static let finalPoint : Character = "🟩"

    init(height: Int, width: Int) {
        let lastIndexI = width - 1
        let lastIndexJ = height - 1
        self.width = width
        self.height = height
        self.board = Array(repeating: Array(repeating: "⬜️", count: width), count: height)
        self.board[lastIndexJ-1][lastIndexI-1] = Room.finalPoint
        print("Цель игры:")
        print("Донести коробку со взрывчаткой до точки обезвреживания 🧨")
        print("Правила игры:")
        print("Не касайтесь бортиков, иначе произойдет взрыв, двигайтесь по полю используя команды:")
        print(".Top ⬆\n.Down ⬇\n.Left ⬅\n.Right ⮕\n")
    }
}


func checkPosition(x: inout Int, y: inout Int, room: Room) -> Bool {
    let lastIndexI = room.width - 1
    let lastIndexJ = room.height - 1
    var res = true
    if (x <= 0 || y <= 0) || (x >= lastIndexJ) || (y >= lastIndexI) {
        x = 1
        y = 1
        room.board[x][y] = "❌"
        res =  false
    }
    return res
}

class Person {
    var name : String
    var x : Int
    var y : Int
    private var count = 0
    
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
        
        func updateBoxPosition() {
            room.board[box.x][box.y] = "⬜️"
            if box.funcEditPoint(x: box.x, y: box.y, room: room) {
                if room.board[box.x][box.y] != "🎉" {
                    print("📩 Коробка двигается")
                }
                else {
                    print("Победа 📌")
                }
            } else {
                print("Коробка взорвалась 🧨")
            }
        }
        
        func moveTop(x: inout Int, y: Int, room: Room, box: Box) {
            if x - 1 == box.x && y == box.y {
                box.x = box.x - 1
                updateBoxPosition()
            }
            x -= 1
            count += 1
            print("\(count). Ход вверх")
        }
        
        func moveDown(x: inout Int, y: Int, room: Room, box: Box) {
            if x + 1 == box.x && y == box.y {
                box.x = box.x + 1
                updateBoxPosition()
            }
            x += 1
            count += 1
            print("\(count). Ход вниз")
        }
        
        func moveRight(x: Int, y: inout Int, room: Room, box: Box) {
            if y + 1 == box.y && x == box.x {
                box.y = box.y + 1
                updateBoxPosition()
            }
            y += 1
            count += 1
            print("\(count). Ход вправо")
        }
        
        func moveLeft(x: Int, y: inout Int, room: Room, box: Box) {
            if y - 1 == box.y && x == box.x {
                box.y = box.y - 1
                updateBoxPosition()
            }
            y -= 1
            count += 1
            print("\(count). Ход влево")
        }
        
        switch direction {
        case .Top: moveTop(x: &x, y: y, room: room, box: box)
        case .Down: moveDown(x: &x, y: y, room: room, box: box)
        case .Right: moveRight(x: x, y: &y, room: room, box: box)
        case .Left: moveLeft(x: x, y: &y, room: room, box: box)
        }
        
        if checkPosition(x: &self.x, y: &self.y, room: room) {
            room.board[self.x][self.y] = "🥷"
        } else {
            print("Персонаж \(room.board[self.x][self.y]) взорвался 🧨")
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
        
        func funcEditPoint(x: Int, y: Int, room: Room) -> Bool {
            var res = false
            if checkPosition(x: &self.x, y: &self.y, room: room) {
                room.board[x][y] = "📦"
                if x == room.height - 2 && y == room.width - 2 {
                    room.board[x][y] = "🎉"
                }
                res = true
            }
            return res
        }
    }
    
    init(name: String, x: Int, y: Int, room: Room) {
        self.name = name
        self.x = x
        self.y = y
        if checkPosition(x: &self.x, y: &self.y, room: room) {
            room.board[self.x][self.y] = "🥷"
        }
    }
}

func drowRoom(room: inout Room) {
    for i in 0..<room.board.count {
        for j in 0..<room.board[i].count {
            let lastIndexI = room.width - 1
            let lastIndexJ = room.height - 1
            let side : Character = "⬛️"
            room.board[0][j] = side
            room.board[i][0] = side
            room.board[i][lastIndexI] = side
            room.board[lastIndexJ][j] = side
            print(room.board[i][j], terminator: " ")
        }
        print()
    }
    print()
}

var room = Room(height: 10, width: 10)
let norikNolik = Person(name: "Norik aka Nolik", x: 5, y: 5, room: room)
let box = Person.Box(x: 5, y: 6, room: room)
drowRoom(room: &room)
norikNolik.move(direction: .Right, room: room, box: box)



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


 


