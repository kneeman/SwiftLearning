//: Playground - noun: a place where people can play

import UIKit

var maybeString: String? = "hi"

//This is the long way to use optionals.  We have to check to make sure the optional is not nil.  The ! unwraps the optional to a string
if maybeString != nil{
    maybeString!.characters.count //Gets the number of characters in the now unwrapped string
}

//optional binding helps remove this lengthy process.  This conditional will only pass if maybeString is a string and then it will unwrap and assign itself to definitelyString
if let definitelyString = maybeString{
        definitelyString.characters.count
}else{
    print("It's a nil!")
}

//Another way to do this is to use guard.  In this case guard will return if maybeString is not a string or will continue with the rest of the code if it a string.  This is errored because you cannot use return outside a function, but this is for demonstration purposes

guard let string = maybeString else {return}

//implicity unwrapped optional
//Try to avoid because if this gets a nil value it will crash when you try and get count
//Mostly used to integrate with existing Objective C code
//the ! allows this to be an optional.  Any time you see !, you know you are in dangerous
//territory so be careful.
var mostLikelyString: String! = "Hey"
mostLikelyString.characters.count




