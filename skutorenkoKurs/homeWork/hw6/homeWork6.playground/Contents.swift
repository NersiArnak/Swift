//HomeWork6
import Foundation

print("task1")
let a = "12"
let b = "18"
let c = "1c"
let d = "10"
let e = "2c"
let error = "error"

let aCheck = Int(a) ?? 0
let bCheck = Int(b) ?? 0
let cCheck = Int(c) ?? 0
let dCheck = Int(d) ?? 0
let eCheck = Int(e) ?? 0
var aCheckStr = ""
var bCheckStr = ""
var cCheckStr = ""
var dCheckStr = ""
var eCheckStr = ""

if aCheck == 0 {
    aCheckStr = String(aCheck)
    aCheckStr = "nil"
} else {
    aCheckStr = String(aCheck)
}

if bCheck == 0 {
    bCheckStr = String(bCheck)
    bCheckStr = "nil"
} else {
    bCheckStr = String(bCheck)
}

if cCheck == 0 {
    cCheckStr = String(cCheck)
    cCheckStr = "nil"
} else {
    cCheckStr = String(cCheck)
}

if dCheck == 0 {
    dCheckStr = String(dCheck)
    dCheckStr = "nil"
} else {
    dCheckStr = String(dCheck)
}

if eCheck == 0 {
    eCheckStr = String(eCheck)
    eCheckStr = "nil"
} else {
    eCheckStr = String(eCheck)
}


var sum = aCheck + bCheck + cCheck + dCheck + eCheck

print("Вывод с помощью интерполяции строк - \(aCheckStr) + \(bCheckStr) + \(cCheckStr) + \(dCheckStr) + \(eCheckStr) = \(sum)")
print("Вывод с помощью конкатенации строк - " + "\(aCheckStr)" + " + " + "\(bCheckStr)" + " + " + "\(cCheckStr)" + " + " + "\(dCheckStr)" + " + " + "\(eCheckStr)" + " = " + "\(sum)")


print("\ntask2")
let emoji1 = ("\u{1F434}")
let emoji2 = ("\u{1F444}")
let emoji3 = ("\u{1F445}")
let emoji4 = ("\u{1F446}")
let emoji5 = ("\u{1F346}")

print(emoji1, emoji2, emoji3, emoji4, emoji5)
print("Длина строки:\n", emoji1.count, emoji2.count, emoji3.count, emoji4.count, emoji5.count)
print("Длина строки:\n", emoji1.count, emoji2.count, emoji3.count, emoji4.count, emoji5.count)
print("Длина строки:\n", (emoji1 as NSString).length, (emoji2 as NSString).length, (emoji3 as NSString).length, (emoji4 as NSString).length, (emoji5 as NSString).length)


print("\ntask3")
let alphabet = "abcdefghijklmnopqrstuvwxyz"
let symbol : Character = "c"
var index = 0
for i in alphabet {
    index += 1
    if symbol == i {
        print("Введеный символ -", symbol)
        print("Индекс символа -", index)
    }
}



//ClassWork6
/*
var str = "k"
str = str + "a"

var a = 5
var b = a

var str1 = "a"
var str2 = str1

str1 = "b"
str1
str2

//Проверка на пустоту
str1.isEmpty

let char1 : Character = "x"

//for i in "Hello world!" {
//    print(i)
//}

str1.append(char1)

//Проверка на длину obj c
(str1 as NSString).length

let heart = "\u{1F496}"
print(heart)

var fun : Character = "Ъ"

let eAcute: Character = "\u{E9}"

var funAcute : Character = "Ъ\u{301}\u{20dd}"

let abc = "what is this? -> \(fun)"

print(abc.count)

if funAcute == "a" {
    
} else {
    print("not equal")
}
*/
