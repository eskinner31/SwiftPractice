//: Playground - noun: a place where people can play

import UIKit

//Struct like enum but more powerful. Allows you to store information in properties.

//Unlike the enums you DON'T USE case statments, actually give it an attribute

struct Contact {
    let firstName: String
    let lastName: String
    var type = "Friend" //Default Value
}

//Initializing a variable with the Contact Struct
var person = Contact(firstName: "Eugene", lastName: "Skinner", type:"Friend")


//Accessing the values
person.firstName
person.lastName

//Changing the values
//person.firstName = "William"
//person.firstName

//IMPORTAT TERMS
// Structs
// Properties
// Instance

//Default Values

var secondPerson = Contact(firstName: "Derp", lastName: "tastica", type:"friend")


//WITH INITIALIZER
struct ContactTwo {
    let firstName: String
    let lastName: String
    var type: String //Default Value can be set here or in the init method.
    
    init(fName: String, lName: String){
        self.firstName = fName
        self.lastName = lName
        self.type = "friend" //initialized default value
    }
}

var personThree = ContactTwo(fName: "Loga", lName: "Berry")

personThree.type


//Struct Methods 
struct ContactThree {
    let firstName: String
    let lastName: String
    var type: String //Default Value can be set here or in the init method.
    
    init(fName: String, lName: String){
        self.firstName = fName
        self.lastName = lName
        self.type = "friend" //initialized default value
    }
    
    func fullName() -> String {
        return self.firstName + " " + self.lastName
    }
}

var personFour = ContactThree(fName: "Eugene", lName: "Skinner")
personFour.fullName()






