//: Playground - noun: a place where people can play

import UIKit

var x = 1 + 2

let height = 12 //In Feet
let width = 10 //In Feet

let area = height * width //considered a constant --> Formula

// 1 sq. meter = 1 sq. foot / 10.764
let areaInMeters = Double(area) / 10.764


let chairWidth = 3
let spaceRemaining = width % chairWidth
let chairs = width/chairWidth


//More Caluculations

var y = 100 + 100 - 5 * 2 / 3 % 7

//Priority and Left to Right.. Typical programming hierarchy... Just use parens like normal



//Unary Operators work with a simpleton
// ++ increment operator
// -- decrement operator
// - negative operator
// ! not operator or negates the value


var levelScore = 0

levelScore = levelScore + 1
levelScore

var totalScore = 0
totalScore = levelScore++
totalScore


let on = true
let off = !true


