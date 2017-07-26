//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func checkIn(strArray:[Character], char:Character, k : Int) -> Bool{
    //print(strArray)
    for a in 0..<k{
        
        if char == strArray[a]{
            //print ("false")
            return false
            
        }
        else{
            
        }
    }
   // print ("true")
    return true
    
}
func removeDup(string : String) -> String{
    var i : Int = 0
    for _ in string.characters{
        i += 1
    }
    //print(i)
    var a : Int = 0
    var str = [Character](repeating: " ", count: i)
    for char in string.characters{
        str[a] = char
        a += 1
    }
    //print (str)
    var strOutput = String()
    var j : Int = 0
    for char in string.characters{
        //print (char)
        //print(str[j])

        if checkIn(strArray: str, char: char, k: j){
            strOutput.append(char)
           // print (strOutput)
        }
        else{
            //print("false")
        }
        j += 1
    }
 
    return strOutput
    
}

print(removeDup(string: "abcabcd"))
