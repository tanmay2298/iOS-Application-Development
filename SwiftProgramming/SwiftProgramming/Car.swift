//
//  Car.swift
//  SwiftProgramming
//
//  Created by Tanmay Gulati on 04/01/19.
//  Copyright © 2019 Tanmay Gulati. All rights reserved.
//

import Foundation

enum CarType
{
    case Sedan
    case Coupe
    case Hatchback
}
class Car
{
    var color = "Black"
    var numberOfSeats : Int = 5
    var typeOfCar : CarType = .Coupe
    
    init()
    {
        
    }
    convenience init(customerChosenColor : String)
    {
        self.init()
        color = customerChosenColor
    }
    func drive()
    {
        print("The car is moving")
    }
}
