//
//  ViewController.swift
//  Roshambo
//
//  Created by Raphael Neuenschwander on 22.04.15.
//  Copyright (c) 2015 Raphael Neuenschwander. All rights reserved.
//

import UIKit

class RoshamboViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    //
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        let controller = segue.destinationViewController as! ResultViewController
        controller.userRockPaperScissor = segue.identifier
        controller.randomRockPaperScissor = self.randomRockPaperScissor()
    }
    
    // Semi programmatically
    @IBAction func paper(sender: UIButton) {
    performSegueWithIdentifier("paper", sender: self)
        
    }
    
    
    // Segue done exclusively programmatically for rock
    @IBAction func rock(sender: UIButton) {
        var controller: ResultViewController
        
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultViewController") as! ResultViewController
        
        controller.userRockPaperScissor = sender.titleLabel?.text
        controller.randomRockPaperScissor = self.randomRockPaperScissor()
        presentViewController(controller, animated: true, completion: nil)
        
    }
    
    
    // Function that randomize rock / paper / scissors
    func randomRockPaperScissor() -> String? {
        let randomValue = Int(1 + arc4random() % 3)
        var rockPaperScissor: String?
        
        switch randomValue {
        case 1 : rockPaperScissor = "rock"
        case 2 : rockPaperScissor = "scissors"
        case 3 : rockPaperScissor = "paper"
        default : break
        }
        return rockPaperScissor
    }
}



