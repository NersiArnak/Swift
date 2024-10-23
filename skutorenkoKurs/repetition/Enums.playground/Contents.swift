//cw
enum Direction : String {
    case Left = "Left!"
    case Right = "Right!"
}

enum Action {
    case Walk(meters: Int)
    case Run(meters: Int, speed: Double)
    case Stop
    case Turn(direction: Direction)
}

var action : Action = Action.Run(meters: 20, speed: 15)
action = Action.Stop
action = .Walk(meters: 100)
action = .Turn(direction: .Left)
//var dirRight = Direction(rawValue: "Right")!
//action = .Turn(direction: dirRight)

switch action {
case .Stop:
    print("Stop")
case .Walk(let meters) where meters < 100:
    print("shot walk")
case .Walk(let meters):
    print("long walk")
    
case .Run(let meters, let speed) where meters <= 100 &&  speed > 10:
    print("run \(meters) meters at \(speed) speed")
case .Turn(let dir) where dir == .Left:
    print("Turn left")
case .Turn(let dir) where dir == .Right:
    print("Turn Right")
default:
    break
}
print(Direction.Left.rawValue)

//hw
print("\n№1")



enum ChessFigure {
    case optionsFigure(type: TypeFigure, color: Color, x: Character, y: Int)
    
    enum Color : String {
        case White = "белый"
        case Black = "черный"
    }
    
    enum TypeFigure : String {
        case Pawn = "Пешка"
        case Knight = "Конь"
        case Bishop = "Слон"
        case Rook = "Ладья"
        case Queen = "Ферзь"
        case King = "Король"
    }
}

let Bishop = ChessFigure.optionsFigure(type: .Bishop, color: .White, x: "a", y: 1)

switch Bishop {
case let .optionsFigure(type, color, x, y):
    print("Фигура - \(type.rawValue), цвет: \(color.rawValue), x: \(x), y: \(y)")
default:
    break
}
