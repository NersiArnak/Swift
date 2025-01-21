import Foundation

// MARK: - Task #1 [easy] ✅

print("Task #1")
print("Создали пустой словарь")
let dict : [String : Int] = [:] // Пустой словарь

// MARK: - Task #2 [easy] ✅ // Устные ответы

print("\nTask #2")
print("Устно ответил на вопросы")

// MARK: - Task #3 [easy] ✅

print("\nTask #3")
var studentScores : [String : Int] = [:]
studentScores["Анна"] = 85
studentScores["Борис"] = 90
studentScores["Виктория"] = 95
print("Количество студентов в словаре: \(studentScores.count)")

if let gradeBoris = studentScores["Борис"] {
    print("Оценка Бориса: \(gradeBoris)")
} else {
    print("У бориса нет оценки")
}

studentScores["Анна"] = 88
studentScores["Виктория"] = nil
print()
print(studentScores)


print()
if studentScores.keys.contains("Дмитрий") {
    print("В словаре есть данный человек")
} else {
    print("В словаре нет данного человека")
}

print()
studentScores["Дмитрий"] = 99
print(studentScores)

studentScores.removeAll()
print(studentScores)

// MARK: - Task #4 [easy] ✅

print("\nTask #4")
let countryCapitals = ["Россия": "Москва", "Франция": "Париж",
                       "Германия": "Берлин", "Япония": "Токио"]

for (keys, value) in countryCapitals {
    print("Страна: \(keys), Столица: \(value)")
}

var array : [String] = []

//for keys in countryCapitals.keys {
//    array.append(keys)
//}

let arrayCountries = countryCapitals.map { (country, capital) in
    return country
}

let arrayCapitals = countryCapitals.map { (country, capital) in
    return capital
}

print("\nСтраны: \(arrayCountries)")
print("Столицы: \(arrayCapitals)")


func getCapitals(dictCountyry: [String : String], country: String) -> String? {
    return dictCountyry[country]
}

getCapitals(dictCountyry: countryCapitals, country: "Россия")
getCapitals(dictCountyry: countryCapitals, country: "Армения")

// MARK: - Task #5 [easy+] ✅

print("\nTask #5")
var productPrices : [String : Double] = ["Хлеб": 50, "Молоко": 80, "Сыр": 300, "Яблоки": 150]

if let unWrapChees = productPrices["Сыр"] {
    productPrices["Сыр"] = unWrapChees * 0.9
}

productPrices["Молоко"] = nil
productPrices["Бананы"] = 120

var index = 1
for (keys, value) in productPrices {
    print("\(index). \(keys): \(value)")
    index += 1
}

let newProductPrices = productPrices.map { (product, price) in
    return (product, price * 1.05)
}
print(productPrices)
print(newProductPrices)

print("\nУвеличение цена на 5%:")
for (keys, value) in newProductPrices {
    print("\(index). \(keys): \(value)")
    index += 1
}

print()
func checkProduct(productList: [String : Double], product: String) -> Double {
    guard let price = productList[product] else {
        print("Ошибка. Отствует товар 📦")
        return 0
    }
    return price
}

checkProduct(productList: productPrices, product: "Сыр")
checkProduct(productList: productPrices, product: "сыр")

// MARK: - Task #6 [easy+]

print("\nTask #6")
let inputString = "Hello, world"
let filterInput = inputString.filter { $0 != " " }
var dictStrCount = [Character: Int]()
for i in filterInput {
    if let count = dictStrCount[i] {
        dictStrCount[i] = count + 1
    } else {
        dictStrCount[i] = 1
    }
}
print("Словарь:")
print(dictStrCount)

let sortedDict = dictStrCount.sorted { $0.value > $1.value}
print("\nОтсортированный словарь:")
print(sortedDict)


// MARK: - Task #7 [

print("\nTask #7")
let studentGrade = ["Анна": 85, "Борис": 90, "Виктория": 95, "Дмитрий": 90]
var gradeName = [Int : [String]]()

for (keys, value) in studentGrade {
    if var name = gradeName[value] {
        name.append(keys)
        gradeName[value] = name
    } else {
        gradeName[value] = [keys]
    }
}

func getNameGrade(studentGrade: [String : Int], grade: Int) -> [String] {
    var arrayName = [String]()
    for (keys, value) in studentGrade {
        if grade == value {
            arrayName.append(keys)
        }
    }
    return arrayName
}

let testGrade = getNameGrade(studentGrade: studentGrade, grade: 95)
print(testGrade)

// MARK: - Task #8 [medium+] ✅

print("\nTask #8")
var departmentA : [String : String]  = ["Иванов": "Отдел A", "Петров": "Отдел A", "Сидоров": "Отдел A"]
var departmentB = ["Смирнов": "Отдел B", "Кузнецов": "Отдел B", "Иванов": "Отдел B"]
var departmentGlobal = [String : String]()

departmentGlobal = departmentA

for (keys, value) in departmentB {
    departmentGlobal[keys] = value
}

func printDepartment(department: [String : String]) {
    for (keys, value) in department {
        print("Сотрудник: \(keys), Отдел: \(value)")
    }
}

printDepartment(department: departmentGlobal)

print()
var newDepartment = [String : [String]]()
for (keys, value) in departmentGlobal {
    if var name = newDepartment[value] {
        name.append(keys)
        newDepartment[value] = name
    } else {
        newDepartment[value] = [keys]
    }
}

for (keys, value) in newDepartment {
    print("\(keys), Сотрудники: \(value)")
}

// MARK: - Task #9 [hard]

print("\nTask #9")
let studentGrades = [
    "Анна": ["Математика": 90, "Физика": 85],
    "Борис": ["Математика": 75, "Физика": 80, "Химия": 95],
    "Виктория": ["Физика": 100, "Химия": 100]
]

func studentGPA(studentGrades: [String: [String: Int]]) {
    var studentGPA = [String : Int]()
    var lessonsGPA = [String : Int]()
    var sumMath = 0, sumPhysics = 0, sumChimia = 0, lessonGPA = 0
    for (name, lesson) in studentGrades {
        var sumGrade = 0, lessonCount = 0, gpa = 0
        var countStudent = studentGrades.count
        for (lessonName, grade) in lesson {
            lessonCount = lesson.count
            sumGrade += grade
            gpa = Int(Double(sumGrade / lessonCount))
            
            // MARK: Средний балл по каждому предмету
            
            if lessonName == "Математика" {
                sumMath += grade
                lessonGPA = Int(Double(sumMath / countStudent))
            }
            if lessonName == "Физика" {
                sumPhysics += grade
                lessonGPA = Int(Double(sumPhysics / countStudent))
            }
            if lessonName == "Химия" {
                sumChimia += grade
                lessonGPA = Int(Double(sumChimia / countStudent))
                
            }
            lessonsGPA[lessonName] = lessonGPA
        }
        studentGPA[name] = gpa
    }
    
    var maxGPA : Int?
    var studentName : String = ""
    for (name, gpa) in studentGPA {
        if gpa > 90 {
            print("Студент: \(name), средний балл - \(gpa), результат отличный (90+) ")
        } else {
            print("Студент: \(name), средний балл - \(gpa)")
        }
        if maxGPA == nil || maxGPA! < gpa {
            maxGPA = gpa
            studentName = name
        }
        
    }
    print("\nНаивысший средний балл - \(maxGPA!) (\(studentName))")
    
    print()
    for (lesson, gpa) in lessonsGPA {
        print("Предмет, \(lesson), средний балл - \(gpa)")
    }
}

studentGPA(studentGrades: studentGrades)

