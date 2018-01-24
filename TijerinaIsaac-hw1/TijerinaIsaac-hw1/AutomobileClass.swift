//
//  File.swift
//  TijerinaIsaac-hw1
//
//  Created by Tijerina, Isaac G on 1/23/18.
//  Copyright © 2018 Tijerina, Isaac G. All rights reserved.
//

import Foundation

class Automobile{
    private var _make:String
    private var _model:String
    private var _numberOfDoors:Int
    private var _speed:Int
    
    init(_make:String, _model:String, _numberOfDoors:Int, _speed:Int) {
        self._make = _make
        self._model = _model
        self._numberOfDoors = _numberOfDoors
        self._speed = _speed
    }
    
    class func create(_make:String, _model:String, _numberOfDoors:Int, _speed:Int) -> Automobile{
        return Automobile(_make: _make,  _model: _model,_numberOfDoors : _numberOfDoors,_speed : _speed)
    }
    
    func Get_make() -> String{
        return _make
    }
    
    func Set_make(_make:String){
        self._make = _make
    }
    
    func Get_model() -> String{
        return _model
    }
    
    func Set_model(_model:String){
        self._model = _model
    }
    
    func Get_numberOfDoors() -> Int{
        return _numberOfDoors
    }
    
    func Set_numberOfDoors(_numberOfDoors:Int){
        self._numberOfDoors = _numberOfDoors
    }
    
    func Get_speed() -> Int{
        return _speed
    }
    
    func increaseSpeed(speedChange:Int){
        let changedSpeed = _speed + speedChange
        if(0 <= changedSpeed && changedSpeed <= 150){
            _speed = changedSpeed
        }
    }
    
    func decreaseSpeed(speedChange:Int){
        let changedSpeed = _speed - speedChange
        if(0 <= changedSpeed && changedSpeed <= 150){
            _speed = changedSpeed
        }
    }
    
    func description() -> String{
        var description = "Make: " + _make
        description += ", Model: " + _model
        description += ", NumDoors: " + String(_numberOfDoors)
        description += ", Speed: " + String(_speed)
        return description
    }
    
}
