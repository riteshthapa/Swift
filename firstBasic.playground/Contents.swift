import UIKit

var str: String = "Hello, playground"

var myInt: Int = 9

//var otherInt: UInt

let changingInt: Int = 11

myInt = 22 //; otherInt = 5

myInt = Int(9.8)

var emptyStr = String()

var emptyStr2 = ""

var multiStr: String = """
first line
new line
another line
"""
str.count

print(multiStr)

print("the value of myInt is \(myInt)")

var(x,y) = (4,7)

var (first, second, third): (Int, Double, String) = (1, 2.0, "3")

var triple: (Int, Double, String) = (1, 2.0, "3")

print(triple.1)

var otherTriple: (first: Int, second: Double, third: String) = (1,2.0,"3")

print(otherTriple.second)

x = 6

/*
 4...8 // includes 4,5,6,7,8
 4..<8 //includes 4-7 not 8
 0..<str.count
 4... // 4 and forever
 ...8 // upto 8
 ..<8 // upto 7 not 8
 */

(x > 0) ? "hi" : "bye"

if x < 0 {
    
}
else {
    
}

/*
 // pretest loop
 while x > 0{
 
 }
 
 // post test loop
 repeat {
 
 } while x > 0
 */

var a: [Int] = [Int]()
a.append(4)
a.append(6)

for i in a {
    print(i)
}

// shorthand for doing the same thing like above
for elm in 0..<a.count {
    print(a[elm])
}

var s: Set = Set<Int>()

s.insert(5)
s.insert(7)
s.insert(3)

var d: Dictionary<Int,String>


/*
 for _: Int in 0...9 { //"_" anonymous variable
 print("hello")
 }
 */

