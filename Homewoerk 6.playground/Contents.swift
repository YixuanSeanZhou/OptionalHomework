//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func BigAndSmall (a: [Int]){
    var c : Int = a.count
    var z : Int = 0
    var new = [Int](repeatElement(0, count: c))
    for i in 0...c-1 {
        new[i] = a[i]
    }
    for i in 0..<c-1 {
        for j in 0..<(c-1-i) {
            if new[j] > new[j+1] {
                z = new[j]
                new[j] = new[j+1]
                new[j+1] = z
            }
        }
    }
    print(new)
    print("The smallest is \(new[0])")
    print("The largest is \(new[c-1])")

}

BigAndSmall(a: [1,3,5,6,2,4,0,30,2,100,38,29])
