//
//  ViewController.swift
//  AnjaliQuiz
//
//  Created by UCode on 10/15/17.
//  Copyright © 2017 Anjali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerButton0: UIButton!
    @IBOutlet weak var answerButton1: UIButton!
    @IBOutlet weak var answerButton2: UIButton!
    @IBOutlet weak var answerButton3: UIButton!
    @IBOutlet weak var submitButton:  UIButton!
    
    let questions            = [
        "What is the capital of Tajikistan?",
        "Tbilisi is the capital of what country?",
        "What is the capital of Mongolia?",
        "Manlia is the capital of what country?",
        "What is the capital of Nepal?",
        "Vientiane is the capital of what country?",
        "What is the capital of North Korea?",
        "Colombo is the capital of what country?",
        "What is the capital of Syria?",
        "Tashkent is the capital of what country?"
    ]
    let answers              = [
            [
                "Jerusalem",
                "Dushanbe",
                "Dhaka",
                "Bangkok"
            ],
            [
                "Armenia",
                "Turkey",
                "Russia",
                "Georgia"
           ],
           [
                "New Delhi",
                "Amman",
                "Ulaanbaatar",
                "Phnom Penh"
            ],
            [
                "Indonesia",
                "Phillipines",
                "Qatar",
                "Bhutan"
            ],
            [
                "Katmandu",
                "Rangoon",
                "Damascus",
                "Jakarta"
            ],
            [
                "Cambodia",
                "Vietnam",
                "Laos",
                "Thailand"
            ],
            [
                "Beijing",
                "Ashtana",
                "Pyongyang",
                "Doha"
            ],
            [
                "Sri Lanka",
                "India",
                "Kyrgzstan",
                "Iraq"
            ],
            [
                "Kabul",
                "Ankara",
                "Teran",
                "Damascus"
            ],
            [
                "Yemen",
                "Uzbekistan",
                "Kazakhastan",
                "Oman"
            ]
        ]
    
    let correctAnswers       = [
        
        1,
        3,
        2,
        1,
        0,
        2,
        2,
        0,
        3,
        1
    ]
    
    var currentQuestionIndex = 0
    var choice = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        displayQuestion(index: currentQuestionIndex)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displayQuestion(index:Int) {
        questionLabel.text = questions[index]
        answerButton0.setTitle(answers[index][0], for: .normal)
        answerButton1.setTitle(answers[index][1], for: .normal)
        answerButton2.setTitle(answers[index][2], for: .normal)
        answerButton3.setTitle(answers[index][3], for: .normal)
    }
    
    @IBAction func chooseAnswer(_ sender: AnyObject) {
        choice = sender.tag
    }
    
    
    @IBAction func checkAnswer(sender: AnyObject){
        if(choice == correctAnswers[currentQuestionIndex]){
          currentQuestionIndex = (currentQuestionIndex + 1) % 10
            displayQuestion(index: currentQuestionIndex)
        }
        
    }


}

