//: Playground - noun: a place where people can play

import UIKit

class Product {
    var title: String
    var price: Double = 0.0
    
    
    //Initializer
    init(title: String, price: Double){
        self.title = title
        self.price = price
    }
    
    //Adding a method
    func discountedPrice(percentage: Double) -> Double {
        return price - (price * percentage / 100)
    }
}

class Furniture: Product {
    let height: Double
    var width: Double
    var length: Double
    var surfaceArea: Double {  // GETTER & SETTER METHOD
        get{
            return length * width
        }
        set {
            length = sqrt(newValue)
            width = sqrt(newValue)
        }
        
    }//Return a value based on other stored values --> Must be a var
    
    init (title: String, price: Double, height: Double, width: Double, length: Double){
        self.height = height
        self.width = width
        self.length = length
        super.init(title: title, price: price)
    }
}

let table = Furniture(title: "Coffee Table",
                      price: 300,
                      height: 5,
                      width: 5,
                      length: 10)

table.surfaceArea //GETTER METHOD
table.width
table.length

class Electronic: Product {
    var batteries: Bool? //Optional Property
}

let toy = Electronic(title: "RC Car", price: 79)

toy.batteries = true
if let batteries = toy.batteries {
    if batteries {
        print("Batteries Included")
    }
}




