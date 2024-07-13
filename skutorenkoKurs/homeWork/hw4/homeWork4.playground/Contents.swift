//HomeWork4
print("task1")
let a = "1"
let b = "2"
let c = "3"
let d = "4a"
let e = "5a"
var k = 0;

if var a1 = Int(a) {
    k = k + (a1)
} else {
    print ("a - not Int")
}

if var b1 = Int(b) {
    k = k + (b1)
} else {
    print ("b - not Int")
}
if var c1 = Int(c) {
    k = k + (c1)
} else {
    print ("c - not Int")
}

if Int(d) != nil {
    k = k + Int(d)!
} else {
    print ("d - not Int")
}

if Int(e) != nil {
    k = k + Int(e)!
} else {
    print ("e - not Int")
}

print("Сумма равна - \(k)")

print("\ntask2")
let tupleStatusGood : (Int?, String, String) = (201, "message", "error message")
let tupleStatusBadly : (Int?, String, String) = (nil, "message", "error message")

if let abc1 = tupleStatusGood.0, abc1 > 200, abc1 < 300 {
    print(tupleStatusGood.1)
} else {
    print(tupleStatusGood.2)
}

if let abc = tupleStatusBadly.0, abc > 200, abc < 300 {
    print(tupleStatusBadly.1)
} else {
    print(tupleStatusBadly.2)
}

print("\ntask3")

var tupleStudent1 : (name:String?, carPlate:String?, grage:Int?)
var tupleStudent2 : (name:String?, carPlate:String?, grage:Int?)
var tupleStudent3 : (name:String?, carPlate:String?, grage:Int?)
var tupleStudent4 : (name:String?, carPlate:String?, grage:Int?)
var tupleStudent5 : (name:String?, carPlate:String?, grage:Int?)


tupleStudent1.name = "Arnak Nersisyan"
tupleStudent1.1 = "О025ОО55"
tupleStudent1.2 = 5

print("Student 1")
if let st10 = tupleStudent1.0 {
    print("Имя -", st10)
} else {
    print("no name")
}

if let st11 = tupleStudent1.1 {
    print("Номера машины -", st11)
} else {
    print("no car")
}

if let st12 = tupleStudent1.2 {
    print("Оценка за к/р -",st12)
} else {
    print("no test")
}

print("\nStudent 2")
tupleStudent2.0 = "Angelina Belyaeva"
tupleStudent2.1 = "Х006АМ77"
tupleStudent2.2 = 5

if let st20 = tupleStudent2.0 {
    print("Имя -", st20)
} else {
    print("no name")
}

if let st21 = tupleStudent2.1 {
    print("Номера машины -", st21)
} else {
    print("no car")
}

if let st22 = tupleStudent2.2 {
    print("Оценка за к/р -",st22)
} else {
    print("no test")
}

print("\nStudent 3")
tupleStudent3.0 = "Genri Nersisyan"
tupleStudent3.1 = nil
tupleStudent3.2 = 2

if let st30 = tupleStudent3.0 {
    print("Имя -", st30)
} else {
    print("no name")
}

if let st31 = tupleStudent3.1 {
    print("Номера машины -", st31)
} else {
    print("no car")
}

if let st32 = tupleStudent3.2, st32 >= 0, st32 <= 5 {
    print("Оценка за к/р -",st32)
} else {
    print("no test")
}

print("\nStudent 4")
tupleStudent4.0 = "Nare Nersisyan"
tupleStudent4.1 = "С778АУ55"
tupleStudent4.2 = nil

if let st40 = tupleStudent4.0 {
    print("Имя -", st40)
} else {
    print("no name")
}

if let st41 = tupleStudent4.1 {
    print("Номера машины -", st41)
} else {
    print("no car")
}

if let st42 = tupleStudent4.2, st42 >= 0, st42 <= 5 {
    print("Оценка за к/р -",st42)
} else {
    print("no test")
}

print("\nStudent 5")
tupleStudent5.0 = "Ani Nersisyan"
tupleStudent5.1 = nil
tupleStudent5.2 = nil

if let st50 = tupleStudent5.0 {
    print("Имя -", st50)
} else {
    print("no name")
}

if let st51 = tupleStudent5.1 {
    print("Номера машины -", st51)
} else {
    print("no car")
}

if let st52 = tupleStudent5.2, st52 >= 0, st52 <= 5 {
    print("Оценка за к/р -",st52)
} else {
    print("no test")
}

//ClassWork4
/*var apples : Int? = 5

//apples = nil

if apples == nil {
    print("nil apples")
} else {
    apples! += 2
    print(apples!)
}

//optional binding
if var number = apples {
    number += 2
} else {
    print("nil apples")
}

let age = "20"

if Int(age) != nil {
    let ageNumbur = Int(age)!
} else {
    print("age - nil")
}

if var ageNum = Int(age) {
    ageNum += 2
    print(ageNum)
} else {
    print("nil age")
}

var apples2 : Int! = nil

apples2 = 2

apples2 += 23
*/
