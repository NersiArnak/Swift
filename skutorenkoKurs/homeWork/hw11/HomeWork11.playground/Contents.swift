import Foundation
//HomeWork11
print("task1")
func funcTask1(newFunc: () -> ()) {
    for i in 1...10 {
        print("index - \(i)")
    }
    newFunc()
}
funcTask1(newFunc: {() in
    print("Hello bro")})

print("\ntask2")
let arrayNumber = [1, 2, 22, 3, 44, 5, 55, 6, 66]

let arrayDecreasing = arrayNumber.sorted(by: {$0 > $1})
let arrayIncrease = arrayNumber.sorted(by: {$0 < $1})
print("Отсортированный массив по убыванию - \(arrayDecreasing)\nОтсортированный массив по возрастанию - \(arrayIncrease)")

print("\ntask3")
let arrayNumber1 = [333, 22, 3, 44, 5, 55, 6, 66]
func sortNumber(mas: [Int], funcClouser: (Int, Int?) -> Bool) -> Int{
    var elementNil : Int?
    for i in mas {
        if funcClouser(i, elementNil)  {
            elementNil = i
        }
    }
    return elementNil ?? 0
}

let test2 = sortNumber(mas: arrayNumber1, funcClouser: {$1 == nil || $0 < $1!})
print(test2)

print("\ntask4")
//let alphabet = "abcdefghijklmnopqrstuvwxyz"
//var optNil : Int?
//for (index, i) in alphabet.enumerated() {
//    for e in masChar {
//        if e == i {
//            if optNil == nil || index > optNil! {
//                optNil = index
//                print(optNil!, e)
//            }
//        }
//    }
//}

let masChar = "hello, my name is xrno"

func sortChar(str: String, funcUpdate: (Int, Int?) -> Bool) ->  (Int, Character) {
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var optNil : Int?
    var searchChar : Character = " "
    var searchIndex = 0
    for (index, i) in alphabet.enumerated() {
        for e in str {
            if e == i {
                if funcUpdate(index, optNil) {
                    optNil = index
                }
            }
        }
        if optNil == index {
            searchChar = i
            searchIndex = index
        }
    }
    return (searchIndex, searchChar)

}

let test3 = sortChar(str: masChar, funcUpdate: {$1 == nil || $0 > $1!})
print("Максимальный Char в данной строке - \(test3)")

print("\ntask5")
var strVarChar = "Hi! My name is Arnak1"

func sortArray(charMas: String) -> ([String], [String], [String], [String]){
    var masVowels = [String]()
    var masConsonants = [String]()
    var masNumbers = [String]()
    var masPunctuation = [String]()
    var masStrString = [String]()
    var strI = " "
    var test4 = [String]()
    var test5 = [String]()
    var test6 = [String]()
    var test7 = [String]()
    
    for i in charMas {
        strI = String(i)
        masStrString.append(strI)
    }
    for e in masStrString {
        switch e {
        case "a", "e", "i", "o", "u", "A", "E", "I", "O", "U":
            masVowels.append(String(e))
            test4 = masVowels.sorted(by: {$0 < $1})
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z","B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z":
            masConsonants.append(String(e))
            test5 = masConsonants.sorted(by: {$0 < $1})
        case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
            masNumbers.append(String(e))
            test6 = masNumbers.sorted(by: {$0 < $1})
        //case ",", "!", ".", ";", ":":
        default:
            masPunctuation.append(String(e))
            test7 = masPunctuation.sorted(by: {$0 < $1})
        }
    }
    return (test4, test5, test6, test7)
}

print(sortArray(charMas: strVarChar))

//func priority(str: String) -> Int {
//    switch(str.lowercased()) {
//    case "a", "e", "i", "o", "u": return 0
//    case "a"..."z": return 1
//    case "0"..."9": return 2
//    default:
//        return 3
//    }
//}
//
//var newArray = [String]()
//for i in strVarChar {
//    newArray.append(String(i))
//}
//
//let sorted =
//newArray.sorted {
//    switch(priority(str: $0), priority(str: $1)) {
//    case let(x,y) where x < y: return true
//    case let(x,y) where x > y: return false
//    default: return $0 <= $1
//    }
//}
//
//print(sorted)


//for i in strVarChar {
//    let newI = String(i)
//    masStrString.append(String(newI))
//    for e in vowels {
//        if e == newI {
//            masStrTime.append(newI)
//        }
//    }
//    for r in consonants {
//        
//    }
//}
//let test5 = masStrTime.sorted(by: {$0 < $1})
//print(test5)


//ClassWork11
//let numbers = [4, 3 , 12, 7, 6, 43, 123, 1, 2, 3, 4, 5, 6, 7]
//
//func filterArray(array: [Int], newFunc: (Int) -> Bool ) -> [Int]{
//    var filtered = [Int]()
//    for i in array {
//        if newFunc(i) {
//            filtered.append(i)
//        }
//    }
//    return filtered
//    
//}
//
////func compare(i: Int) -> Bool {
////    return i % 2 == 0
////}
//
////MARK: simple form
//
//let a1 = (filterArray(array: numbers, newFunc: {i in
//    return i % 2 == 1}))
//
//print("Нечетные - \(a1)")
//
//let a2 = (filterArray(array: numbers, newFunc: {$0 % 3 == 0}))
//
//print("Числа, которые делятся на "3" - \(a2)")
//
//let a3 = filterArray(array: numbers) { $0 % 3 == 0 }
//
//
//var count = 0
//
//let mas = [1, 2, 3, 4, 5, 6, 77, 88, 99, 100]
//let a4 = filterArray(array: numbers) {i in
//    for include in mas {
//        count += 1
//        if include == i {
//            return true
//        }
//    }
//    return false
//}
//
//print("Совпадения по массивам mas и number - \(a4)")
//
//var dict = [Int: Bool]()
//for value in mas {
//    dict[value] = true
//}
//
//var count1 = 0
//
//let a5 = filterArray(array: numbers) {i in
//    count1 += 1
//    return dict[i] != nil
//}
//print (count1)
