//: Playground - noun: a place where people can play

import UIKit

//Functions are first class citizens
func performMagic(thingy: String) -> String{
    return thingy
}

performMagic("Hey")

//I am assigning the function to a variable.  Note that this does not call the function, just assigns it to a new variable.
let magicFunction = performMagic

//Here is the actual call
magicFunction("Hey")

//So I can declare variable and make the make function as well
//This is using closure and note the syntax change
var newMagicFunction = {
    (thingy:String) -> String in
    return thingy
}

var adderFunction: (Int, Int) -> Int = {
    (a: Int, b: Int) -> Int in
    return a + b
}

adderFunction(1,3)

var b = 3
var anotherAdderFunction: (Int) -> Int = {
    (a:Int) -> Int in
    return a + b
}
anotherAdderFunction(1)

b = 5
anotherAdderFunction(1)

class number{
    var b: Int = 3
}

var aNumber = number()

//Here we are referencing the number class inside of the function by reference
var oneMoreAdderFunction: (Int) -> Int = {
    (a:Int) -> Int in
    return a + aNumber.b
}

oneMoreAdderFunction(1)

aNumber.b = 5
oneMoreAdderFunction(1)
