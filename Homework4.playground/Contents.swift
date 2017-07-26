//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func compareAmd(arrayA : [Int], arrayB : [Int]){
    var A = arrayA.count
    var B = arrayB.count
    var newArray = [Int](repeatElement(1, count: A+B))
    for i in 0..<A{
        newArray[i] = arrayA[i]
    }
    print (newArray)
    print (A)
    print (B)
    print (newArray.count)
    var C = B+A
    for i in A..<C {
        newArray[i] = arrayB[i-A]
    }
    print(newArray)
    var z : Int = 0
    for i in 0..<C-1 {
        for j in 0..<(C-1-i) {
            if newArray[j] > newArray[j+1] {
                z = newArray[j]
                newArray[j] = newArray[j+1]
                newArray[j+1] = z
            }
        }
    }
    print(newArray)
}

compareAmd(arrayA: [1,2,3,4,7], arrayB: [3,5,6,3,4,3])
