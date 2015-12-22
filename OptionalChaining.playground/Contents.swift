//Optional Chaining

import UIKit

class CupHolder{
    var cups:[String]? = nil
}

class Car {
    var cupHolders:CupHolder? =  nil
}

let niceCar = Car()
niceCar.cupHolders = CupHolder()


//Ugly way without optional chaining
if let cupHolder = niceCar.cupHolders{
    if var cups = cupHolder.cups{
        cups.append("Coke")
    }else{
        cupHolder.cups = ["Coke"]
    }
}
if let cupHolder = niceCar.cupHolders{
    if let cups = cupHolder.cups{
        if(cups[0] == "Coke"){
            print("Yay")
        }else{
            print("Awww")
        }
    }
}

//Better way with optional chaining
//What this does is check niceCar to check first if it has cupholders (because it could be nil) then if it does it checks to see if it has cups...then it gets the first cup.  firstCup is an optional because chaining could potentially get nil returned in each part of the chain
let firstCup = niceCar.cupHolders?.cups?[0]
niceCar.cupHolders?.cups?.append("Pepsi")
