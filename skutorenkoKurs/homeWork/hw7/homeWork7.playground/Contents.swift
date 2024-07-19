//HomeWork7
print("task1")
let masDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
print(masDays)

print("\ntask2")
let masMonth = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

for i in 0..<12 {
    print("Месяц - \(masMonth[i]), дней - \(masDays[i])")
}

print("\ntask3")
let monthDays : [(String, Int)] = [("January", 31),  ("February", 28), ("March", 31), ("April", 30), ("May", 31), ("June", 30), ("July", 31), ("August", 31), ("September", 30), ("October", 31), ("November", 30), ("December", 31)]

for i in monthDays {
    print(i)
}
print("\ntask3.1")
var arrayTuples = [(String, Int)]()
for i in 0..<masDays.count {
    let month = (month:masMonth[i], day:masDays[i])
    arrayTuples.append(month)
}
print(arrayTuples)


print("\ntask4")
for i in masDays.reversed() {
    print(i)
}

print("\ntask5")
let myHB = (month:"February", day:25)

var sumDays = 0
for i in 0..<masMonth.count {
    if myHB.month == monthDays[i].0 {
        print(i, monthDays[i])
        for e in 0..<i {
            sumDays += monthDays[e].1
        }
        print("От начала года до твое др осталось \(sumDays + myHB.day) дня!")
    }
}

print("\ntask6")
let masOpt : [Int?] = [1, 2, 4, nil, nil]

//1 способ (optional binding)
var sum1 = 0
for i in 0..<masOpt.count {
    if let a = masOpt[i] {
        sum1 += a
    }
}
print("1 способ(optional binding) - \(sum1)")

//2 способ (??)
var sum2 = 0
for i in 0..<masOpt.count {
    let a = masOpt[i] ?? 0
    if a != 0 {
        sum2 += a
    }
}
print("2 способ(??) - \(sum2)")

print("\ntask7")
let alphabet = "abcdefghijklmnopqrstuvwxyz"
var masAlphabet : [String] = []
for i in alphabet {
    masAlphabet.append(String(i))
}
masAlphabet.reverse()
print(masAlphabet)


//ClassWork7
let constArray : Array<String> = ["a", "b", "c", "d"]

constArray.count

var array = [String]()

if constArray.isEmpty {
    print("Массив пустой")
} else {
    print("Массив не пустой")
}

array += constArray
print(array)

array += constArray
array += ["r"]
print(array)

array.append("f")
print(array)


var array2 = array

print("Первый массив - \(array2)\nВторой массив - \(array)")

array2[0] = "132"
print(array2)

array[1...4] = ["0"] //Заменить данные по этим индексам по range

print(array)

array.insert("-", at: 1)
print(array)

array.remove(at: 1)
print(array)

let money = Array(repeating: "100", count: 10)
print(money)

let wallet: [Int] = [140, 300, 213]

var sum = 0
for i in 0..<wallet.count {
    print(i)
    sum += wallet[i]
}
print("Сумма равна -", sum)

for i in wallet {
    print(i)
}

for (index, value) in money.enumerated() {
    print("index - \(index), value - \(value)" )
}
