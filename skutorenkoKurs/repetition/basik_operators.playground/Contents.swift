//Бинарные опраторы
let total = 5 + 6 - 8

let div = 10 / 3

var small : UInt8 = 0xff

small = small &+ 5

let str = "Hi" + ", IOS!"

let a = 5
let b = 6

var c : Int

c = (a < b) ? a : b


let text = "123"

let n = Int(text)

//if n != nil {
//    c = n!
//} else {
//    c = 0
//}

//if let n = Int(text) {
//    c = n
//} else {
//    c = 0
//}

c = n ?? 0

var good = true
good = !good

if good  {
    print("Good")
} else {
    print("bad")
}

//0...5
//0..<5

//for i in 1...5 {
//    print(i)
//}



//hw
print("\n№1")
let array = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

let hb = (month: "February", day: 25)

func monthNum(array: [String], hb: (month: String, day: Int)) -> Int {
    var monthNumber = 0
    for (index, i) in array.enumerated() {
        if i == hb.month {
            monthNumber = index+1
        }
    }
    return monthNumber
}

let monthNumber = monthNum(array: array, hb: hb)


let oneDay = 24*3600
let oneMonth = oneDay * 30
let finalDay = ((monthNumber - 1) * oneMonth) + hb.day * oneDay
print("\(finalDay)с - прошло от нового года до моего дня рождения")

print("\n№2")
let myMonth = monthNum(array: array, hb: hb)

for i in 1...3 {
    if i == myMonth {
        print("Я родился в 1 квартале")
    }
}

for i in 4...6 {
    if i == myMonth {
        print("Я родился вo 2 квартале")
    }
}

for i in 7...9 {
    if i == myMonth {
        print("Я родился в 3 квартале")
    }
}

for i in 10...12 {
    if i == myMonth {
        print("Я родился в 4 квартале")
    }
}

print("\n№3")
let coor = "a2"
let alphabet = "abcdefgh"
var x : Character = "0"
var xNum = 0
var y : String = "0"

for i in coor {
    for e in alphabet {
        if i == e {
            x = e
        }
        else {
            y = String(i)
        }
    }
}

for (index, i) in alphabet.enumerated() {
    if i == x {
        xNum = index+1
    }
}

var yNum = 0
if let yInt = Int(y) {
    yNum = yInt
}

if (xNum > 0 && xNum <= 8) && (yNum > 0 && yNum <= 8) {
    let color = ((xNum + yNum) % 2) == 0 ? "Белая" : "Черная"
    print(color)
}
