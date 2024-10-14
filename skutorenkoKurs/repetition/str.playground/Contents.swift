var str : String = "123321"

let char : Character = "o"
for i in "Hello, bro" {
    print(i)
}

str.append(char)

let heart = "\u{2665}"

let fun : Character = "ъ\u{301}\u{20dd}"

let a = "What it this? -> \(fun)"
print(a.count)

a.hasPrefix("What")
a.hasSuffix("ъ\u{301}\u{20dd}")


print("\n№1")
let num1 = "10"
let num2 = "20"
let num3 = "30"
let num4 = "4X"
let num5 = "5X"
var res = ""
var sum = 0

let newNum1 = Int(num1) ?? 0
let newNum2 = Int(num2) ?? 0
let newNum3 = Int(num3) ?? 0
let newNum4 = Int(num4) ?? 0
let newNum5 = Int(num5) ?? 0

var fNum1 = ""
var fNum2 = ""
var fNum3 = ""
var fNum4 = ""
var fNum5 = ""

if newNum1 == 0 {
    fNum1 = "nil"
}
else {
    fNum1 = String(newNum1)
    sum += newNum1
}

if newNum2 == 0 {
    fNum2 = "nil"
}
else {
    fNum2 = String(newNum2)
    sum += newNum2
}

if newNum3 == 0 {
    fNum3 = "nil"
}
else {
    fNum3 = String(newNum3)
    sum += newNum3
}

if newNum4 == 0 {
    fNum4 = "nil"
}
else {
    fNum4 = String(newNum4)
    sum += newNum4
}

if newNum5 == 0 {
    fNum5 = "nil"
}
else {
    fNum5 = String(newNum5)
    sum += newNum5
}

print("Вывод с помощью интерполяции строк: \(fNum1) + \(fNum2) + \(fNum3) + \(fNum4) + \(fNum5) = \(sum)")

print("Вывод с помощью конкотации строк: " + "\(fNum1) + \(fNum2) + \(fNum3) + \(fNum4) + \(fNum5) = \(sum)")

print("\n№2")

let u = "\u{2665}"
let b = "\u{2666}"
let c = "\u{2667}"
let d = "\u{2668}"
let e = "\u{2669}"

let sumUni = u + b + c + d + e
print("Длина - \(sumUni.count)")

print("№3")

let alphabet = "abcdefghijklmnopqrstuvwxyz"
let searchChar : Character = "e"

for (index, i) in alphabet.enumerated() {
    if i == searchChar {
        print("Символ \(searchChar) находится на позиции - \(index+1)")
    }
}





