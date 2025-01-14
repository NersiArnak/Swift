import Foundation

// MARK: - Task #1 [eazy] ✅

print("Task #1")
let vehicleType = "car"

enum Permission: String {
    case yes = "имеется"
    case no = "не имеется"
    case unknown = "не известно"
}

func vehicleDescription(type: String) {
    let tuple : (type: String, description: String, permission: String) = switch vehicleType {
    case "car": ("машина", "легковая", Permission.yes.rawValue)
    case "bike": ("велосипед", "спортивный", Permission.yes.rawValue)
    case "bus": ("автобус", "пассажирский", Permission.yes.rawValue)
    case "airplane": ("самолет", "пассажирский", Permission.yes.rawValue)
    case "train": ("поезд", "пассажирский", Permission.yes.rawValue)
    case "ship": ("корабль", "пассажирский", Permission.yes.rawValue)
    case "motorcycle": ("мотоцикл", "бездарожный", Permission.no.rawValue)
    case "electric scooter": ("электрический скутер", "городской", Permission.yes.rawValue)
    default: ("неизвестный", "неизвестный", Permission.unknown.rawValue)
    }
    print("Тип: \(tuple.type)\nOписание: \(tuple.description)\nРазрешение на использование в городских зонах для экологически чистых транспортных средств: \(tuple.permission)")
}
vehicleDescription(type: vehicleType)

// MARK: - Task #2 [eazy] ✅

print("\nTask #2")
//func checkTimeYear(timeYear: String) -> String {
//    switch timeYear {
//    case TimeYear.winter.rawValue: "Зима"
//    case TimeYear.spring.rawValue: "Весна"
//    case TimeYear.summer.rawValue: "Лето"
//    case TimeYear.autumn.rawValue: "Осень"
//    default: "Неизвестно"
//    }
//    return timeYear
//}
enum Hemisphere: String {
    case north = "север"
    case south = "юг"
}

enum TimeYear: String {
    case winter = "зима"
    case spring = "весна"
    case summer = "лето"
    case autumn = "осень"
}
func phaseSeason(month: Int) -> String {
    if month % 3 == 0 {
        return "начало"
    }
    else if (month % 3) + 1 == 0 || month == 1 {
        return "середина"
    }
    else {
        return "конец"
    }
}

func periodMonth(day: Int) -> String {
    switch day {
    case 0...10: return "начало"
    case 11...20: return "середина"
    default: return "конец"
    }
}

func checkMonth(month: Int, day: Int, hemisphere: String) {
    var timeYear = "unknown"
    let phase, period: String
    let north = Hemisphere.north.rawValue
    let winter = TimeYear.winter.rawValue, spring = TimeYear.spring.rawValue
    let summer = TimeYear.summer.rawValue, autumn = TimeYear.autumn.rawValue
    if (month < 1 || month > 12) || (day < 1 || month > 31) {
        print("Введено некорректное значение!")
    } else {
        switch month {
        case 12, 1...2:
            if hemisphere == north {
                timeYear = winter
            } else {
                timeYear = summer
            }
        case 3...5:
            if hemisphere == north{
                timeYear = spring
            } else {
                timeYear = autumn
            }
        case 6...8:
            if hemisphere == north {
                timeYear = summer
            } else {
                timeYear = winter
            }
        case 9...11:
            if hemisphere == north {
                timeYear = autumn
            } else {
                timeYear = spring
            }
        default: print("не верно")
        }
        phase = phaseSeason(month: month)
        period = periodMonth(day: day)
        print("Время года: \(timeYear)\nФаза года: \(phase)\nПериод месяца: \(period)")
    }
}
checkMonth(month: 12, day: 12, hemisphere: Hemisphere.north.rawValue)


// MARK : - Task #3 [easy+] ✅

print("\nTask #3")
print("Внимание! Диапозон оценок от 1 до 100")
print("От 1 до 29: неудовлетворительно")
print("От 30 до 59: удовлетворительно")
print("От 60 до 89: Хорошо")
print("От 90 до 100: Отлично")

let grade : Int? = 5
let activityInClass : Bool? = false

//enum StrGrade: String {
//    case unsatisfactory = "неудовлетворительно"
//    case satisfactory = "удовлетворительно"
//    case fine = "хорошо"
//    case great = "отлично"
//}

func checkActivity(grade: Int, activity: Bool) -> Bool {
    var result = false
    if activity {
        let newGrade = grade + 5 // 39 + 5 = 44
        let oldPosition = grade / 10 // 4
        let newPosition = newGrade / 10 // 4
        if oldPosition != newPosition {
            result = true
        }
    }
    return result
}

func checkGradeStudent(grade: Int?, activityInClass: Bool) {
    if let gradeValue = grade {
        if gradeValue >= 1 && gradeValue <= 100 {
            let gradePrint = switch gradeValue {
            case 1...39:
                if checkActivity(grade: gradeValue, activity: activityInClass) {
                    "удовлетворительно"
                } else {
                    "неудовлетворительно"
                }
            case 50...69:
                if checkActivity(grade: gradeValue, activity: activityInClass) {
                    "хорошо"
                } else {
                    "удовлетворительно"
                }
            case 70...89:
                if checkActivity(grade: gradeValue, activity: activityInClass) {
                    "отлично"
                } else {
                    "хорошо"
                }
            case 90...100:
                "отлично"
            default:
                "Неизвестная ошибка"
            }
            if activityInClass {
                print("\nОценка (\(gradeValue)): \(gradePrint) (бонус за активность)")
            } else {
                print("\nОценка (\(gradeValue)): \(gradePrint)")
            }
            
        } else {
            print("Неверная оценка")
        }
    } else {
        print("Оценка не указана")
    }
}
checkGradeStudent(grade: 39, activityInClass: true)

// MARK : - Task #4 [easy+] ✅

print("\nTask #4")
///Принимает имя и время, выводит текстовое сообщение времени суток
///- Parameters:
/// - name: имя
/// - time: время
func greet (name: String?, time: Int?) {
    let unWrappingName = name ?? "гость"
    let baseText = "Привет, \(unWrappingName), я рад тебя видеть :)"
    var finalTime = ""
    if unWrappingName.count >= 3 {
        if let unWrappingTime = time, unWrappingTime >= 0 && unWrappingTime <= 23  {
            finalTime = switch unWrappingTime {
            case 0...4:
                "поздняя ночь 🌙"
            case 5...6:
                "раннее утро ☀️"
            case 7...11:
                "доброе утро ☀️"
            case 12...14:
                "полдень ☀️"
            case 15...17:
                "добрый день ⛅️"
            case 18...20:
                "добрый вечер 🌖"
            case 21...23:
                "поздний вечер 🌘"
            case let wrongTime:
                "указано не верное время \(wrongTime) "
            }
            print("На дворе \(finalTime), увидимся завтра, \(unWrappingName)")
        } else {
            print(baseText)
        }
    } else {
        print("Некорректное имя, просьба введите имя корректно")
    }
}
greet(name: "userName" , time: 12)

// MARK: - Task #5 [medium] ✅

print("\nTask #5")

func square(number: Double?) -> Double? {
    if let unWrappingNumber = number {
        return unWrappingNumber * unWrappingNumber
    } else {
        return nil
    }
}

func squareRoot(number: Double?) {
    if var unWrappingNumber = number {
        let sqrtNumber = sqrt(unWrappingNumber)
        print("Квадратный корень от чилса \(unWrappingNumber) равен: \(sqrtNumber) или -(\(sqrtNumber))")
    } else {
        print("nil")
    }
}

let test1 = square(number: 5.25)
let test2 = square(number: -5.25)
let test3 = square(number: nil)
squareRoot(number: test2)
squareRoot(number: test3)

// MARK: - Task #6 [medium]

print("\nTask #6")
func average(num1: Int, num2: Int, num3: Int? = nil) -> Int? {
    guard let unWrapNum3 = num3 else {
        return (num1 + num2) / 2
    }
    if num1 > 0 && num2 > 0 && unWrapNum3 > 0 {
        return (num1 + num2 + unWrapNum3) / 3
    } else {
        print("Не все аргументы положительные - недопустимо")
        return nil
    }
}

func average(num1: Int, num2: Int, num3: Int, num4: Int?) -> Int? {
    guard let unWrapNum4 = num4 else {
        print("4 аргумент со значением nil - недопустимо")
        return nil
    }
    if num1 > 0 && num2 > 0 && num3 > 0 && unWrapNum4 > 0 {
        return (num1 + num2 + num3 + unWrapNum4) / 4
    } else {
        print("Не все аргументы положительные - недопустимо")
        return nil
    }
}

average(num1: 10, num2: 5)
average(num1: 10, num2: 3, num3: 20, num4: 12)
