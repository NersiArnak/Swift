var dict : [String: String] = ["машина" : "car", "мужик" : "man"]
dict["машина"]

let dict2 = [0 : "car", 1 : "man"]
dict2[0]

let dict3 : Dictionary<String, Double> = ["машина" : 100, "мужик" : 200]
dict3["машина"]
dict3.count

//dict["комп"] = "mac"

dict.updateValue("mas", forKey: "комп")
print(dict)

//let comp : String? = dict["комп"]

if let comp = dict["комп"] {
    print(comp)
}
else {
    print("комп нет")
}

dict.removeValue(forKey: "комп")
print(dict)

dict["hello"] = "world"
print(dict)

for i in dict.keys {
    print(i, dict[i]!)
}

for (key, value) in dict {
    print(key, value)
}

//hw
print("\n№1")
var dictStudent = ["Нерсисян Арнак" : 5, "Беляева Ангелина" : 5, "Коробейников Александр" : 3, "Шаповалов Борис" : 4, "Никитюк Максим" : 3]

dictStudent["Нерсисян Арнак"] = 4
dictStudent["Беляева Ангелина"] = 4
dictStudent["Новый ученик"] = 4
dictStudent.removeValue(forKey: "Шаповалов Борис")
print(dictStudent)

var sum : Double = 0
var index : Double = 0
for (key, value) in dictStudent {
    sum += Double(value)
    index += 1
}
print("Сумма оценок студентов равна - \(sum), средний балл - \(sum / index)")

print("\n№2")

let dictMonth : [String: Int] = ["Январь" : 31,  "Февраль" : 29, "Март" : 31, "Апрель" : 30, "Май" : 31, "Июнь" : 30, "Июль" : 31, "Август" : 31, "Сентябрь" : 30, "Октябрь" : 31, "Ноябрь" : 30, "Декабрь" : 31]

print("\nВывод используя tuple (key, value")
for (key, value) in dictMonth {
    print("\(key) - \(value)")
}

print("\nВывод используя keys")
for key in dictMonth.keys {
    if let value = dictMonth[key] {
        print("\(key) - \(value)")
    }
}

print("\n№3")
let x = ["a","b","c","d","e","f","g","h"]
let y = [1,2,3,4,5,6,7,8]
var dictXY : [String : Bool] = [:]
for (index, i) in x.enumerated() {
    for j in y {
        let coordinate = String(i) + String(j)
        if (index + j) % 2 == 0  {
            let res = true
            dictXY[coordinate] = res
        }
        else {
            let res = false
            dictXY[coordinate] = res
        }
    }
}
var i = 0
for (key, value) in dictXY {
    i += 1
    print("\(i) - \(key)(\(value))")
}


