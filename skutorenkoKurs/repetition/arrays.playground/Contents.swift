let contsArray = ["1", "2", "3", "4", "5"]
var array: [String] = []

if array.isEmpty {
    print("Array is empty")
}
array += contsArray

var array2 = array
array2
array
array2[0] = "6"
array2
array[1...3] = ["0"]
print(array)

array.insert("7", at: 2)
array.remove(at: 3)

let test = [Int](repeating: 10, count: 10)
print(test)
let money = [100, 200, 300, 400, 500]
var sum = 0
for i in 0..<money.count {
    print("\(i): \(money[i])")
    sum += money[i]
}

sum = 0
for (index, i) in money.enumerated() {
    print("\(index): \(i)p")
    sum += i
}
print("Сумма - \(sum)p")


//hw
print("\n№1")
var daysMonth = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

print("\n№2")
var month = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"]

for i in 0..<month.count {
    print("\(month[i]): \(daysMonth[i])")
}

print("\n№3")
var arrayMonth : ([String], [Int]) = (month, daysMonth)
for i in 0..<arrayMonth.0.count {
    print(arrayMonth.0[i], arrayMonth.1[i])
}
print("\n№4")
for i in daysMonth.reversed() {
    print(i)
}

print("\n№5")
let myHB = (days:25, month: "Февраль")
var sumDays = 0

for i in 0..<month.count {
    if month[i] != myHB.month {
        sumDays += daysMonth[i]
    }
    else {
        sumDays += myHB.days
        break
    }
}

print("\n№6")
var mas : [Int?] = [12, nil, 132, 432, nil]

var sumMas1 : Int = 0
for i in mas {
    if let a = i {
        sumMas1 += a
    }
}
print("Первый способ: сумма равно - \(sumMas1)")

var sumMas2 = 0
for i in mas {
    let a = i ?? 0
    if a != 0 {
        sumMas2 += a
    }
}
print("Второй способ: сумма равно - \(sumMas1)")


print("\n№7")
let alphabet = "abcdefghijklmnopqrstuvwxyz"
var charArray = [String]()

for i in alphabet {
    let a = String(i)
    charArray.append(a)
}

for i in charArray.reversed() {
    print(i)
}
