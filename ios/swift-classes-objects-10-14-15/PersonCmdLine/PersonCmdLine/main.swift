import Foundation

var response: String

// Creates an empty array of Person objects
var people: [Person] = []

// This is the same as a do while loop in Java
// The body of the loop is executed once before evaluating the condition to see if it should continue
repeat {
    // This is the body of the loop
    var newPerson = Person()
    newPerson.enterInfo()
    
    // Add the newly created Person to the people array
    people.append(newPerson)
    
    newPerson.printInfo()
    
    print("Do you want to enter another name? (y/n)")
    response = input()
    
} while(response == "y") // This is the condition - the user must enter in a "y" to continue entering people

// people.count gets the number of elements in the people array
print("Number of people in the database: \(people.count)")

// Loop through each element of the people array and print its attribute values
// At each iteration, assign the current Person object in the array to variable onePerson
for onePerson in people  {
    onePerson.printInfo()
}