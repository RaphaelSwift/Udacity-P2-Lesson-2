//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Raphael Neuenschwander on 22.04.15.
//  Copyright (c) 2015 Raphael Neuenschwander. All rights reserved.
//
import Foundation
import UIKit

class ResultViewController: UIViewController {
    
    var userRockPaperScissor: String?
    var randomRockPaperScissor: String?
    
    @IBOutlet weak var matchResult: UILabel!
    @IBOutlet weak var matchUpOutcome: UIImageView!
    
    override func viewWillAppear(animated: Bool) {
        if let userRockPaperScissor = self.userRockPaperScissor, randomRockPaperScissor = self.randomRockPaperScissor
        { if userRockPaperScissor == "rock" && randomRockPaperScissor == "scissors" || userRockPaperScissor == "scissors" && randomRockPaperScissor == "rock" {
            
            self.matchUpOutcome.image = UIImage (named: "rockCrushesScissors")
            
            if userRockPaperScissor == "rock" {
                matchResult.text = "You win !!!" }
            else { matchResult.text = "You loose !!!"}
    
            }
            
        else if userRockPaperScissor == "rock" && randomRockPaperScissor == "paper" || userRockPaperScissor == "paper" && randomRockPaperScissor == "rock"   {
            
            self.matchUpOutcome.image = UIImage (named: "paperCoversRock")
            
            if userRockPaperScissor == "paper" {
                matchResult.text = "You win !!!" }
            else { matchResult.text = "You loose !!!"}
            
            }
            
        else if userRockPaperScissor == "paper" && randomRockPaperScissor == "scissors" || userRockPaperScissor == "scissors" && randomRockPaperScissor == "paper"   {
            
            self.matchUpOutcome.image = UIImage (named: "scissorsCutPaper")
            
            if userRockPaperScissor == "scissors" {
                matchResult.text = "You win !!!" }
            else { matchResult.text = "You loose !!!"}
        }
        else {
            self.matchUpOutcome.image = UIImage (named: "itsATie")
            matchResult.text = " It's a tie !"
            }
    }

    }
    
    @IBAction func replay(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
}
