//: Playground - noun: a place where people can play

import UIKit

let x = 1;
print(x.description)

let constantString = "Hi" //let is for constants
var regularString = "Non optional string" //This string cannot be nil
var str: String? = "Hello, playground"  //this is an optional which means you can have it be either a string or a null, which is called nil.  Wihtout it you cannot have a null value in a regular var
str = nil
 print(str)

func checkNil() {
    if let myStringConstant = str {
        regularString = myStringConstant
    }
    
    guard let myStringGuard = str else {return}
    print(myStringGuard)
}


//for loop
//do not need to declare counter, but you could do
//var counter = 0
for counter in 0..<10{
    //Guard protects a certain section of code from some condition.  In this case it will only process the values not equal to 2 and execute continue exiting out of this loop for the condition of two.  You need some exit clause in the else like break, continue, and return.
    guard counter != 2 else {continue}
    //if statement
    if counter != 5 {
        print(counter)
    }
        
}

//Array
var animals = ["chickens", "cows", "ducks"]
animals[1] = "geese"

// This is how maps are done (key value pair) and are called dictionaries
var cuteness = [
    "chickens": "somewhat cute",
    "ducks" : "cute",
    "geese" : "scary"
]

cuteness["ducks"]

for animal in animals{
    cuteness[animal]
}


//functions
//Arrow operator tells return value
//Second parameter shows a feature where you can either pass in a weight or there can be a default value assigned.
//I am sure this cuts
func indexOfSpecies(species : String, weight :Int = 0) -> Int{
    switch species{
        case "duck" :
            return 0 + weight
        case "human" :
            return 100 + weight
        default :
            return -100 + weight
    }
}

//After the first parameter, you have to add the name of the parameter you are passing in
indexOfSpecies("duck", weight: 10)
indexOfSpecies("human")
indexOfSpecies("cows")

//2DArray
var myTwoDArray = [
    [3 , 15, 3],
    [26 , 3, 4, 2],
    [14 , 8, 22]
]


//Couple of things here.  inout keywork means that instead of passing by copy, it will pass by reference.  Swift passes by copy as default. In this case the method call also needs a $ sign as seen below
//Second thing you can specificy a name for the argument reference as well as what it will be called internally such as passedInTwoDArray and twoDInternal
func raiseLowerNumbers(inout passedInTwoDArray twoDInternal:[[Int]], to number:Int){
    //Going through the 2DArray and setting a floor to the number being passed in.
    for i in 0..<twoDInternal.count{
        for j in 0..<twoDInternal[i].count{
            if twoDInternal[i][j] < number {
                twoDInternal[i][j] = number
            }
        }
    }
}

var finishedTwoDArray = raiseLowerNumbers(passedInTwoDArray: &myTwoDArray, to: 5)

print(finishedTwoDArray)

