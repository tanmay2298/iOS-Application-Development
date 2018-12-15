//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Tanmay Gulati on 15/12/18.
//  Copyright © 2018 Tanmay Gulati. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber : Int = 0
    
    @IBOutlet weak var ballImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        newBallImage()
    }
    
    @IBAction func askButton(_ sender: UIButton)
    {
        newBallImage()
    }
    func newBallImage()
    {
        randomBallNumber = Int(arc4random_uniform(5))
        ballImage.image = UIImage(named: ballArray[randomBallNumber])
        print(randomBallNumber)
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
}

