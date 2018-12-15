import UIKit

var str = "Hello, playground"
var n = 5
print(n)

let myName : String = "Tanmay"
let temp = "\(myName)"
print(temp)

// Data Types: Int, Float, Bool, Double, String

func nameOfFunc(temp1 : Int) -> Int
{
    print("Hello : ", temp1)
    return 1000
}

nameOfFunc(temp1 : 1)

for number in 1..<10 where number%2 == 0
{
    print(number)
}
