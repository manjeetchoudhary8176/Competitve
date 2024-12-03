//
//  OtherQuestion.swift
//  Logicquestion
//
//  Created by Manjeet kumar on 19/10/24.
//

import Foundation

// 1.  MARK: How many time number are coming in the string
func findOutHowManyNumberInTheStrng(str: String)-> Int {
    var tatalTimeNumber = 0
    for char in str  {
        if  char.isNumber {
            tatalTimeNumber += 1
        }
    }
    return tatalTimeNumber
}

//let homeManyTimegetNumber = findOutHowManyNumberInTheStrng(str: "maje34j5j46")
//print(homeManyTimegetNumber)


// 2. MARK: How many time latter are coming in the string
func findOutHowManyLatterInTheStrng(str: String)-> Int {
    var tatalTimeNumber = 0
    for char in str  {
        if  char.isLetter {
            tatalTimeNumber += 1
        }
    }
    return tatalTimeNumber
}
//let homeManyTimegetNumber = findOutHowManyNumberInTheStrng(str: "maje34j5j46")
//print(homeManyTimegetNumber)


// 3 MARK: How do you total all of the matching integer elemten in an array
func totalMachingNumberInArray(array: [Int]) {

    var dic = [Int: Int]()
    var totalOfAllMatcingNumber = 0
    for value in array {
        dic[value, default: 0] += 1
    }

    for item in dic {
        if item.value > 1 {
            totalOfAllMatcingNumber += item.key * item.value
        }
    }
    print(totalOfAllMatcingNumber)
}
// totalMachingNumberInArray(array: [4,5,4,3,2,3, 5])


// 4 MARK: How do you reverse an array
func reverseAnArray(array: inout [Int]) {
    var count = array.count - 1
    for index  in 0..<array.count/2 {
        let temp = array[index]
        array[index] = array[count]
        array[count] = temp
        count -= 1
    }
}
//var array = [2,4,5,6,8,9, 0, 10]
//reverseAnArray(array: &array)
//print(array)


// 5 MARK: Find out the bigest or meximum number from the array

func bigestNumberFromAnArray(array: [Int]) {
    var bigestNumber = array.first
    for index in 0..<array.count {
        for innerIndex in index..<array.count {
            if bigestNumber! < array[innerIndex]  {
                bigestNumber = array[innerIndex]
            }
        }
    }
    print("Bigets numeber frm array is: \(bigestNumber ?? 0)")
}
// bigestNumberFromAnArray(array: [10,300,5,70,8,9, 20, 1000])

// MARK: How do you sorted an array in to ascending order  also that is (Bubble sort)

func sortArrayIntoAscending(array: inout [Int]) {

    for index in 0..<array.count {
        // This second loop for set larg digit end of the array  that's whay we run the loop ( -1 -index)
        for innerIndex in 0..<array.count - 1 - index {
            if  array[innerIndex] >  array[innerIndex + 1 ] {  // For descending you just put (<) insted of the (>)
                let temp =  array[innerIndex]
                array[innerIndex]  =   array[innerIndex + 1 ]
                array[innerIndex + 1 ] = temp
            }
        }
    }
    print("Here is new ascending array :- \(array)")
}
//var array = [0,2,4,5,6,8,9,0,10,0,0,0,0]
//sortArrayIntoAscending(array: &array)

// MARK: How do you sorted an string in to ascending order also that is (Bubble sort)
func stringInAscendingOrder(str: inout String) {
    var strArray = Array(str)
    for index in 0..<strArray.count {
        for innerIndex in 0..<strArray.count - 1 - index {
            if strArray[innerIndex].lowercased() >  strArray[innerIndex + 1].lowercased() { // For descending you just put (<) insted of the (>)
                let tempBigaValue =  strArray[innerIndex]
                strArray[innerIndex] =  strArray[innerIndex + 1]
                strArray[innerIndex + 1] =  tempBigaValue
            }
        }
    }
    str = String(strArray)

}
//var str = "EeeDdddCBA"
//stringInAscendingOrder(str: &str)
//print(str)


// MARK: Find the averager number of the array element
func averageOfNumber(array: [Int]) {
    var totalSum =  Int()
    for item in array {
        totalSum += item
    }
    print("Average of the number is :- \(totalSum / array.count)")
}
//var array = [4,7,10,]
//averageOfNumber(array: array)


// MARK: How do you find the factorial of an integer?
func factorialOfInteger(factorialNo: Int) {
    guard factorialNo > 0 else {return}
    var factorail = factorialNo
    for index in 1..<factorialNo {

        factorail = factorail * (factorialNo - index )
    }
    print("Integer number \(factorialNo) fcatorial is \(factorail)")
}
//factorialOfInteger(factorialNo: 5)

// MARK: Find out the second larg number from an array

func getSecondLargNumberFromAnArray(array: inout [Int])-> String {
    guard array.count > 1 else {return "Array size is small to get second element"}
    for index in 0..<array.count {
        for innerIndex in 0..<array.count - 1 - index {
            if array[innerIndex] < array[innerIndex + 1] {
                let temp =  array[innerIndex]
                array[innerIndex] = array[innerIndex + 1]
                array[innerIndex + 1] = temp
            }
        }
    }
    return "Secon larg number from this array is:- \(array[1])"
}

//var array = [4,6,9,2,6,10, 589,683,85]
//print(getSecondLargNumberFromAnArray(array: &array))

// MARK: Remove all specific character from string
func removeTheSpecificCharFromString(str: String, removeChar: Character)-> String {

    var removeindex = ""
    for char in str {
        if char != removeChar {
            removeindex.append(char)
        }
    }
    return removeindex
}
// print(removeTheSpecificCharFromString(str: "manjeet", removeChar: "e"))

// MARK: Check any number is prime number  or not
func checkAnyNumberIsPrimeOrNot(number: Int)-> Bool {
    if number == 0 || number == 1 {return false}
    if number == 2 {return true}
    if number%2 == 0 {return false}
    for index in 3...number {
        if  index ==  number {
            return  number%index == 0
        } else if number%index == 0 {
            return false
        }
    }
    return true
}

// print(checkAnyNumberIsPrimeOrNot(number: 13))


func returnFirstuniqeCharFromString(str:String)-> String {
var firstUnique = ""
var dic : [String: Int] =  [String: Int]()

for item in str {
  dic["\(item)", default: 0] += 1
}

 for item in str {
if dic["\(item)"] == 1 {
  firstUnique = "\(item)"
  return firstUnique
}
 }
 return firstUnique
}
