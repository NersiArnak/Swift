let mas = [12, 12, 31, 32, 32]

var newMas: [Int] = []
for i in mas {
    var c = i
    var sum = 0
    while c > 0 {
        let a = c % 10
        sum += a
        print("До деления сумма - \(sum), c - \(c)")
        c = c / 10
        print("После деления сумма - \(sum), c - \(c)\n")
    }
    newMas.append(sum)
}

var min = 100000000000000
for i in newMas {
    if i < min {
        min = i
    }
}
print(min)
