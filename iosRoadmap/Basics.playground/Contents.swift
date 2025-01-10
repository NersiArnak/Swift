import Foundation

// MARK: - Task #1 [eazy] ✅

let myFavoriteNumber = 7
var numberOfCats = 0
numberOfCats += 1
print("Task #1")
print("my favorites number - \(myFavoriteNumber), number of cats - \(numberOfCats)")

// MARK: - Task #2 [eazy] ✅

var favoriteFruit = "banana"
favoriteFruit = "apple"
print("\nTask #2")
print("my favorite fruit - \(favoriteFruit)")

// MARK: - Task #3 [eazy] ✅

var length = 10
var width = 5
let area = length * width
print("\nTask #3")
print("area = \(area)")

// MARK: - Task #4 [eazy] ✅

var res = 12 + (4 * 2) - (8 / 4) + 5
print("\nTask #4")
print("result - \(res)")

// MARK: - Task #5 [eazy+] ✅

let test1 = 5.0
let test2 = 4.2
let test3 = 3.5
let test4 = 2.6
let averageTestScore = (test1 + test2 + test3 + test4) / 4
print("\nTask #5")
print("GPA student - \(averageTestScore)")

// MARK: - Task #6 [eazy+] ✅

var wavelength = 633.0
var frequency = 500.0
var waveSpeed = wavelength * frequency
print("\nTask #6")
print("wave speed = \(waveSpeed)")

// MARK: - Task #7 [eazy+] ✅

let lotteryNumber = arc4random_uniform(50)
let remainingNumTickets = lotteryNumber * 2
print("\nTask #7")
print("lottery number - \(lotteryNumber)")
print("remaining num tickets - \(remainingNumTickets)")

// MARK: - Task #8 [medium] ✅

let squareSide = 8.0
let square = squareSide * squareSide
let perimeter = square * 4
print("\nTask #8")
print("square = \(square)")
print("perimeter = \(perimeter)")

// MARK: - Task #9 [medium] ✅

let tupleWeather = (cityName: "Omsk", currentTemperature: 12, descriptionWeather: "cloudy")
print("\nTask #9")
print("city name - \(tupleWeather.cityName)")
print("current temperature - \(tupleWeather.currentTemperature)°C")
print("description weather - \(tupleWeather.descriptionWeather)")

// MARK: - Task #10 [medium] ✅

let userAge = 20
var isAdolescent = (13...19).contains(userAge)
print("\nTask #10")
print("user adolscent? Is \(isAdolescent)")

// MARK: - Task #11 [medium+] ✅

let friendAge = 30
var isAdolescentAll = (13...19).contains(userAge) && (13...19).contains(friendAge)
print("\nTask #11")
print("users adolscent? Is \(isAdolescent)")


// MARK: - Task #12 [hard] ✅

print("\nTask #12")
let user = "User"
let creator = "Creator"
let creatorIsUser = creator == user
print("creator is user? Is \(creatorIsUser)")
