//HomeWork14
import Foundation
struct Student {
    var firstName : String {
        willSet(newFirstName) {
            print("will set " + newFirstName + " instead of " + firstName)
        }
        didSet(oldFirstName) {
            print("did set " + firstName + " instead of " + oldFirstName)
            
            firstName = firstName.capitalized
        }
    }
}

var student = Student(firstName: "Name")
print(student.firstName)
student.firstName = "Bob"
student.firstName = "sob"
print(student.firstName)

