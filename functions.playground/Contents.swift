//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func calculateRectArea(length:Double,breadth:Double) -> Double {

    let area = length * breadth


return area

}

calculateRectArea(length: 10, breadth: 20)


//declaring an inout parameter
//In-out parameters persist the value outside the function  also

func updateBalance( bal:inout Double){
 
bal += 30
    
    
}
var mybal = 10.5

updateBalance(bal: &mybal)


print(mybal)

//Default parameters
//Function with default arguments
func companyName(name:String = "Phillips", rating:Int = 1)
    {

print("the company \(name) has rating \(rating)")


}

companyName()
companyName(name: "apple", rating: 5)

//Function with variadic parameters
//variadic means many. This is used to declare a function which takes 'n' number of parameters
//Variadic parameters are declared using three closed periods.(...)

func sumOfNumbers(numbers:Int ...) -> Int{


    var sum = 0
    for eachnumber in numbers{
    
    sum += eachnumber
    
    }
return sum
}

sumOfNumbers(numbers: 3,4,5,6,7,8)
sumOfNumbers(numbers: 1)

//func returning multiple values using tuples
//tuples group multiple values into a single compound value.the value inside tuple can be of any type.

func gramsConvert (weight:Float ) ->(tonnes : Float, kilograms: Float, pounds:Float ){


 let tonnes = weight*0.001
 let kilograms = weight*1
 let pounds = weight*2.20462

return(tonnes,kilograms,pounds)
}

gramsConvert(weight: 2.3)
let conversiontuple = gramsConvert(weight: 1000)

conversiontuple.tonnes
conversiontuple.pounds
conversiontuple.kilograms

//Nested functions

func myOuterFunc(a:Int , b:String ) -> String
{
    func myInnerFunc() -> String{
    
    return b+"\(a)"
        
    }

    
    return myInnerFunc()
    
}

myOuterFunc(a: 200, b: "rakesh")










		