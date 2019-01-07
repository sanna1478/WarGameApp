//
//  ViewController.swift
//  WarGameTest
//
//  Created by Shreyash Annapureddy on 12/25/18.
//  Copyright © 2018 Shreyash Annapureddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var LeftCard: UIImageView!
    @IBOutlet weak var RightCard: UIImageView!
    @IBOutlet weak var LeftScore: UILabel!
    @IBOutlet weak var RightScore: UILabel!
    
    var playerScore = 0
    var CPUScore = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func dealButton(_ sender: UIButton) {
        let leftRandNum = arc4random_uniform(13) + 2
        let rightRandNum = arc4random_uniform(13) + 2
        
        LeftCard.image = UIImage(named: "card\(leftRandNum)")
        RightCard.image = UIImage(named: "card\(rightRandNum)")
        
        if leftRandNum > rightRandNum{
            playerScore += 1
            LeftScore.text = ("\(playerScore)")
        } else if rightRandNum > leftRandNum{
            CPUScore += 1
            RightScore.text = ("\(CPUScore)")
        }
    }
    
}

