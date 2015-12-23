//: Playground - noun: a place where people can play

import UIKit


//specifying an array of strings
var todo: [String] = ["Return Calls", "Write Blog Post", "Cook Dinner"]
todo
todo[0]

todo += ["Pickup Laundry"]
todo[3]
todo.count

//modifying arrays
todo.append("Edit Blog Post")
todo[2] = "Clean Dishes"


let item = todo.removeLast()
item

todo.removeAtIndex(1)

todo.insert("Call Mom", atIndex: 1)

