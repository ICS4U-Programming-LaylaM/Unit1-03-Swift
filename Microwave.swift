import Foundation
// Create time variable
var time = 0.0

while true {
    // Get food item
    print("What food will you be eating (sub, pizza, soup)? ", terminator: "")
    let userFood = readLine()

    // Check if userFood is any of the 3
    // Input is also not case sensitive anymore
    if userFood!.uppercased == "SUB" {
        time = 60.0
        break
    } else if userFood!.uppercased == "PIZZA" {
        time = 45.0
        break
    } else if userFood!.uppercased == "SOUP" {
        time = 105.0
        break
    } else {
        // Error message if it's none of the 3
        print("Please enter one of the three options.\n\n")
    }
}

while true {
    // Get quantity
    print("\nHow many will you be eating (1 to 3)? ", terminator: "")
    let quantity = readLine()
    // Converts from string to int
    // Returns -1 if the input isn't an integer
    let quantityInt = Int(quantity!) ?? -1

    // Check if quantity is between 1 and 3
    if quantityInt < 1 || quantityInt > 3 {
        // Error message if quantity isn't between 1 and 3
        print("Quantity must be between 1 and 3.")
    } else {
        if quantityInt == 2 {
            // New time based on quantity
            let newTime = time * 1.5
            // Convert from seconds to minutes
            let minutes = newTime / 60
            // Convert from double to string
            let minutesString = String(minutes)
            // Display how long it needs to microwave for
            print("Mircrowave for " + minutesString + " minutes.")
        } else if quantityInt == 3 {
            // New time based on quantity
            let newTime = time * 2
            // Convert from seconds to minutes
            let minutes = newTime / 60
            // Convert from double to string
            let minutesString = String(minutes)
            // Display how long it needs to microwave for
            print("Mircrowave for " + minutesString + " minutes.")
        } else {
            // Convert from seconds to minutes
            let minutes = time / 60
            // Convert from double to string
            let minutesString = String(minutes)
            // Display how long it needs to microwave for
            print("Mircrowave for " + minutesString + " minutes.")
        }
    break
    }
}
