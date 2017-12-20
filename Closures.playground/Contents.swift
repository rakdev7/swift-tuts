//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//Closure is a self contained block of code
//Closures in swift are similar to blocks in objective c

//Declaring simple closure

let sayHello = {print("Hello Rakesh")}

sayHello()

var myClosure:(Int, Int)-> Int

myClosure = {

a,b in
    
    return a+b

}

myClosure(10,20)
myClosure(0,1)

//shorthand notation

var myClosure1:(Int, Int)-> Int

myClosure1 = {
    
    $0+$1

}

myClosure1(1,2)

var myclosure3 = {
    (a:Int,b:Int) -> Int in
    
    return a+b
}

myclosure3(4,5)

//Functions with closures as arguments

func myFunctionWithClosure(a:Int, b:String, c:(String)->Void)->Void {

let temp = b+"\(a)"
    
    c(temp)

}

myFunctionWithClosure(a: 10, b: "hello") { (result) in
    print(result)
}

myFunctionWithClosure(a: 20, b: "Hi") { (closureResult) in
    print(closureResult)
}

//


var numbers = [11,5,10]

numbers.sorted()
numbers.sort { (a, b) -> Bool in
    a>b
}

var names = ["satish","jasti","nishanth","rakesh","teja","a","b","boy","bone","bat"]

names.sort { (a, b) -> Bool in
    a<b
}




