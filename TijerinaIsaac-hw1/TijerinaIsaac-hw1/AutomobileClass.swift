//
//  File.swift
//  TijerinaIsaac-hw1
//
//  Created by Tijerina, Isaac G on 1/23/18.
//  Copyright © 2018 Tijerina, Isaac G. All rights reserved.
//

import Foundation

class Automobile{
    private var _make:String = "<NotSet>"
    private var _model:String = "<NotSet>"
    private var _numberOfDoors:Int = 0
    private var _speed:Int = 0
    
    init(_make:String, _model:String, _numberOfDoors:Int, _speed:Int) {
        self._make = _make
        self._model = _model
        self._numberOfDoors = _numberOfDoors
        self._speed = _speed
    }
    
    class func create(_make:String, _model:String, _numberOfDoors:Int, _speed:Int){
        self._make = _make
        self._model = _model
        self._numberOfDoors = _numberOfDoors
        self._speed = _speed
    }
    
    func Get_make(){
        return _make
    }
    
    func Set_make(_make:String){
        self._make = _make
    }
    
    func Get_model(){
        return _model
    }
    
    func Set_model(_model:String){
        self._model = _model
    }
    
    func Get_numberOfDoors(){
        return _numberOfDoors
    }
    
    func Set_numberOfDoors(_numberOfDoors:Int){
        self._numberOfDoors = _numberOfDoors
    }
    
    func Get_speed(){
        return _speed
    }
    
    func increaseSpeed(speedChange:Int){
        var changedSpeed = _speed + speedChange
        if(0 <= changedSpeed && changedSpeed <= 150){
            _speed = changedSpeed
        }
    }
    
    func decreaseSpeed(speedChange:Int){
        var changedSpeed = _speed - speedChange
        if(0 <= changedSpeed && changedSpeed <= 150){
            _speed = changedSpeed
        }
    }
    
    func description(){
        var description = "Make: " + _make + ", Model: " + _model + ", NumDoors: " + _numberOfDoors + ", Speed: " + _speed
        return description
    }
    
}
