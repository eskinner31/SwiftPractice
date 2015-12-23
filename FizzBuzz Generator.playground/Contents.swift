//: Playground - noun: a place where people can play

import UIKit

for number in 1...25{
    if (number%3 == 0 && number%5 == 0){
        print("fizzBuzz")
    }else if (number % 3 == 0){
        print("fizz")
    }else if (number % 5 == 0){
        print("buzz")
    }
}

