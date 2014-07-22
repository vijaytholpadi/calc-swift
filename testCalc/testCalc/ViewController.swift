//
//  ViewController.swift
//  testCalc
//
//  Created by Vijay Tholpadi on 7/22/14.
//  Copyright (c) 2014 TheGeekProjekt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var answerField: UILabel
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTapped(theButton: UIButton) {
        println(theButton.titleLabel.text)
        println("button tapped!")
        if answerField.text == "0"{
            answerField.text = theButton.titleLabel.text
        }else{
            answerField.text = answerField.text + theButton.titleLabel.text
        }
    }
    
    @IBAction func enterTapped(theButton: UIButton){
        println(theButton.titleLabel.text)
    }
    
    @IBAction func clearTapped(theButton: UIButton){
        println(theButton.titleLabel.text)
    }
    
    @IBAction func plusTapped(theButton: UIButton) {
        println(theButton.titleLabel.text)
    }
    
    @IBAction func minusTapped(theButton: UIButton) {
        println(theButton.titleLabel.text)
    }
    
    @IBAction func multiplyTapped(theButton: UIButton) {
        println(theButton.titleLabel.text)
    }
    
    @IBAction func divideTapped(theButton: UIButton) {
        println(theButton.titleLabel.text)
    }
}

