//HomeWork8
print("task1")
var dictStudents = ["Нерсисян Арнак" : 5, "Беляева Ангелина" : 5, "Мкртчян Рафаель" : 4, "Бурунов Сергей" : 3, "Алла Пугечева" : 2]
var sumStudents = 0
var gpaStudents : Double = 0
dictStudents["Нерсисян Арнак"] = 4
dictStudents["Беляева Ангелина"] = 4
dictStudents["Литвин Антон"] = 2
dictStudents["Галкин Макс"] = 2
dictStudents.removeValue(forKey: "Литвин Антон")

for (key, value) in dictStudents {
    sumStudents += value
}
gpaStudents = (Double(sumStudents) / Double(dictStudents.count))
print("Общая сумма оценок - \(sumStudents)")
print("GPA - \(gpaStudents)")

print("\ntask2")
let dictMonthDays = ["January" : 31, "February" : 28, "March" : 31, "April" : 30, "May" : 31, "June" : 30, "July" : 31, "August" : 31, "September" : 30, "October" : 31, "November" : 30, "December" : 31]

print("1 - спобос вывода(key, value):")
for (month, days) in dictMonthDays {
    print("Месяц - \(month), количество дней - \(days)")
}

print("\n2 - спобос вывода(keys):")
for i in dictMonthDays.keys {
    print("Месяц - \(i), количество дней - \(dictMonthDays[i]!)")
}

print("\ntask3")
let masLetters = ["a", "b", "c", "d", "e", "f", "g", "h"]
var dictResults = [String : Bool]()

for (index, i) in masLetters.enumerated() {
    for e in 0..<masLetters.count {
        if (index + e) % 2 == 0 {
            dictResults["\(i)\(e)"] = true
        }
        else {
            dictResults["\(i)\(e)"] = false
        }
    }
}

var i = 0
for key in dictResults.keys {
    i += 1
    print("\(i) - \(key)(\(dictResults[key]!))")
}

//ClassWork8
let setArray : Set<Int> = [1, 2, 3, 3, 4, 5, 1] //Множества

for i in setArray {
    //print(i)
}

var dict = ["Машина" : "Car", "Мужик" : "Man"]
//let dict2 : [Int: String] = [0 : "cat", 1: "man"]
//let dict3 : Dictionary<String, Double> = ["a" : 2.0]

var dict4 = [String : String]()
dict["Комп"] = "computer"
dict.keys
dict["Комп"] = "Mac"
print(dict)

dict.updateValue("Mac", forKey: "Комп")
let comp : String? = dict["Комп"]
//dict["Мужик"] = nil
dict.removeValue(forKey: "Машина")
print(dict)
dict = [:]
print(dict)
dict["hello"] = "world"
print(dict)

for (key, value) in dict {
    print(key, value)
}

for key in dict.keys {
    print(key, dict[key]!)
}
