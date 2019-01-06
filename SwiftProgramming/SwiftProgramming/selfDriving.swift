//
//  selfDriving.swift
//  SwiftProgramming
//
//  Created by Tanmay Gulati on 06/01/19.
//  Copyright © 2019 Tanmay Gulati. All rights reserved.
//

import Foundation

class SelfDrivingCar : Car // Inheritance
{
    
    var destination : String?
    
    override func drive() {
        super.drive() // parent drive() method
        if let userSetDestination = destination{
        print("Override drive method" + destination!)
        }
    }
}
