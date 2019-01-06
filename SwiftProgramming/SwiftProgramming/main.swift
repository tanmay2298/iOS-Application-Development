//
//  main.swift
//  SwiftProgramming
//
//  Created by Tanmay Gulati on 04/01/19.
//  Copyright © 2019 Tanmay Gulati. All rights reserved.
//

import Foundation

let myCar = Car(customerChosenColor : "Blue")
print(myCar.numberOfSeats)

myCar.drive()

let car2 = SelfDrivingCar()
car2.drive()
