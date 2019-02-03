import UIKit

var str = "Hello, playground"

func sayHelloWorld() -> String {
    return "Hello, World!"
}

str = sayHelloWorld()

print(str)

func greet(person: String) -> String{
    return "Hello, \(person)!"
}

greet(person: "me")

func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted{
        return "Hello again. \(person)!"
    }
    else {
        return greet(person: person)
    }
}

greet(person: "you", alreadyGreeted: false)

func printGreeting(person: String) -> Void {
    print("Hello, \(person)!")
}

printGreeting(person: "me")

// finding min value in an array
func min(array:[Int]) -> Int {
    var currentMin = array[0]
    for value in array[1..<array.count]{
        if value < currentMin{
            currentMin = value
        }
    }
    return currentMin
}

min(array: [8, -6, 2, 109, 3, 71])

func minMax(array:[Int]) -> (min: Int, max: Int){
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count]{
        if value < currentMin{
            currentMin = value
        }
        else if value > currentMax{
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let mm = minMax(array: [8, -6, 2, 109, 3, 71])
print("max is \(mm.max) and min is \(mm.min)")

//------different ways to do the parameter-------//

/*
func greet(person: String, hometown: String) -> String {
    return "Hello \(person)! Glad you could vist from \(hometown)"
}
//output
print(person: "me", homwtown: "eau claire"))
*/

/*
 func greet(_person: String, _hometown: String) -> String {
 return "Hello \(person)! Glad you could vist from \(hometown)"
 }
 //output
 print(greet("me", "eau claire"))
 */

func greet(greetee person: String, place hometown: String) -> String {
    return "Hello \(person)! Glad you could vist from \(hometown)"
}

print(greet(greetee: "me", place: "eau claire"))
