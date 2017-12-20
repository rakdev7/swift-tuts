//: Playground - noun: a place where people can play

import UIKit

//extensions confirming to protocols

//extensions can also confirm to protocols similar to classes, structures and enums


 protocol Increment {

 func increment()-> Int

}


//extension Int:Increment{
//
//    func increment() -> Int {
//        return self+20
//    }
//
//
//
//}

let myNumber = 50
//myNumber.increment()

//protocol conforming to other protocols

protocol ToString:Increment{

    func toString()->String

}


extension Int:ToString{
     func toString() -> String {
        
        return "\(self)"
    }

    func increment() -> Int {
        return self+20
    }


}

myNumber.toString()
myNumber.increment()

//protocols as types

//A protocol can also be treated as type similar to class
//This is a powerful feature in swift where in the types can also have behaviour 
//A variable can be used to store a value and also exhibit behavior

protocol Add {

func add()->Any

}


extension Int:Add{

    func add() -> Any {
        return self + 20
    }



}


extension String:Add{

    func add() -> Any {
        return self + "sam"
    }
}


var a:Add = 10

print(a.add())

a = "sagar"

print(a.add())

//Checking protocol conformance
//To type cast protocol object we can use 'is' and 'as?' operators

protocol StringProtocol {

    func stringReverse(aStr:String)-> String


}


class MyClass:StringProtocol{


    func stringReverse(aStr: String) -> String {
        
        return String(aStr.characters.reversed())
    }
}


func checkProtocolConformance(cls:Any)->Bool{

return cls is StringProtocol


}

var s1 = MyClass()

var s2 = NSString()

print("does s1 conforms to protocol: \(checkProtocolConformance(cls: s1))")

print("does s2 conforms to protocol: \(checkProtocolConformance(cls: s2))")


//protocol polymorphism 
//Protocol also exhibits polymorphism i.e., single interface to multiple types

class MyClass1:StringProtocol{
    
    func stringReverse(aStr: String) -> String {
        
        return aStr
    }
    
}

var s3 = MyClass1()

let typeCollection:[StringProtocol] = [s1,s3]

for eachType in typeCollection{
    
    
    print("\(eachType) instance with string Reverse \(eachType.stringReverse(aStr: "Hello")) ")
    
    
}

















