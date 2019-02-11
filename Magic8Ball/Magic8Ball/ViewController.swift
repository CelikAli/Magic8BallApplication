//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Ali Emre Çelik on 12/11/18.
//  Copyright © 2018 Ali Emre Çelik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ballImageView: UIImageView!
    
    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        randomizeBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomizeBallImage()
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        randomizeBallImage()
    }
    
    func randomizeBallImage() {
        randomBallIndex = Int.random(in: 0 ... 4)
        ballImageView.image = UIImage(named: ballArray[randomBallIndex])
    }


}

