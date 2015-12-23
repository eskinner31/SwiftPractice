//: Playground - noun: a place where people can play

import UIKit

//Functions and Optionals

//Optionals  

//NOTES
//Can either have a value or a nil
//Adding a ? to a type makes it an optional
//! unwraps from an optional..
//SAFEST METHOD TO UNWRAP is using an if let <constantName> = <function()> etc. etc..


func sendNoticeTo(aptNumber: Int){
    print(aptNumber)
}

func findApt (aptNumber : String) -> String? { //? is how we compute the optional, allowing flexibility in the values when coding
    let aptNumbers = ["101","202","303","404"]
    for tempAptNumber in aptNumbers {
        if (tempAptNumber == aptNumber){
            return aptNumber
        }
    }
    return nil
}

//let culprit = findApt("404")
//culprit




// original unwrapping with the if let function
if let culprit = findApt("505") {
    print("apt found: \(culprit)")
}


func findAp (aptNumber : String) -> String? { //? is how we compute the optional, allowing flexibility in the values when coding
    let aptNumbers = ["101","202","303","404"]
    for tempAptNumber in aptNumbers {
        if tempAptNumber == aptNumber{
            return aptNumber
        }
    }
    return nil
}

//Optional chaining --> Not the same as the tutorial... Have to look at Swift 2.0 documentation.
if let culp: Int? = Int(findAp("202")!){
    sendNoticeTo(culp!)
}

//FUNCTION CHALLENGE

func isDivisible (first: Int, second: Int) ->Bool? {
    if first % second == 0{
        return true
    }else{
        return nil
    }
}

if let result: Bool? = isDivisible(2, second: 2){
    print("Divisible")
}else{
    print("Aren't Divisible")
}
