//: Playground - noun: a place where people can play

import UIKit

//Functions

let height = 12
let width = 10

//Defining a function

//func <functionName>(parameter: type, paramter: type){}
func calculateArea(height: Int, width: Int){
    let area = height * width
    print("the area of the room is \(area)")
}

calculateArea(10, width: 12)  //excuting

//Rules to naming functions
//1. start with letter and not a number
//2. Preferably use camel casing
//3. name must describe the function

                                                    //-> Int asserts that the return should be type of Int
func calculateAreaWithReturn (height: Int, width: Int) -> Int{
    return height * width
}

print("Area = \(calculateAreaWithReturn(20, width:20))")


//FUNCTIONS AND OPTIONALS
func calcArea(height: Int, width: Int, unit: String) {
    print("\(height * width) \(unit)")
}

calcArea(20, width: 20, unit: "ftsq");


//TUPLES "TOO-PLES" -->
func searchNames(name: String) -> (found: Bool, description: String) { //(Bool,String) --> Return Type of Tuple with the expected types we want to see in the result.
    let names = ["Billy", "Brenda","Bobby", "Sue"]
    var found = (false, "\(name) is not a Treehouse Teacher") // <== Here is an example of a tuple.. Rememeber you have to declare your return type as a Tuple
    for n in names {
        if n == name {
            found = (true, "\(name) is a Treehouse Teacher") //Our response as a Tuple
        }
    }
    return found
}

searchNames("John")
let result = searchNames("Bobby") //Assigning our result to a constant

result.0 //accessing the "indexed" values of the tuple
result.1 //accessing the "indexed" values of the tuple

//Naming our Tuple A.K.A "Decomposing our Tuples
let(found,description) = searchNames("Brenda") //two constants
found  //notice how these constants have been assigned the result of the tuple from the function.
description

//Alternatively we can also give the tuple in the function a "property name" so to speak. NOTICE WE CAN STILL ACCESS THEM BY ".0" or ".1" but down below check the example....
let res = searchNames("Sue")
res.found // accessing the assigned names in the function for the values.
res.description


