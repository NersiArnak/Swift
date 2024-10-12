//HomeWork10
print("task1")
func str1() -> String {
    return "Hi"
}

func str2(name: String) -> String {
    return name
}

func str3() -> String {
    return ", i love u "
}

func str4() -> String {
    return "\u{1F496}"
}
print("\(str1())\(str2(name: " Arnak"))\(str3())\(str4())")

print("\ntask2")
func gameChess(char: String, number: Int) -> (String, Int, String){
    var color = ""
    let masChar = ["a", "b", "c", "d", "e", "f", "g", "h"]
    for (index, i) in masChar.enumerated() {
        if char == i {
            if (index + number) % 2 == 0 {
                color = "white"
            }
            else {
                color = "black"
            }
        } else {
            break
        }
    }
    return (char, number, 
            color)
}

let resultsGameChess = gameChess(char: "a", number: 4)
print(resultsGameChess)

print("\ntask3")
var array = ["i", "h", "c", "r", "A"]

func masReverse(mas: [String]) -> [String] {
    var arrayReverse = [String]()
    for i in mas.reversed() {
        arrayReverse += [i]
    }
    return arrayReverse
}

print(masReverse(mas: array))


print("\ntask4")
var array2 = ["i", "h", "c", "r", "A"]
var arrayReverse = [String]()

func masReverse2(_ mas: inout [String], _ masReverse: inout [String]) -> [String] {
    for i in mas.reversed() {
        masReverse += [i]
    }
    return masReverse
}
print(masReverse2(&array2, &arrayReverse))

print("\ntask5")


//let abc = "Arnak25"
//
//let dict = ["0":"ziro", "1":"one", "2":"two", "3":"three", "4":"fout", "5":"five", "6":"six", "7":"seven", "8":"eight", "9":"nine"]
//
//var timeC = " "
//for i in abc {
//    if i == "2" || i == "5" {
//        var cc : String = String(i)
//        for e in dict {
//            if e.key == cc {
//                let jora = e.value
//                timeC.append(jora)
//                
//            }
//
//        }
//    }
//    else {
//        timeC.append(i)
//    }
//}
//print(timeC)

var text = "I Loved you: love is still, 1 perhaps, My soul has not completely 25 died out; But don't let it bother you anymore; I don't want to make you sad."

func convertor(char: Character, mas: [String: String]) -> String {
    var timeLet = " "
    for e in mas {
        if e.key == String(char) {
            timeLet = e.value
        }
    }
    return timeLet
}

func edidStr(str: inout String) -> String {
    let strNumbers = ["0":"ziro", "1":"one", "2":"two", "3":"three", "4":"fout", "5":"five", "6":"six", "7":"seven", "8":"eight", "9":"nine"]
    
    var newStr = ""
    for var i in str {
        switch i {
        case "a", "e", "i", "o", "u", "y":
            i = Character(i.uppercased())
            newStr.append(i)
        case "B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Z":
            i = Character(i.lowercased())
            newStr.append(i)
        case ",", "!", ".", ";", ":":
            i = " "
            newStr.append(i)
        case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
            let timeLet =  convertor(char: i, mas: strNumbers)
            newStr.append(timeLet)
        default:
            newStr.append(i)
        }
    }
    return newStr
}
print(edidStr(str: &text))

//Рекурсия
func fact(number: Int) -> Int{
    
    if number <= 1 {
        return 1
    }
    else {
        return number * fact(number: number - 1)
    }
}
fact(number: 5)


//ClassWork10
//func calcuelateMky(var wallet: [Int]) {
//    var sum = 0
//    for i in wallet {
//        sum += i
//    }
//    print(sum)
//}
//
////let wallet = Array(repeating: 2, count: 100)
//let mas = [100, 200, 500, 1000]
//
//calcuelateMky(wallet: mas)
//
//func calculateMky(_ mky: [Int], _ type: Int? = nil) -> (Int, Int) {
//    var sum = 0
//    var count = 0
//    for value in mky {
//        
//        if (type == nil) || (value == type!) {
//            sum += value
//            count += 1
//        }
//
//    }
//    return (sum, count)
//}
//
//func calcMky(_ range: Int...) -> Int {
//    
//    var sum = 0
//    for i in range {
//        sum += i
//    }
//    return sum
//}
//
//
//let wallet = [100, 5, 1, 5, 5, 20, 50, 100, 1, 1]
//
//let (sum, count) = calculateMky(wallet)
//print(sum)
//print(count)
//
//
//let sumCalc = calcMky(5, 5, 10, 3)
//print(sumCalc)
//
//
//func sayHi() ->() {
//    print("Hi!")
//}
//
//let hi: () = sayHi()
//
//func sayPhrase(_ ph: String) -> Int? {
//    print(ph)
//    return 0
//}
//
//sayPhrase("aaa")
//
//let ph /*: (String) -> Int?*/ = sayPhrase
//print("bbb")
//
//
//func doSomething(_ whatToDo: () -> ()) {
//    whatToDo()
//}
//func whatToDo() -> () -> () {
//    
//    func gg() {
//        print("Hello Bro!")
//    }
//    return gg
//}
//
//doSomething(whatToDo())
