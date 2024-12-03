//
//  SwapTwoValue.swift
//  Logicquestion
//
//  Created by Manjeet kumar on 17/10/24.
//

import Foundation

// MARK: Here swap two number without taking any temporary
func swapNumberWithoutTakingAnyOtherVar(firstNumber: inout Int, seconfNumber: inout Int ) {
    firstNumber = firstNumber + seconfNumber  // Combine both
    seconfNumber = firstNumber - seconfNumber // Extract the original firstString
    firstNumber = firstNumber - seconfNumber // Extract the original secondString
}
//var firstNumber = 10
//var secondNumber = 5

//swapNumberWithoutTakingAnyOtherVar(firstNumber: &firstNumber, seconfNumber: &secondNumber )
//print("After swap number :- fisrt is \(firstNumber) , second is \(secondNumber)")

// MARK: Here swap two string without taking any temporary
func swapTwoStringWithoutTakingOtherVar(firstString: inout String, secondString: inout String) {
    firstString = firstString + secondString      // Combine both  helloworld
    secondString = String(firstString.prefix(firstString.count - secondString.count)) // Extract the original firstString
    firstString = String(firstString.suffix(firstString.count - secondString.count)) // Extract the original secondString
}

//var firstInt = "Hello"
//var secondInt = ", world"
// swapTwoStringWithoutTakingOtherVar(firstString: &firstInt, secondString: &secondInt)
//print(firstInt , secondInt)

// MARK: Here swap two number without using generic
func swapNumberUsingGeneric<T: CustomStringConvertible & LosslessStringConvertible>(fisrtValue: inout T,  secondValue: inout T) {
    fisrtValue = T("\(fisrtValue)\(secondValue)")!
    secondValue = T("\(String(fisrtValue).prefix(String(fisrtValue).count - String(secondValue).count))")!
    fisrtValue = T("\(String(fisrtValue).suffix(String(fisrtValue).count - String(secondValue).count))")!
}

//var str1 = "Hello"
//var str2 = "World"
//swapNumberUsingGeneric(fisrtValue: &str1, secondValue: &str2)
//print("str1: \(str1), str2: \(str2)")

// var int1 = 5
// var int2 = 3
//swapNumberUsingGeneric(fisrtValue: &int1, secondValue: &int2)
// print("int1: \(int1), int2: \(int2)")
