//
//  SomeOthere.swift
//  Logicquestion
//
//  Created by Manjeet kumar on 18/10/24.
//

import Foundation

// MARK: Find the total number which remainder is zero
func returnTotalNumber(divideBy: Int, limit: Int) -> Int {
    var total = 0
    for number in 1..<limit {
        if  number % divideBy == 0 {
            total +=  number
        }
    }
    return total
}
// print(returnTotalNumber(divideBy: 3, limit: 1000))


// MARK: Fibonacci Numbers
// 1, 2, 3, 5, 8, 13, 21
func getFibonacciNumbers(firstNum: Int, secondNum: Int, limit: Int) -> [Int]{
    var firstNumLocal = firstNum
    var secondNumLocal = secondNum
    var FibonacciNumbersArray = [firstNumLocal, secondNumLocal]
    for index in  firstNum..<limit {
        let temp = firstNumLocal + secondNumLocal
        if firstNumLocal != index {
            secondNumLocal =  firstNumLocal
        }
        firstNumLocal = temp
        FibonacciNumbersArray.append(firstNumLocal)
    }
    return  FibonacciNumbersArray
}
// print(getFibonacciNumbers(firstNum: 1, secondNum: 2, limit: 10))


// MARK: Even Fibonacci Numbers
// 1, 2, 3, 5, 8, 13, 21
func getEvenFibonacciNumbers(firstNum: Int, secondNum: Int, limit: Int) -> [Int]{
    var firstNumLocal = firstNum
    var secondNumLocal = secondNum
    var FibonacciNumbersArray = [firstNumLocal, secondNumLocal]
    for index in  firstNum..<limit {
        let temp = firstNumLocal + secondNumLocal
        if firstNumLocal != index {
            secondNumLocal =  firstNumLocal
        }
        firstNumLocal = temp
        if firstNumLocal %  2 == 0 {
            FibonacciNumbersArray.append(firstNumLocal)
        }
    }
    return  FibonacciNumbersArray
}
// print(getFibonacciNumbers(firstNum: 1, secondNum: 2, limit: 10))
