//cw
//let st1 = (name: "Alex", age: 20)
//let st2 = (name: "Bob", age: 22)
//let st3 = (nam: "Sam", age: 23)
//
//st3.nam

class  StudentClass {
    var name : String
    var age : Int
    
    init() {
        name = "No name"
        age = 0
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

struct StudentStruct {
    var name : String
    var age : Int
}


func addOneYear(student: StudentClass) {
    student.age += 1
}

func addOneYear(student: inout StudentStruct) {
    student.age += 1
    
}

let stClass1 = StudentClass(name: "Arnold", age: 18)
var stStruct1 = StudentStruct(name: "Arno", age: 20)

//stStruct1.age = 21

var stStruct2 = stStruct1
stStruct2.age = 21
stStruct2.name = "Sam"
print("struct: Старое имя: \(stStruct1.name), измененное имя: \(stStruct2.name)")

var stClass2 = stClass1
stClass2.age //18
stClass2.age = 21
print("class: Старый возраст: \(stClass1.age), измененный возраст: \(stClass2.age)")

stStruct1.age //20
addOneYear(student: &stStruct1)
stStruct1.age //21

stClass2.age //21
addOneYear(student: stClass1)
stClass1.age //22

var arrayStruct = [stStruct1]

arrayStruct[0].age = 50
stStruct1.age //21 не изменился!

var arrayClasses = [stClass1]
arrayClasses[0].age = 50
stClass1.age  //Стало 50!

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
    
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

someVideoMode.resolution.width = 1280
//print(someVideoMode.resolution.width)

let vga = Resolution(width: 100)

let nextVidoMode = someVideoMode

nextVidoMode.name = "Super HD"

if nextVidoMode === someVideoMode {
    print("Yes!!!")
}

//hw
print("\n№1")
struct Student {
    var name : String
    var surname : String
    var fatherName : String
    var yearOfBirth : Int
    var gpa : Double
}

var st1 = Student(name: "Arnak", surname: "Nersisyan", fatherName: "Garikovich", yearOfBirth: 2004, gpa: 4.8)
var st2 = Student(name: "Arseniy", surname: "Malicovskiy", fatherName: "Ivanovich", yearOfBirth: 1996, gpa: 4.5)
var st3 = Student(name: "Vago", surname: "Lenchi", fatherName: "Maximovich", yearOfBirth: 2009, gpa: 4.0)
var st4 = Student(name: "Kerop", surname: "Nersisyan", fatherName: "Garikovich", yearOfBirth: 1984, gpa: 4.7)

let stMagazine = [st1, st2, st3, st4]
func printElement(array: [Student]) {
    for (index, value) in array.enumerated() {
        print("\(index+1). Имя: \(value.name), Фамилия: \(value.surname), Отчетсво: \(value.fatherName), Год рождения: \(value.yearOfBirth), ГПА: \(value.gpa)")
    }
}
printElement(array: stMagazine)
print("\n№2")
let sortedGpa = stMagazine.sorted(by: {$0.gpa > $1.gpa})
print("Отсортированный массив по убыванию по gpa:")
printElement(array: sortedGpa)

print("\n№3")
let sortedSurname = stMagazine.sorted(by: {
    if $0.surname == $1.surname {
        return $0.name < $1.name
    }
    return $0.surname < $1.surname})
printElement(array: sortedSurname)

print("\n№4")
var newArray = stMagazine
newArray[0].name //Arnak
newArray[0].name = "Arno"
print("Старое имя: \(stMagazine[0].name), новое имя: \( newArray[0].name)")

