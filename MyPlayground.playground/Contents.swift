//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"

func paidrome (string : String) {
    var count: Int = 0
    var i: Int = 0
    for char in string.characters{
        count += 1
    }
    var forString = [Character](repeatElement("a", count: count))
    var backString = [Character](repeatElement("a", count: count))
    
    for char in string.characters{
        forString[i] = char
        backString[count-i-1] = char
        i += 1
    }
    if forString == backString{
        print("true")
    }
    else{
        print("falser")
    }
    
}
paidrome(string: "anna")


