//: Playground - noun: a place where people can play

import UIKit
import Foundation


var myString = "Hello"
let characters:Array = [Character](myString.characters)


var max = characters.count

var newarr:Array = [Character]





for var i in 0..<max{
  
    newarr[i] = characters[max - i]
    
    i = i+1
    max = max-1
    }


