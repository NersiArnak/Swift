import UIKit

// MARK: - Task: #1 [easy] ✅

print("Task #1")
var numbers = [Int]()
numbers.append(2)
numbers.append(4)
numbers.append(6)
numbers.append(8)
numbers.append(10)
print(numbers)
print("Второй элемент массива: \(numbers[1])")
let lastNumber = numbers.endIndex - 1
numbers[lastNumber] = 12
print("Вывод массива после изменения последнего элемента: \n\(numbers)")
numbers.remove(at: 0)
print("Массив после удаления первого элемента: \n\(numbers)")
numbers.insert(0, at: 0)
print("Массив после добавления первого элемента: \n\(numbers)")


// MARK: - Task #2 [easy+] ✅

print("\nTask #2")

let temperatures : [Double] = [18.5, 20.0, 22.3, 19.0, 17.8]

func checkTemperatures(temperatures: [Double]) {
    var total : Double = 0
    var countAboveAverage = 0
    var average : Double = 0
    var minNum : Double? = nil
    var maxNum : Double? = nil
    for i in temperatures {
        // MARK: нахождение min числа в массиве
        //temperatures.min()
        if minNum == nil || minNum! < i {
            minNum = i
        }
        
        // MARK: нахождение max числа в массиве
        //temperatures.max()
        if maxNum == nil || maxNum! > i {
            maxNum = i
        }
        
        total += i
        average = total / Double(temperatures.count)
        
        if i > average {
            countAboveAverage += 1
        }
    }
    print(String(format: "Средняя температура %.1F°C", average))
    print("Наименьшее температура - \(minNum!)°C")
    print("Наибольшее температура - \(maxNum!)°C")
    print("\(countAboveAverage) - Именно столько значений в массиве превышают среднюю температуру")
}

checkTemperatures(temperatures: temperatures)

// MARK: - Task #3 [medium] ✅

print("\nTask #3")

let words =  ["apple", "banana", "apricot", "cherry", "avocado"]
var minWords : String? = nil
var newArrayWords = [String]()

func checkWords(arrayWords: [String]) {
    var aWords = arrayWords.filter {$0.prefix(1) == "a"}
    var sortedWords = arrayWords.sorted(by: {$0 < $1})
    for (index, i) in arrayWords.enumerated() {
        print("Число символов в \(index+1) слове: \(i.count)")
    }
    
    print("\nСлова, начинающиеся на букву 'a': \(aWords)")
    print("Отсортированный массив: \(sortedWords)")
}
checkWords(arrayWords: words)

// MARK: - Task #4 [medium] ✅

print("\nTask #4")

let optionalNumbers = [nil, 3, 7, nil, 2, 5, nil, 10]
let dontNil = optionalNumbers.compactMap { $0 }
let sortedNumbers = dontNil.sorted(by: <)

print("Отсортированный массив по возрастанию: \(sortedNumbers)")

let sumNumbers = sortedNumbers.reduce(0) {$0 + $1}
let newArrayNum = sortedNumbers.map {String("Число: \($0)")}
print(newArrayNum)

// MARK: - Task #5 [medium] ✅

print("\nTask #5")
let grid = [
    [1, 2, 3],
    [2, 4, 6],
    [3, 6, 9]
]

func drowGrid(_ grid: [[Int]]) -> Int {
    var sumElements = 0
    
    for i in 0..<grid.count {
        for j in 0..<grid[i].count {
            print(grid[i][j], terminator: " ")
            sumElements += grid[i][j]
        }
        print()
    }
    return sumElements
}
print("\nСумма всех элементов: \(drowGrid(grid))")

let grid5x5 = [
    [1, 2, 3, 4, 5],
    [2, 3, 4, 5, 6],
    [1, 2, 3, 4, 5],
    [2, 3, 4, 5, 6],
    [1, 2, 3, 4, 5]
]

print()
drowGrid(grid5x5)
print("\nЭлемент на по позиции [2][2]: \(grid5x5[2][2])")

let angelina = 12
var arch = angelina
arch = 13
