//: Playground - noun: a place where people can play

import UIKit

//KEYWORD PRODUCT as our Data Type think amazon


//Struct DataType
//structs have designated initializer


struct Product {
    let title: String
    let price: Double
}

let quadcopter = Product(title: "Quadcopter", price: 499.99)


//Class DataType
//Class needs it's own initializer or inital values

class ProductTwo {
    var title: String = " "  //Initial or Default value
    var price: Double = 0.0  //Initial or Default value
    
    
    //Initializer
    init(title: String, price: Double){
        self.title = title
        self.price = price
    }
    
    //Adding a method
    func discountedPrice(percentage: Double) -> Double {
        return price - (price * percentage / 100) // Can refer to the stored property, and can modify the stored property if the stored value is a variable and not a constant.
    }
}

//custom designated initializer in order to protect values


//INHERITANCE


//Clothing is a child class of ProductTwo, Also Known as a subclass. ProductTwo is known as the BASE Class, parent or the SuperClass to Clothing.

enum Size{
    case Small, Medium, Large
    init(){
        self = .Small
    }
}

//subclass can have init methods
class Clothing: ProductTwo {
    var size = Size()
    let designer: String
    
    init (title: String, price: Double, designer: String){
        self.designer = designer
        super.init(title: title, price: price) //must come last.
    }
    
    convenience init(title: String){
        self.init(title:title,price:99,designer:"Calvin Klein")
    }
    
    //In order to get POLYMORPHISM to occur in the method, must use the override keyword.
    override func discountedPrice(percentage: Double = 10.0) -> Double {
        return super.discountedPrice(percentage) //SUPER allows me to access methods off the super class preventing me from repeating myself. DRY
    }
}

var tshirt = Clothing(title: "Vintage", price: 49.99, designer: "Prada")
tshirt.discountedPrice()

//RULES on OVERRIDING METHODS
//1. Method Signatures (name, properties and return types) must match
//2. Must use the keyword override
//3. When referring to the superclass use the keyword 'super'


//DESIGNATED INITIALIZERS GOTO FOR CREATING INSTANCES OF GIVEN CLASS

//CONVENIENCE INITIALIZER can only call designated initializer in the current class.


