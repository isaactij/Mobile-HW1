//
//  main.swift
//  TijerinaIsaac-hw1
//
//  Created by Tijerina, Isaac G on 1/23/18.
//  Copyright © 2018 Tijerina, Isaac G. All rights reserved.
//

import Foundation

func main(){
    var firstCar:Automobile = Automobile.create(_make: "Maserati", _model: "GranTurismo", _numberOfDoors: 2, _speed: 67)
    var secondCar:Automobile = Automobile.create(_make: "Honda", _model: "Accord", _numberOfDoors: 4, _speed: 128)
    var thirdCar:Automobile = Automobile.create(_make: "Tesla", _model: "S 90", _numberOfDoors: 2, _speed: 35)
    var randomNum:Int
    for i in 0...9{
        randomNum = Int(randomValueBetween(min: 0, max: 16))
        firstCar.increaseSpeed(speedChange: randomNum)
        randomNum = Int(randomValueBetween(min: 0, max: 16))
        secondCar.increaseSpeed(speedChange: randomNum)
        randomNum = Int(randomValueBetween(min: 0, max: 16))
        thirdCar.increaseSpeed(speedChange: randomNum)
    }
    print(firstCar.description())
    print(secondCar.description())
    print(thirdCar.description())
    var firstCarSpeed:Int = firstCar.Get_speed()
    var secondCarSpeed:Int = secondCar.Get_speed()
    var thirdCarSpeed:Int = thirdCar.Get_speed()
    var winningCarMake:String = ""
    var winningCarModel:String = ""
    if(firstCarSpeed > secondCarSpeed && firstCarSpeed > thirdCarSpeed){
        winningCarMake = firstCar.Get_make()
        winningCarModel = firstCar.Get_model()
    }
    print(winningCarMake + " " + winningCarModel + " won!!")
    
}

func randomValueBetween(min:UInt32, max:UInt32) -> UInt32 {
    var randomValue:UInt32 = min + arc4random_uniform(UInt32(max - min + 1))
    return randomValue
}

