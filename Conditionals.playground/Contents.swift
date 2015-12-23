//: Playground - noun: a place where people can play

import UIKit

let cards = 1...13

//If ELSE STATEMENT

for card in cards {
    if card == 11 {
        print("Jack")
    } else if card == 12{
        print("Queen")
    } else if card == 13 {
        print("King")
    }else {
        print(card)
    }
}


//SWITCH statements look very similar to javascript


for card in cards {
    switch card {
    case 11 :
        print("Jack")
    case 12 :
        print("Queen")
    case 13 :
        print("King")
    default:
        print(card)
    }
}


for card in cards {
    switch card {
    case 11...13:  //Case logic variation for consecutive numbers
        print("Trump Cards")
    default:
        print(card)
    }

}

for card in cards {
    switch card {
    case 1,11,12,13:  //Case logic variation for non-consecutive numbers
        print("Trump Cards")
    default:
        print(card)
    }
}


// COMPARISONS AND LOGICAL OPERATORS

//Logical Operators
//&& is "AND"
//|| is "OR"
//! is "NOT"

//Comparisons
1 == 1 //true because 1 is equal to 1
2 != 1 //true because 2 is not equal to 1
2 > 1 //true, because 2 is greater than 1
1 < 2 //true, becasue 1 is less than 2
1 >= 1 // true, because 1 is greater than or equal to 1
2 <= 1 // false, because 2 is not less than or equal to 1

var distance = 124

if distance < 5 {
    print("\(distance) miles is near")
} else if distance >= 5 && distance <= 20{
    print("\(distance) miles is close")
}else{
    print("\(distance) miles is far")
}