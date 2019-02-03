//  MyPlayground.playground
//
//  Created by Thapa, Ritesh R on 1/25/19.
//  Copyright © 2019 Thapa, Ritesh R. All rights reserved.

import UIKit
var str = "Hello, playground"

//1
func sumOfEvens(array: [Int]) -> Int { // passing single parameter array of an Int
    var results: Int = 0
    for value in array[0..<array.count]{
        if value%2 == 0 {
            results += value
        }
    }
    return results
}

//2
var mySums: Int = sumOfEvens(array: [12, 4, 3, 5, 4, 6, 9, 7, 17, 13])
print("Sums of even Numbers(A): \(mySums)")
mySums = sumOfEvens(array: [1, 5, 9, 13, 11, 7, 9, 3])
print("Sums of even Numbers(B): \(mySums)")
mySums = sumOfEvens(array: [8, 4, 6, 8, 4, 6, 4, 6, 8])
print("Sums of even Numbers(C): \(mySums)")
mySums = sumOfEvens(array: [1])
print("Sums of even Numbers(D): \(mySums)")
mySums = sumOfEvens(array: [2])
print("Sums of even Numbers(E): \(mySums)")
mySums = sumOfEvens(array: [])
print("Sums of even Numbers(F): \(mySums)")

//var arrayList: [[Int]] = [[12, 4, 3, 5, 4, 6, 9, 7, 17, 13], [1, 5, 9, 13, 11, 7, 9, 3], [8, 4, 6, 8, 4, 6, 4, 6, 8], [1], [2], []]
//
//for myArrays in arrayList {
//    print("Total sum if even numbers is \(sumOfEvens(array: myArrays))")
//}

//3
func rangeArray(startArr: Int, endArr: Int) -> [Int]{
//  var arrSize = (endArr-startArr+1)
    var newArr: [Int] = []
    let emptyArr: [Int] = [] // not being mutated, using let
    var begin: Int = startArr

    if startArr > endArr {
        return emptyArr
    } else {
        while begin <= endArr {
            newArr.append(begin)
            begin += 1
        }
    }
    return newArr
}

//// case where first parameter > second parameter
//print(rangeArray(startArr: 9, endArr: 6))
//
//// case returning range of an array
//print(rangeArray(startArr: 1, endArr: 9))
//print(rangeArray(startArr: -6, endArr: 4))
//print(rangeArray(startArr: 0, endArr: 10))

//4
var myArrays: [Int] = []

myArrays = (rangeArray(startArr: 12, endArr: 17))
print("Range Array (A): \(myArrays)")
myArrays = (rangeArray(startArr: -2, endArr: 7))
print("Range Array (B): \(myArrays)")
myArrays = (rangeArray(startArr: 12, endArr: 12))
print("Range Array (C): \(myArrays)")
myArrays = (rangeArray(startArr: 17, endArr: 12))
print("Range Array (D): \(myArrays)")
myArrays = (rangeArray(startArr: -2, endArr: -4))
print("Range Array (E): \(myArrays)")
myArrays = (rangeArray(startArr: 0, endArr: 0))
print("Range Array (F): \(myArrays)")

//myArrays = (rangeArray(startArr: 12, endArr: 17), rangeArray(startArr: -2, endArr: 7),rangeArray(startArr: 12, endArr: 12), rangeArray(startArr: 17, endArr: 12), rangeArray(startArr: -2, endArr: -4), rangeArray(startArr: 0, endArr: 0))

//print(myArrays.0, myArrays.1, myArrays.2, myArrays.3, myArrays.4, myArrays.5)

//Create a function named averages that has a single parameter that is a non-empty array of Double and returns a 3-tuple of Double where the first element of the 3-tuple is the mean of the values in the input array, the second element of the 3-tuple is the median of the values in the input array (which is the middle value if the collection is of odd length and the mean of the middle two values if the collection is of even length), and the third element of the 3-tuple is the mode of the values in the input array (which the commonly occurring value, returning the median of all of the modes if there is more than one). Note that the array is not sorted.

func averages(array: [Double]) -> (mean: Double, median: Double){
    
    let count = Double(array.count)
    
    // mean
    var totalSum = 0.0
    for arr in array{
        totalSum += arr
    }
    let currentMean = totalSum/count
    
    // median
    var currentMedian = 0.0
    let sortedArr = array.sorted()
    
    print(sortedArr.count)
    
    if sortedArr.count % 2 == 0 {
        currentMedian = (sortedArr[sortedArr.count / 2] + sortedArr[(sortedArr.count/2) - 1]) / 2
    } else {
        currentMedian = (sortedArr[(sortedArr.count - 1) / 2])
    }
    

    
    
    
    
    return (currentMean, currentMedian)
}

print(averages(array: [1,2,3,4]))



//func mode(array: [Double]) -> Double {
//
//    var nameCountDic = [Double: Int]()
//
//
//    for name in array {
//        if let count = nameCountDic[name] {
//            nameCountDic[name] = count + 1
//        }else{
//            nameCountDic[name] = 1
//        }
//    }
//
//    var mostCommonName = 0
//
//    for key in nameCountDic.keys {
//        print("\(key): \(nameCountDic[key]!)")
//    }
//
//    return Double(mostCommonName)
//}
//
//mode(array: [1,2,3,4,4])




func mode(numbers: [Double]) -> Double {
    var occurrences: [Double : Int] = [:]
    let sortedArr = numbers.sorted()
    
    for number in sortedArr {
        if let count = occurrences[number] {
            occurrences[number] = count + 1
        } else {
            occurrences[number] = 1
        }
    }
    
    var highestPair: (key: Double, value: Int) = (0, 0)
    
    print(highestPair)
    
    for (key, value) in occurrences {
        highestPair = (value > highestPair.value) ? (key, value) : highestPair
        print(highestPair)
    }
    
    return Double(highestPair.key)
}


print(mode(numbers: [1,2,5,5,2,5,2,2,5]))
