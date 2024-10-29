import Foundation

//cw
struct Student {
    var firstName: String {
        willSet {
            print("will set " + newValue + " instead of " + firstName)
        }
        didSet(oldFirstName) {
            print("did set " + firstName + " instead of " + oldFirstName)
            firstName = firstName.capitalized
        }
    }
    
    var lastName : String {
        didSet(oldFirstName) {
            lastName = lastName.capitalized
        }
    }
    
    var fullName : String {
        get {
            return firstName + " " + lastName
        }
        set {
            print("Full name " + newValue)
            let words = newValue.components(separatedBy: " ")
            if words.count > 0 {
                firstName = words[0]
            }
            if words.count > 1 {
                lastName = words[1]
            }
        }
    }
}

var student = Student(firstName: "Alex", lastName: "Skutorenko")

student.firstName
student.lastName

student.firstName = "Bob"
student.fullName

student.fullName = "Ivan Ivanov"

