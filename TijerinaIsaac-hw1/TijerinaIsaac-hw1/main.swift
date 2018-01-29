//
//  main.swift
//  TijerinaIsaac-hw1
//
//  Created by Tijerina, Isaac G on 1/23/18.
//  Copyright © 2018 Tijerina, Isaac G. All rights reserved.
//

import Foundation

func main(){
    //Create three Automobile objects
    let firstCar:Automobile = Automobile.create(make: "Maserati", model: "GranTurismo", numberOfDoors: 2, speed: 0)
    let secondCar:Automobile = Automobile.create(make: "Honda", model: "Accord", numberOfDoors: 4, speed: 0)
    let thirdCar:Automobile = Automobile.create(make: "Tesla", model: "S 90", numberOfDoors: 2, speed: 0)
    //Call changeSpeeds() to change their speeds simulating a race
    changeSpeeds(firstCar: firstCar, secondCar: secondCar, thirdCar: thirdCar)
    //Print out the descriptions of all three Automobile objects
    print(firstCar.description())
    print(secondCar.description())
    print(thirdCar.description())
    //Call raceOutcome() to evaluate who won or if there was a tie and saves what is returned
    let outcome:String = raceOutcome(firstCar: firstCar, secondCar: secondCar, thirdCar: thirdCar)
    //Print final results
    print(outcome)
}

//Returns a random Int between provided min and max
func randomValueBetween(min:UInt32, max:UInt32) -> UInt32 {
    let randomValue:UInt32 = min + arc4random_uniform(UInt32(max - min + 1))
    return randomValue
}

//Simulates race by manipulating the speed variable in each Automobile object
func changeSpeeds(firstCar: Automobile, secondCar: Automobile, thirdCar:Automobile){
    //Creates variable to hold random Int
    var randomNum:Int
    //Loops for 10 cycles
    for _ in 0...9{
        //Get random Int
        randomNum = Int(randomValueBetween(min: 0, max: 16))
        //Adds the randomNum to the speed of the firstCar
        firstCar.increaseSpeed(speedChange: randomNum)
        //Get random Int
        randomNum = Int(randomValueBetween(min: 0, max: 16))
        //Adds the randomNum to the speed of the secondCar
        secondCar.increaseSpeed(speedChange: randomNum)
        //Get random Int
        randomNum = Int(randomValueBetween(min: 0, max: 16))
        //Adds the randomNum to the speed of the thirdCar
        thirdCar.increaseSpeed(speedChange: randomNum)
    }
}

//Evaluates the final speeds of the Automobile objects and returns a string indicating the results
func raceOutcome(firstCar:Automobile, secondCar:Automobile, thirdCar:Automobile) -> String{
    //Get the speeds of all three Automobile objects
    let firstCarSpeed:Int = firstCar.getSpeed()
    let secondCarSpeed:Int = secondCar.getSpeed()
    let thirdCarSpeed:Int = thirdCar.getSpeed()
    //Variables to hold the make and model of the winning car
    var winningCarMake:String = ""
    var winningCarModel:String = ""
    //Indicates if there is a tie
    var tie:Bool = false
    //Checks to see if there is a tie and if so changes tie to true
    if((firstCarSpeed == secondCarSpeed) && (firstCarSpeed > thirdCarSpeed)){
        tie = true
    }else if((firstCarSpeed == thirdCarSpeed) && (firstCarSpeed > secondCarSpeed)){
        tie = true
    }else if((secondCarSpeed == thirdCarSpeed) && (secondCarSpeed > firstCarSpeed)){
        tie = true
    //Checks to see which car has the highest speed and saves the make and model of the winning car
    }else if((firstCarSpeed > secondCarSpeed) && (firstCarSpeed > thirdCarSpeed)){
        winningCarMake = firstCar.getMake()
        winningCarModel = firstCar.getModel()
    }else if((secondCarSpeed > firstCarSpeed) && (secondCarSpeed > thirdCarSpeed)){
        winningCarMake = secondCar.getMake()
        winningCarModel = secondCar.getModel()
    }else if((thirdCarSpeed > firstCarSpeed) && (thirdCarSpeed >  secondCarSpeed)){
        winningCarMake = thirdCar.getMake()
        winningCarModel = thirdCar.getModel()
    }
    //String to be returned
    let returnString:String
    //Creates the string to be returned based on if there is a tie of which car won
    if(tie){
        returnString = "There was a tie!"
    }else{
        returnString = winningCarMake + " " + winningCarModel + " won!!"
    }
    //returns the final outcome
    return returnString
}

//Program begins to run here//
main()
