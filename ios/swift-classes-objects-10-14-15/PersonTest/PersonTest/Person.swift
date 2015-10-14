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
    
    // Declare a function called input() that can be called on person objects
    // The function does not take any parameters, but it does return a String
    func input() -> String {
        
        // Set up an object called keyboard to handle input from the keyboard
        let keyboard = NSFileHandle.fileHandleWithStandardInput()
        
        // Actually gets input from the keyboard
        let inputData = keyboard.availableData
        
        // Converts the inputData into a string - don't worry about what the string encoding actually does yet
        let rawString = NSString(data: inputData, encoding: NSUTF8StringEncoding)
        
        
        /* 
         * The if-let control structure tests whether an optional actually has a value
         * An optional is a variable that can hold a value or can hold nothing - a null pointer
         * Optionals must be checked before accessed and handled if they are not currently holding a value
        */
        
        // Checks if the variable rawString is holding a value since it is an optional
        if let string = rawString {
            // If rawString did hold a value, trims the whitespace characters from the beginning and end of rawString and the function returns the result
            return string.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        } else {
            // If rawString did not hold a value (it had a value of null), have the function return the string "Invalid Input"
            return "Invalid input"
        }
    }
    
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