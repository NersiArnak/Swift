func calculateMoney(wallet: [Int], type: Int? = nil) -> (total: Int, count: Int){
    var sum = 0
    var count = 0
    for i in wallet {
        
        if i == type {
            sum += i
            count += 1
        }
    }
    return (sum, count)
}

var wallet = [100, 5, 1, 5, 5,20, 100, 1, 1]
var money100 = calculateMoney(wallet: wallet, type: 100)
var money5 = calculateMoney(wallet: wallet, type: 5)
print(money100, money5)

func calculateMoneyRange(range: Int...) -> Int {
    var sum = 0
    for i in range {
        sum += i
    }
    return sum
}

let sumRange = calculateMoneyRange(range: 1,6)
print("Сумма range - \(sumRange)")

func sayHi() -> () {
    print("Hi")
}

func sayPhrase(phrase: String) -> Int? {
    print(phrase)
    return 0
}

sayPhrase(phrase: "Hello")

let phrase = sayPhrase

func doSomething(whatTodo: ()->()){
    whatTodo()
}

func whatToDo() -> () -> () {
    func printSomething() {
        print("Хеллоу")
    }
    return printSomething
}

let c = whatToDo()
c()

//hw
print("\n№1")
func s1() -> String {
    return "Hello,"
}

func s2() -> String {
    return "my name is "
}

func s3() -> String {
    return "Kodi"
}

func s4 () -> String {
    return "🐻"
}

print(s1() + s2() + s3() + s4())

print("\n№2")
func chessBlackWhite(str: Character, num: Int) -> String {
    let alphabet = "abcdefgh"
    var res = " "
    for (index, value) in alphabet.enumerated() {
        if str == value {
            let n = index + num
            if n % 2 == 0 {
                res = "Клетка белая"
            }
            else {
                res = "Клетка черная"
            }
        }
    }
    return res
}

let a2 = chessBlackWhite(str: "a", num: 2)
print(a2)

print("\n№3")
var array = [1, 2, 3, 4, 5]
func reverseArray(array: [Int]) -> [Int] {
    var arrayEmpty = [Int]()
    for i in array.reversed() {
        arrayEmpty.append(i)
    }
    return arrayEmpty
}

let testReverse = reverseArray(array: array)
print("Перевернутый массив -", testReverse)
print("Массив изначальный -",array)
print ("\n№4")

func inoutReverse(array: inout [Int]) {
    array.reverse()
}
inoutReverse(array: &array)
print(array)

print("\n№5")


func editText(text: String) -> String {
    var newText = ""
    let dict = ["1": "one", "2": "two", "3": "three", "4": "four", "5": "five", "6": "six", "7": "seven", "8": "eight", "9": "nine"]
    for i in text {
        var c = String(i)
        for (key, value) in dict {
            switch c {
                case ",", ".", "!", "?", ":":
                c = " "
                case "a", "e", "i", "o", "u" :
                c = c.uppercased()
                case "B", "C", "D","F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z":
                c = c.lowercased()
                case _ where c == key:
                    c = value
            default:
                break
            }
        }
        newText.append(c)
    }
    return newText
}

var text = "Hello, world25"
print(editText(text: text))

