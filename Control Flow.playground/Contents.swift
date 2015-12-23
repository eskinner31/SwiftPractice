//: Playground - noun: a place where people can play

import UIKit

// for-in loops

var todo : [String] = ["return calls", "write blog", "cook dinner", "pickup laundry", "buy bulbs"]

for item in todo {
    print(item)
}

//implied format of the function LET is implied

//for constant in array {
//    
//}


//Looping through a range of number "beginning ... end

for number in 1...10{
    print("\(number) times 2 is \(number*2)")
}

//... is inclusive range INCLUDES 1-10
//..< is a half-closed range 1-9 EXCLUDES 10

for num in 1...10{
    print("\(num) * 7 =\(num*7)")
}



//WHILE LOOPS



var index = 0
while index < todo.count {
    print(todo[index])
    index++
}

//Do While Loop

//repeat{
//    print(todo[index])
//    index++
//} while index < todo.count


//Traditional for loop

for var i = 0; i < todo.count; i++ {
    print(todo[i])
}


