import Foundation

// This function returns a that the user will input on the command line
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