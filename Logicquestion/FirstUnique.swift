//
//  FirstUnique.swift
//  Logicquestion
//
//  Created by Manjeet kumar on 17/10/24.
//

import Foundation
// MARK: Return first uniqe char from a string
func returnFirstUniqeChar(str: String)-> Character? {

    var dic = [Character: Int]()
    for char in str {
        dic[char, default: 0] += 1
    }
    for char in str {
        if dic[char] == 1 {
            return  char
        }
    }
    return nil
}

//let firstUniqueChar = returnFirstUniqeChar(str: "manjeetkmtdia")
// print(firstUniqueChar ?? "T")

// MARK: Return second uniqe char from a string
func returnSecondUniqeChar(str: String)-> Character? {
    var dic = [Character: Int]()
    for char in str {
        dic[char, default: 0] += 1
    }
    var isSecondUniqe = 0
    for char in str {
        if dic[char] == 1 {
            if isSecondUniqe == 1 {
                return  char
            }
            isSecondUniqe += 1
        }
    }
    return nil
}

//let firstUniqueChar = returnSecondUniqeChar(str: "manjeetkmtdia")
// print(firstUniqueChar ?? "T")

// MARK: Return first uniqe number from a string
func returnFirstUniqueNumber(integerArray: [Int])-> Int? {
    var dic = [String: Int]()

    for value in integerArray {
        dic["\(value)", default: 0] += 1
    }
    print(dic)

    for value in integerArray {
        if dic["\(value)"] == 1 {
            return value
        }
    }
    return nil
}

//let firstUniqueChar = returnFirstUniqueNumber(str: "manjeetkmtdia")
// print(firstUniqueChar ?? "T")

// MARK: Return second  uniqe number  from a string
func returnSecondUniqueNumber(integerArray: [Int])-> Int? {
    var dic = [String: Int]()

    for value in integerArray {
        dic["\(value)", default: 0] += 1
    }
    print(dic)
var isScondUniqueFound = 0
    for value in integerArray {
        if dic["\(value)"] == 1 {
            if isScondUniqueFound == 1 {
                return value
            }
            isScondUniqueFound += 1
        }
    }
    return nil
}
//let array = [4,5,6,7,4,3,2,6,7,5]
//let firstUnique = returnSecondUniqueNumber(integerArray: array)
//print(firstUnique ?? 0)


// MARK: Count for perticular occurrence a charachter from a string
func countPerticularCharInString(str: String) {
    var dic = [Character: Int]()
    for char in str {
        dic[char, default: 0] += 1
    }
    for  value in dic {
        print("Character \(value.key) is comes \(value.value) in this String")
    }
}

// MARK: FInd out the Non matching chara or uniqu char frm a string
func nonmatchingCharFromString(str: String) {
    var dic = [Character: Int]()

    for char in str {
        dic[char, default: 0] += 1

    }
    for value in dic {
        if value.value == 1 {
            print("This char is unique in this string \(value)")
        }

    }
}

// nonmatchingCharFromString(str: "manjjeet")

// MARK:  How Many Constants And How Many vowels in this string
func howManyAerConstantsAndHowManyvowels(str1: String) {
  var totalVowels = 0
  var totalConstant = 0
for item in  str1 {
  let loweCaseChar =  "\(item)".lowercased()
if  loweCaseChar == "a" || loweCaseChar == "e" || loweCaseChar == "i" || loweCaseChar == "o" || loweCaseChar == "u" {
totalVowels += 1
} else {
totalConstant += 1
}
}
print("Vowel: - \(totalVowels) , Constant:- \(totalConstant)")

}

// howManyAerConstantsAndHowManyvowels(str1: "manjjeet")
