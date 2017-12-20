//: Playground - noun: a place where people can play

import UIKit


// Extensions in Swift-Adding functionality to existing classes
// Extensions are similar to objective c categories; they add new functionality to the existing class,structure, enumerations
// Extensions are mainly useful for adding functionality using retro-active modeling(When the source code of class structure and enums is not accessible)


extension String {


    var length:Int{
    
        get{
            return self.characters.count
    
    }
    }

    //Note- Extensions do not support stored properties; they support only computed properties
    //Computed property can't be a constant-it should be  variable

   private var reversedString:String{
    
        let reversed = String(self.characters.reversed())
        return reversed
    }
    
    
    func isStringPalindrome() -> Bool{
    
        if self == self.reversedString {
            return true
        }
        return false
    }
    
}


let myString = "liril"

myString.length

myString.isStringPalindrome()


class journey{

    let place:String
    let fare:Double
    
    init(journeyTo:String, fare:Double) {
        self.place = journeyTo
        self.fare = fare
    }

}

//class extensions can also have initializers but extensions do not support designated initializers; it only supports convenience initializers
//convenience initializeers should end up calling their designated initializer or it's super class designated initializer

//value type extensions support  designated initializers only


extension journey{

    convenience init(travellingTo:String, baseFare:Double) {
        self.init(journeyTo:travellingTo,fare:baseFare)
    }

}

extension Array{
   
    init(myArray:[Any]) {
        self.init()
    }
  
}

//extensions with mutating functions
//instance methods added using extensions to any value type can change the instance itself by using mutating functions
//mutating functions are declared using mutating keyword before the function declaration

extension String{

    mutating func appendLastName(lastName:String){
    
    self += lastName
    
    }





}

var mutatingString = "Rakesh"

mutatingString.appendLastName(lastName: "Ravva")
print(mutatingString)

mutatingString.append("hello")

print(mutatingString)



//extensions with subscript
//subscripts are shortcutsfor accessing the members of collections and sequences
//extensions  can also have subscript functions

extension String{

    subscript(i:Int)-> Character{
    
    return self[self.index(self.startIndex, offsetBy: i)]
    
    
    }

}


mutatingString[3]









