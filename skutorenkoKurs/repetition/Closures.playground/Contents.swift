let numbers = [1, 3, 43, 52, 6 ,712 ,8, 2, 4, 6, 7, 8 , 9, 3 ,1, 11]

func filterArray(array: [Int], newFunc: (Int) -> Bool) -> [Int] {
    var filtered: [Int] = []
    for i in array {
        if newFunc(i) {
            filtered.append(i)
        }
    }
    return filtered
}

//func  compare(i: Int) -> Bool {
//    return i % 2 == 0
//}


let filtered = filterArray(array: numbers, newFunc: {(i: Int) -> Bool in
    return i % 2 == 0})

print("Четные - \(filtered)")

// MARK: simple form
let filtered2 = filterArray(array: numbers, newFunc: {i in
    return i % 2 == 1})

let filtered3 = filterArray(array: numbers, newFunc: {i in
    i % 2 == 1 })

print("Нечетные - \(filtered3)")

let filtered4 = filterArray(array: numbers, newFunc: {$0 % 4 == 0})

print("Делятся на 4 -", filtered4)

let filtered5 = filterArray(array: numbers) {
    return $0 % 2 == 0
}

let mas = [1, 2, 3, 5, 7 ,123, 56]
var count = 0
let resMas =
filterArray(array: numbers) {value in
    for i in mas {
        count += 1
        if i == value {
            return true
        }
    }
    return false
}


var dict = [Int: Bool]()

for i in mas {
    dict[i] = true
}
print(dict)
count = 0
let resDict =
filterArray(array: numbers) { value in
    count += 1
    return dict[value] != nil
}

//hw
print("\n№1")
func isPrint(closure: () -> Void) {
    for i in 1...10 {
        print(i)
    }
    closure()
}

isPrint() {
    print("Heeey!")
}

print("\n№2")
var minMax = [1, 3, 4 ,6, 43, 42, 12, 4, 0]

func funcMinMax(num1: Int, num2: Int) -> Bool {
    if num1 < num2 {
        return true
    }
    else {
        return false
    }
}

let min = minMax.sorted(by: {$0 < $1})
print("По возрастанию -", min)

let max = minMax.sorted(by: {$0 > $1})
print("По убыванию -", max)

print("\n№3")

let arrayNum = [4, 12, 34, 2, 4, 5, 6, 7, 3]

func filterNum(array: [Int], funcMinMax: (Int, Int?) -> Bool) -> Int {
    var optNum : Int? = nil
    for i in array {
        if funcMinMax(i, optNum) /*== true*/ {
            optNum = i
        }
    }
    return optNum!
}

let num1 = filterNum(array: arrayNum) {return $1 == nil || $0 < $1!}
print("Минимальные элементы -", num1)


print("\n№4")
let arrayStr = ["c", "b", "w", "a", "q"]

func filterStr(array: [String], funcFilter: (String, String?) -> Bool) -> String {
    var optStr : String? = nil
    for i in array {
        if funcFilter(i, optStr) {
            optStr = i
        }
    }
    return optStr!
}

let str1 = filterStr(array: arrayStr, funcFilter: {return $1 == nil || $0 < $1!})

print("Минимальные элементы -", str1)

print("\n№5")

let likeStr = "Only youuuu!, My name is Kodi! I very like to code\u{2655}AAA!"


func sortFilter(str: String, funcFilter: (Character) -> Bool) -> [Character] {
    var sortArray = [Character]()
    for i in str {
        if funcFilter(i) {
            sortArray.append(i)
        }
    }
    return sortArray
}

let vowels = sortFilter(str: likeStr) {
    let lower = $0.lowercased()
    return lower == "a" || lower == "e" || lower == "i" || lower == "o" || lower == "u"
}
let vowelsSorted = vowels.sorted(by: {$0 < $1})

let consonants = sortFilter(str: likeStr) {
    let lower = $0.lowercased()
    return lower == "b" || lower == "c" || lower == "d" || lower == "f" || lower == "g" || lower == "h" || lower == "j" || lower == "k" || lower == "l" || lower == "m" || lower == "n" || lower == "p" || lower == "q" || lower == "r" || lower == "s" || lower == "t" || lower == "v" || lower == "w" || lower == "x" || lower == "y" || lower == "z"

}
let consonantsSorted = consonants.sorted(by: {$0 < $1})

let nums = sortFilter(str: likeStr) {
    return $0 == "1" || $0 == "2" || $0 == "3" || $0 == "4" || $0 == "5" || $0 == "6" || $0 == "7" || $0 == "8" || $0 == "9" || $0 == "0"
}
let numsSorted = nums.sorted(by: {$0 < $1})

let specialChars = sortFilter(str: likeStr) {
    return $0 == "!" || $0 == "," || $0 == "." || $0 == "?" || $0 == ";" || $0 == ":"
}
let specialCharsSorted = specialChars.sorted(by: {$0 < $1})

let fullArrays = vowelsSorted + consonantsSorted + numsSorted + specialCharsSorted
print(fullArrays)

