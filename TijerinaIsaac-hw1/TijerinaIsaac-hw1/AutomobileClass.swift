//
//  File.swift
//  TijerinaIsaac-hw1
//
//  Created by Tijerina, Isaac G on 1/23/18.
//  Copyright © 2018 Tijerina, Isaac G. All rights reserved.
//

import Foundation

//Automobile class that is used in main.swift
class Automobile{
    //Variables that saves information about the Automobile
    private var _make:String
    private var _model:String
    private var _numberOfDoors:Int
    private var _speed:Int
    
    //Sets the inital values of the Automobile variables
    init(_make:String, _model:String, _numberOfDoors:Int, _speed:Int) {
        self._make = _make
        self._model = _model
        self._numberOfDoors = _numberOfDoors
        self._speed = _speed
    }
    
    //When called creates a Automobile object using the provided parameters
    class func create(_make:String, _model:String, _numberOfDoors:Int, _speed:Int) -> Automobile{
        return Automobile(_make: _make,  _model: _model,_numberOfDoors : _numberOfDoors,_speed : _speed)
    }
    
    //Returns the make of the Automobile object
    func getMake() -> String{
        return _make
    }
    
    //Changes the make of the Automobile object
    func setMake(_make:String){
        self._make = _make
    }
    
    //Returns the model of the Automobile object
    func getModel() -> String{
        return _model
    }
    
    //Changes the model of the Automobile object
    func setModel(_model:String){
        self._model = _model
    }
    
    //Returns the numberOfDoors of the Automobile object
    func getNumberOfDoors() -> Int{
        return _numberOfDoors
    }
    
    //Changes the numberOfDoors of the Automobile object
    func setNumberOfDoors(_numberOfDoors:Int){
        self._numberOfDoors = _numberOfDoors
    }
    
    //Returns the speed of the Automobile object
    func getSpeed() -> Int{
        return _speed
    }
    
    //Adds the provided speed to the current speed if the resulting speed is between 0 and 150
    func increaseSpeed(speedChange:Int){
        let changedSpeed = _speed + speedChange
        if(0 <= changedSpeed && changedSpeed <= 150){
            _speed = changedSpeed
        }
    }
    
    //Subtracts the provided speed from the current speed if the resulting speed is between 0 and 150
    func decreaseSpeed(speedChange:Int){
        let changedSpeed = _speed - speedChange
        if(0 <= changedSpeed && changedSpeed <= 150){
            _speed = changedSpeed
        }
    }
    
    //Retruns a string that contains all of the information about the Automobile
    func description() -> String{
        var description = "Make: " + _make
        description += ", Model: " + _model
        description += ", NumDoors: " + String(_numberOfDoors)
        description += ", Speed: " + String(_speed)
        return description
    }    
}
