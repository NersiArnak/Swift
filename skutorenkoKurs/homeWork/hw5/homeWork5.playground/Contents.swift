//HomeWork5
print("task1")
let hours = 60 * 60
let days = 24 * hours
let mouth = 30 * days

let hbMouth = 10
let hbDay = 6

var sum = 0
for i in 1..<hbMouth {
    sum += mouth
}

var answer = sum + (days * hbDay)
print("\(answer) - секунд прошло от 1 января до моего дня рождения")

print("\ntask2")
let myHB = 2
if myHB == 1 || myHB == 2 || myHB == 3 {
    print ("Вы родились в 1 квартале")
} else if myHB == 4 || myHB == 5 || myHB == 6 {
    print ("Вы родились во 2 квартале")
} else if myHB == 7 || myHB == 8 || myHB == 9 {
    print ("Вы родились в 3 квартале")
} else if myHB == 10 || myHB == 11 || myHB == 12 {
    print ("Вы родились в 4 квартале")
}

print("\ntask3")
let x = 5
let y = 5
let xy = (x + y) % 2
if (x <= 8 && x > 0) && (y <= 8 && y > 0) {
    if xy != 0 {
        print("Клетка черная")
    } else {
        print("Клетка белая")
    }
} else {
   print("Недопустимый ввод")
}

//ClassWork5
//Бинарные операторы
/*
let total = 5 + 6

var small :UInt8 = 0xff

small = small &+ 5

let str = "Hi!" + " Bob"
let a = 5
let b = 6

if a > b {
    print(str)
} else {
    print("Noooo!")
}

//Тернарный оператор
var c : Int

if a < b {
    c = a
} else {
    c = b
}

c = a < b ? a : b

let text = "123"

let n = Int(text)

if n != nil {
    c = n!
} else {
    c = 0
}

c = n ?? 0 //Тернарный оператор

//Унарные операторы
var sum2 = 5
sum2 += 2

let bull = true

!bull

//&&, ||
if bull {
    print("bull")
} else {
    print("bad")
}

//range
0...5
0..<5
for i in 0..<5 {
    print(i)
}
 */

