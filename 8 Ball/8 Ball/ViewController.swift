//
//  ViewController.swift
//  8 Ball
//
//  Created by Matt on 26.04.2018.
//  Copyright © 2018 mindelicious handcode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber : Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomBallUpdate()

    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func randomBallUpdate() {
        randomBallNumber = Int(arc4random_uniform(UInt32(ballArray.count)))
        imageView.image = UIImage (named: "ball\(randomBallNumber)")
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        randomBallUpdate()
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomBallUpdate()
    }
}


