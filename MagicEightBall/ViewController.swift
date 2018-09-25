//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Jackson Ho on 9/25/18.
//  Copyright © 2018 Jackson Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    // Mark: -Propterties
    let answer = ["Yes, definitely", "It is certain", "Without a doubt", "Yes", "Most likely", "Sure,why not?", "Same", "Tell me more", "Out to lunch", "Reply hazy, try again", "Ask again later", "The cake is a lie", "42", "TMI", "Very doubtful", "Don't count on it", "Absolutely not"]
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var shakeButton: UIButton!
    
    func generateAnswer(){
        let maxIndex: Int = answer.count-1
        let randomIndex = Int.random(in: 0 ... maxIndex)
        
        answerLabel.text = answer[randomIndex]
    }
    @IBAction func shakeButtonTapped(_ sender: UIButton) {
        generateAnswer()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else{return}
        generateAnswer()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

