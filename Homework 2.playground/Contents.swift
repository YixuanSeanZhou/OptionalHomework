//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
func checkTwoD (array: [[Int]]){
    array.count
    var i = 0
    var j = 0
    for a in array{
        i += 1
    }
    for a in array[0]{
        j += 1
    }
    var newOne = [Int](repeatElement(1, count: j))
    var newTwo = [[Int]](repeatElement(newOne, count: i))
    print(newTwo.count)
    print(newTwo)
    newTwo[0][0] = array[0][0]
    for k in 1..<j{
        newTwo[0][k] = newTwo[0][k-1] * 2
     }
    for m in 1..<i{
        newTwo[m][0] = newTwo[m-1][0]*2
        print(m)
        for n in 1..<j{
            newTwo[m][n] = newTwo[m][n-1]*2
           
        }
    }

    for m in 0..<i{
        for n in 0..<j{
            
            if array[m][n] == newTwo[m][n]{
                
            }
            else{
                print("false")
                return
            }
        }
    }
    print("true")
}

var array : [[Int]] = [[1,2,3],[3,4,5]]
var i : Int = 0
for a in array{
    i += 1
}
for a in array[0]{
    i += 1
}
print (array[0][1])
print (i)
checkTwoD(array: [[1,2,3],[2,4,6]])
