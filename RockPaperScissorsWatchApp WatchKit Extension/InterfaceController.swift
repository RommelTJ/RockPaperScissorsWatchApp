//
//  InterfaceController.swift
//  RockPaperScissorsWatchApp WatchKit Extension
//
//  Created by Rommel Rico on 3/26/15.
//  Copyright (c) 2015 Rommel Rico. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet weak var aiChoiceImage: WKInterfaceImage!
    @IBOutlet weak var resultLabel: WKInterfaceLabel!
    var options = ["rock.png", "paper.png", "scissors.png"]
    
    @IBAction func doRock() {
        var randomNumber = Int(arc4random_uniform(3))
        aiChoiceImage.setImageNamed(options[randomNumber])
        
        if randomNumber == 0 {
            resultLabel.setText("Tie!")
        } else if randomNumber == 1 {
            resultLabel.setText("You Lose!")
        } else if randomNumber == 2 {
            resultLabel.setText("You Win!")
        }
    }
    
    @IBAction func doPaper() {
        var randomNumber = Int(arc4random_uniform(3))
        aiChoiceImage.setImageNamed(options[randomNumber])
        
        if randomNumber == 0 {
            resultLabel.setText("You Win!")
        } else if randomNumber == 1 {
            resultLabel.setText("Tie!")
        } else if randomNumber == 2 {
            resultLabel.setText("You Lose!")
        }
    }
    
    @IBAction func doScissors() {
        var randomNumber = Int(arc4random_uniform(3))
        aiChoiceImage.setImageNamed(options[randomNumber])
        
        if randomNumber == 0 {
            resultLabel.setText("You Lose!")
        } else if randomNumber == 1 {
            resultLabel.setText("You Win!")
        } else if randomNumber == 2 {
            resultLabel.setText("Tie!")
        }
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
