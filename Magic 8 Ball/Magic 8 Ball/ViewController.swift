//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by UKIBEE on 2018-08-06.
//  Copyright © 2018 UKIBEE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5" ]
    var randomBallNumber : Int = 0
    

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newBallimage()
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askbuttonPressed(_ sender: UIButton) {
        newBallimage()
    }
    func newBallimage(){
        randomBallNumber = Int(arc4random_uniform(4))
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallimage()
    }
    
}

