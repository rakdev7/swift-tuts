//: Playground - noun: a place where people can play

import UIKit




var arr:[String] = [String]()

arr .insert("rak", at: 0)

arr .insert("5th element", at: 1)

arr.append("appending element")





















/*
 In Swift we have Classes and Structures used Interchangeably according to requirement
 
 Classes are reference types (NSString,NSMutableString)
 
 Structures are Value types (String)
 
 
 
 */

//let s:String = "hello"

func calling() {
    
    var s1:NSString = "hello"
    called(s: &s1)
    print(s1)
    
}
func called( s:inout NSString) {
    
    s = "sasdsad"
    print(s)
}
calling()

//Declaring a class

class MyClass:NSObject {
    var a:Int?
    
}

let instance1 = MyClass()
instance1.a = 20
let instance2 = instance1

instance2.a = 30

instance1.a

struct MyStruct {
    var z:Int
}

let struct1 = MyStruct(z: 20)
var struct2 = struct1

struct2.z = 50
struct2.z
struct1.z


//Concatination

var c1:String = "hello"
let c2:String = "World!"

c1.append(c2)

c1+c2

let c3:NSString = "hello"
let c4:NSString = "World!"

let result = c3.appending(c4 as String)

//as operator is used for type casting in  Swift
(c3 as String)+(c4 as String)

print(c3.length)
print(c1.characters.count)

for eachCharter in c1.characters {
    print(eachCharter)
}



func myRectangle(length:Double,breadth:Double)->(Double,Double) {
    
    return(length*breadth,2*(length+breadth))
}

let  rect1 = myRectangle(length: 20.0, breadth: 30.0)

rect1.0
rect1.1


//Nested Functions :Function inside another fuction 
func a() {
    
    func b() {
        
    }
    
}














