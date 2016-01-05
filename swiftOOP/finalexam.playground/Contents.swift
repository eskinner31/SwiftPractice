//: Playground - noun: a place where people can play

import UIKit

class Shape {
    let sides : Int
    let name : String
    
    init(sides: Int, name: String){
        self.name = name
        self.sides = sides
    }
}

class Square: Shape {
    var sideLength : Double
    var area : Double {
        get {
            return sideLength*sideLength
        }
        set {
            sideLength = sqrt(newValue)
        }
    }
    
    init(sides: Int, name: String, sideLength: Double) {
        self.sideLength = sideLength
        super.init(sides: sides, name: name)
    }
    
    convenience init(sideLength: Double){
        self.init(sides: 4, name: "Sqaure",sideLength: sideLength)
    }
    

}

let square = Square(sideLength: 20)
square.name
square.sides
square.sideLength
square.area
