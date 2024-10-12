var apples : Int? = 5

if apples == nil {
    print("apples is nil")
} else {
    let a = apples! + 2
}

if var num = apples {
    num = num + 2
} else {
    print("nil apples")
}

let text = "1234"

let age = "20"

if let ageInt = Int(age) {
    print(ageInt)
}

var apples2 : Int! = nil
apples2 = 2
apples2 = apples2 + 2


//hw
print("\n№1")
let con1 = "10"
let con2 = "20"
let con3 = "5"
let con4 = "30a"
let con5 = "30b"
var sum = 0

if let newCon1 = Int(con1) {
    sum += newCon1
}
if let newCon2 = Int(con2) {
    sum += newCon2
}
if let newCon3 = Int(con3) {
    sum += newCon3
}
if let newCon4 = Int(con4) {
    sum += newCon4
}
if let newCon5 = Int(con5) {
    sum += newCon5
}
print(sum)

print("\n№2")
let tuple : (Int?, String, String) = (200, "message", "error message")

let tuple2 : (Int?, String, String) = (nil, "message", "error message")

func testTuple(tuple: (Int?, String, String)) -> String {
    var a = ""
    if let status = tuple.0 {
        if status >= 200 && status <= 300 {
            a = tuple.1
        }
        else {
            a = tuple.2
        }
    }
    else {
        a = (tuple.2)
    }
    return a
}
print(testTuple(tuple: tuple2))

print("\n№3")
var st1 : (name: String?, numberCar: String?, test: Int?)

var st2 : (name: String?, numberCar: String?, test: Int?)

var st3 : (name: String?, numberCar: String?, test: Int?)

var st4 : (name: String?, numberCar: String?, test: Int?)

var st5 : (name: String?, numberCar: String?, test: Int?)

st1.name = "Ivan"
st1.numberCar = "A025AA5"
st1.test = 5

st2.name = "Roma"
st2.numberCar = "O025OO5"
st2.test = 0

st3.name = "Valya"
st3.numberCar = "B025BB55"

st4.name = "Kolya"
st4.test = 7

st5.name = "Sasha"

func resultStudent(tuple: (name: String?, numberCar: String?, test: Int?)) -> String {
    var res = ""
    if let optName = tuple.name {
        res += "Имя - " + optName
    }
    else {
        res = "Не найдено"
    }
    if let optNumberCar = tuple.numberCar {
        res += "\nНомер машины - " + optNumberCar
    }
    else {
        res += "\nНомер машины - Нет машины"
    }
    if let optTest = tuple.test {
        if optTest >= 0 && optTest <= 5 {
            res += "\nОценка за к/р - " + String(optTest)
        }
        else {
            res += "\nОценка за к/р - Неверная оценка"
        }
        
    }
    else {
        res += "\nОценка за к/р - Контрольная не написана"
    }
    
    return res
}

print(resultStudent(tuple: st1) + "\n")
print(resultStudent(tuple: st2) + "\n")
print(resultStudent(tuple: st3) + "\n")
print(resultStudent(tuple: st4) + "\n")
print(resultStudent(tuple: st5) + "\n")
