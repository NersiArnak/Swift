import UIKit
import Foundation
// MARK: - Task #1 [eazy] ✅

let firstName = "Arnak"
let lastName = "Nersisyan"
let fullName = "\(firstName) \(lastName)"
let greeting = "Hello, my name is \(fullName)!"
print("Task #1")
print(greeting)

// MARK: - Task #2 [eazy]

let unicodeString = "\u{12e8} \u{2764}"
print("\nTask #2")

print("UTF-8")
for i in unicodeString.utf8 {
    print(i, terminator: " ")
}
print()

print("\nUTF-16:")
for i in unicodeString.utf16 {
    print(i, terminator: " ")
}
print()

print("\nUnicode Scalars:")
for i in unicodeString.unicodeScalars {
    print(i.value, terminator: " ")
}
print()

// MARK: - Task #3 [eazy]

var mutableString = "I want to sleep"
mutableString.append(" :(")

if let sleep = mutableString.range(of: "sleep") {
    mutableString.replaceSubrange(sleep, with: "sleeeep")
}
print("\nTask #3")
print(mutableString)

// MARK: - TASK #4 [eazy]

let sampleString = "Dreams Infold Softly as Night Blankets the World in Silence"
let startIndex = sampleString.startIndex
let endIndex = sampleString.index(sampleString.startIndex, offsetBy: 5)
let result = sampleString[startIndex...endIndex]
print("\nTask #4")
print(result)

// MARK: - Task #5 [eazy+] ✅

print("\nTask #5")
var mutableGreeting = "Night whispers dreams as stars fade, welcoming peaceful slumber’s embrac"
print("До добавления символа '!':\n\(mutableGreeting)\n")

mutableGreeting.insert("!", at: mutableGreeting.endIndex)
print("После добавления символа '!':\n\(mutableGreeting)\n")

let endInd = mutableGreeting.index(before: mutableGreeting.endIndex)
mutableGreeting.remove(at: endInd)
print("Удаление символа '!':\n\(mutableGreeting)\n")

// MARK: - Task #6 [easy+] ✅

let mySentence = "Hello, what is your name?"
print("\nTask #6")
let prefix = mySentence.prefix(5)
print(prefix)

// MARK: - Task #7 [medium] ✅

print("\nTask #7")
let str1 = "How are you?"
let str2 = "I am fine, thank you!"
if str1 == str2 {
    print("str1 = str2")
} else {
    print("str1 != str2")
}

let checkPrefix = str1.prefix(3)
let prefixStr1 = str1.hasPrefix(checkPrefix)
print("prefix - \(prefixStr1)")
let prefixStr2 = str2.hasPrefix(checkPrefix)
print("prefix - \(prefixStr2)")

let checkSuffix = str2.suffix(3)
let suffixStr1 = str1.hasSuffix(checkSuffix)
print("suffix - \(suffixStr1)")

let suffixStr2 = str2.hasSuffix(checkSuffix)
print("suffix - \(suffixStr2)")

// MARK: - Task #8 [medium] ✅

func checkTime(time: Int) {
    if time == 22 || time <= 23 && time >= 0 && time <= 4 {
        print("Доброй ночи и крепких снов, друзья! 🌙\nВремя - \(time):00")
    } else if time >= 18 && time <= 21 {
        print("Вечер, темно и уютно! 🌑\nВремя - \(time):00")
    } else if time >= 13 && time <= 17 {
        print("Добрый день, друзья! Мне и слово добрый 'нравится' и 'день' 😎\nВремя - \(time):00")
    } else if time >= 5 && time <= 12 {
        print("Утро на дворе ☀️\nВремя - \(time):00")
    } else {
        print("Время введено не верно!")
    }
}
print("\nTask #8")
checkTime(time: 8)

// MARK: - Task #9 [medium+] ✅

print("\nTask #9")
let stopNum = 10
var counter = 0
print("num. \(counter)")
while counter < stopNum {
    counter += 1
    print("num. \(counter)")
}
print("Цикл завершен! 🎰")

// MARK: - Task #10 [medium+] ✅

print("\nTask #10")
let numberGroups = [
    [3, 5, 11, 19],
    [2, 4, 14, 21],
    [6, 10, 22]
]

func checkMultiple(numberGroups: [[Int]], divider: Int) {
    var checkArrayNumber = 0
    for i in numberGroups {
        checkArrayNumber += 1
        for (index, e) in i.enumerated() {
            if e % divider  == 0 {
                print("Первое число кратное '\(divider)' - \(e)")
                print("Находится во \(checkArrayNumber) подмассиве, под индексом - \(index)")
                break
            }
        }
    }
}

checkMultiple(numberGroups: numberGroups, divider: 7)

// MARK: - Task #11 [medium+] ✅

print("\nTask #11")
let city = "Moscow"
var temperature = 0
if city == "Moscow" {
    temperature = 20
} else if city == "Saint Petersburg" {
    temperature = 15
}

let weatherInfo = "The temperature in \(city) is \(temperature)°C"
print(weatherInfo)

// MARK: - Task #12 [hard] ✅

print("\nTask #12")
print("true or false?")
let result1 = true && false //false
let result2 = (5 > 3) || (2 > 4) //true
let result3 = (3 == 3) && (2 != 2) //false
let result4 = ((12 / 4) == 3) || ((7 % 2) != 0) // true

// MARK: - Task #13 [hard+]
print("\nTask #13")

enum RegistrationError: Error {
    case weakPassword
}

func checkDog(email: String) -> Bool {
    var resCharDog = false
    for i in email {
        if i == "@" {
            resCharDog = true
        }
    }
    return resCharDog
}

func registerUser(username: String?, password: String?, age: Int?, email: String?) throws {
    guard let username, username.isEmpty == false else {
        print("Ошибка: Имя пользователя не может быть пустым")
        return
    }
    
    guard let password, password.count >= 6 else {
        print("Ошибка: Пароль должен содержать не менее 6 символов")
        throw RegistrationError.weakPassword
    }
    
    guard let age, age >= 18 else {
        print("Ошибка: Регистрация разрешена только с 18 лет")
        return
    }
    
    guard let email, checkDog(email: email) else {
        print("Ошибка: Неверный формат email")
        return
    }
    print("Пользователь \(username) успешно зарегистрирован!")
}

try registerUser(username: "Arnak", password: nil, age: 20, email: "arnonersi777@gmail.com")




