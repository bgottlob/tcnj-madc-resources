import Foundation

/* 
 * A class is essentially a blueprint for objects
 * All objects with the same class have the same attributes, but have different values stored for each attribute
 * All objects with the same class also have access to the same functions
*/

// Declare a class called Person
class Person {
    
    // Create attribtues of Person objects with default values
    var firstName = ""
    var lastName = ""
    var age = 0
    
    // This function takes a single parameter called newFirstName of type String
    func changeFirstName(newFirstName:String) {
        // All this does is set the Person object's firstName attribute to the value of the parameter
        firstName = newFirstName
    }
    
    // This function starts a series of output and input statements that sets all the attribtues of the Person object
    func enterInfo() {
        
        print("What is the first name?")
        firstName = input()
        
        print("What is \(firstName)'s last name?")
        lastName = input()
        
        print("How old is \(firstName) \(lastName)")
        // Converts the next inputted value into an integer before storing it in a constant
        let userInput = Int(input())
        // Checks to make sure the input came out as a valid integer before assigning it to the Person's age
        if let number = userInput {
            age = number
        }
    }
    
    // Print the values of each attribute in the object
    func printInfo() {
        print("\(firstName) \(lastName) is \(age) years old")
    }
    
}