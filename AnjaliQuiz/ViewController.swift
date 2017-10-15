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
    ]
    let correctAnswers       = [
        0,
        1,
        1,
        3,
        2,
        2,
        3,
        1,
        4,
        0,
        5,
        2,
        6,
        2,
        7,
        0,
        8,
        3,
        9,
        0
    ]
    
    let currentQuestionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

