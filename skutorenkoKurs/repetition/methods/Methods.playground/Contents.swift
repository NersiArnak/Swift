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
        print("enum")
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
