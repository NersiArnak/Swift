//HomeWork2
print("Task #1")
print("Максимальное значение Int - \(Int.max)\nМинимальное значение Int - \(Int.min)\nМаксимальное значение Int8 - \(Int8.max)\nМинимальное значение Int8 - \(Int8.min)\nМаксимальное значение UInt - \(UInt.max)\nМинимальное значение UInt - \(UInt.min)\nМаксимальное значение UInt8 - \(UInt8.max)\nМинимальное значение UInt8 - \(UInt8.min)\n")


print("Task #2")
let aInt = 1
let bDouble = 1.5
let cFloat : Float = 1.5

let sumInt = aInt + Int(bDouble) + Int(cFloat)
let sumDouble = Double(aInt) + bDouble + Double(cFloat)
let sumFloat = Float(aInt) + Float(bDouble) + cFloat
print("Сумма sumInt - \(sumInt)\nСумма sumDouble - \(sumDouble)\nСумма sumFloat - \(sumFloat)\n")

print("Task #3")


if Double(sumInt) < sumDouble {
    print("sumDouble - \(sumDouble)")
} else {
    print("Oh, no(")
}


//ClassWork2
let number : UInt8 = 255
let oct = 0o12 //8
let hex = 0xff //16
let binary = 0b1111_1111 //2

/*
let a = 5.0
let b = 5
var c = Int(a) + b
print(c)
*/

/*
let a = 5.2
let b = 5
var c = a + Double(b)
print(c)
*/

//let c = 5 + 5.2

/*
let a : Float = 5.0
let b = 5.2
let c = a + Float(b)
*/

typealias ArnakNumber = Int //Задать свой собственный тип
let a : ArnakNumber = 5
let b = 5.2
let c = a + ArnakNumber(b)

/*
let d = false

if d {
    print("Hi!")
} else {
    print("By!")
}
 */
