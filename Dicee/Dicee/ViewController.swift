//
//  ViewController.swift
//  Dicee
//
//  Created by Tanmay Gulati on 15/12/18.
//  Copyright © 2018 Tanmay Gulati. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomIndex()
        print(randomDiceIndex1, " ", randomDiceIndex2)
        updateDiceImage()

    }

    @IBAction func rollButtonPressed(_ sender: UIButton)
    {
        randomIndex()
        print(randomDiceIndex1, " ", randomDiceIndex2)
        updateDiceImage()
    }
    func randomIndex()
    {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
    }
    func updateDiceImage()
    {
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomIndex()
        print(randomDiceIndex1, " ", randomDiceIndex2)
        updateDiceImage()
    }
}

