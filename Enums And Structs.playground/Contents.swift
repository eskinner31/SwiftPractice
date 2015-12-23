//: Playground - noun: a place where people can play

import UIKit

//Enums and Structs Data Types


//Enum - ONE TYPE TO GROUP SEVERAL THINGS TOGETHER

//eg: Types of Vehicles, Categories of Products, Classification of Species, Roles of User

//let days = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]

//ENUM VERSION

//enum Day {
//    case Monday = 1 //Can be comma separated values
//    case Tuesday
//    case Wednesday
//    case Thursday
//    case Friday
//    case Saturday
//    case Sunday
//}

//ENUM with RAW VALUES
//Raw values must be unique.


enum Day: Int {
    case Monday = 1 //Can be comma separated values
    case Tuesday = 2
    case Wednesday = 3
    case Thursday = 4
    case Friday = 5
    case Saturday = 6
    case Sunday = 7
    func dayTilWeekend(day: Day) -> Int {
        return Day.Saturday.rawValue - day.rawValue
    }
}


//Using these Raw Values

func dayTillWeekend(day: Day) -> Int {
    return Day.Saturday.rawValue - day.rawValue
}

dayTillWeekend(Day.Friday)

if let firstDayOfWeek = Day(rawValue: 1){
    dayTillWeekend(firstDayOfWeek)
}





func weekdayOrWeekend(dayOfWeek: Day) -> String {
    
    switch dayOfWeek {
    case .Monday,.Tuesday,.Wednesday,.Thursday,.Friday:
        return "It's a weekday"
    case .Saturday, .Sunday:
        return "Yay! It's the weekend!"
    }
}





var today = Day.Monday
today = .Tuesday

weekdayOrWeekend(Day.Monday)


//Associated Values

enum Status {
    case Success(String)
    case Failure(String)
}

//NEED TO REVIEW THE STATEMENT BELOW

let downloadStatus = Status.Failure("Network Connection Unavailable")



switch downloadStatus{
case .Success(let success):
    print(success)
case .Failure(let failure):
    print(failure)
}


//Enums and their Methods  --> Checkt the Day Enum for the addition of the dayTilWeekend Method. USAGE of the added method can be seen below

today = Day.Monday  //Redeclared the value or "today" for usage in the demonstration.
today.dayTilWeekend(today)


enum Name: String {
    case Eugene = "Eugene"
    case Paul = "Paule"
    case Robert = "Robert"
    
    init() {   // Initializer Method
        self = .Eugene
    }
}

var beast = Name() // Initialized Enum with the default value


