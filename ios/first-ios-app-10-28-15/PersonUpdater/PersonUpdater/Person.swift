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
    
    // Create an initializer function that sets initial values to attributes on object creation
    // This concept is the same as constructors in Java
    init (firstName: String, lastName: String, age: Int) {
        /* 
         * self refers to the object that is calling this method - in the case of an initlializer,
         * self is just the object being created.
         * The variable names preceded by self refer to the newly-created Person object's attributes.
         * The variable names not preceded by self refer to the parameters passed into the function.
         */
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
    
}