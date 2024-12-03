//
//  Palindrom.swift
//  Logicquestion
//
//  Created by Manjeet kumar on 17/10/24.
//

import Foundation

// MARK: Reverse the string
func reverseTheString(Str: String) ->String {
    var arrayOfStr = Array(Str)
    var count = Str.count - 1

    for index in 0..<arrayOfStr.count / 2  {
        let temp = arrayOfStr[index]
        arrayOfStr[index] = arrayOfStr[count]
        arrayOfStr[count] = temp
        count -= 1
    }

    return "\(arrayOfStr)"
}

//let reversedString = reverseTheString(Str: "mohitkumar")
//print(reversedString)


// MARK: String is Palindrom or not
func strIsPalimdrom(str: String)-> Bool {
    var strArray = Array(str)
    var count = strArray.count - 1
    for index in 0..<strArray.count/2 {
        let temp = strArray[index]
        strArray[index] = strArray[count]
        strArray[count] = temp
        count -= 1
    }

return String(strArray) == str
}
//print(strIsPalimdrom(str: "manam"))
