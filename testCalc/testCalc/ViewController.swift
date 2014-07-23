//
//  ViewController.swift
//  testCalc
//
//  Created by Vijay Tholpadi on 7/22/14.
//  Copyright (c) 2014 TheGeekProjekt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var lastNumber :String = ""
    @IBOutlet var answerField: UILabel
    @IBOutlet var operatorField: UILabel
    
    
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
    
    @IBAction func enterTapped(AnyObject?){
        var num1:Float = lastNumber.bridgeToObjectiveC().floatValue
        var num2:Float = answerField.text.bridgeToObjectiveC().floatValue
        
        if (num1 == 0.0) || (num2 == 0.0) {
            showError()
            return
        }
        var answer:Float = 0.0
        if operatorField.text == "+"{
            answer = num1 + num2
        } else if operatorField.text == "-"{
            answer = num1 - num2
        }else if operatorField.text == "*"{
            answer = num1 * num2
        }else if operatorField.text == "/"{
            answer = num1 / num2
        }
        answerField.text = "\(answer)"
        operatorField.text = ""
    }

    @IBAction func clearTapped(theButton: UIButton){
        println(theButton.titleLabel.text)
        operatorField.text = ""
        answerField.text = "0"
        lastNumber = ""
    }
    
    @IBAction func plusTapped(theButton: UIButton) {
        println(theButton.titleLabel.text)
        if operatorField.text == ""{
            operatorField.text = "+"
            lastNumber = answerField.text
            answerField.text = "0"
        }else{
            enterTapped(nil)
            operatorField.text = "+"
        }
    }
    
    @IBAction func minusTapped(theButton: UIButton) {
        println(theButton.titleLabel.text)
        if operatorField.text == ""{
            operatorField.text = "-"
            lastNumber = answerField.text
            answerField.text = "0"
        }else{
            enterTapped(nil)
            operatorField.text = "-"
        }
    }
    
    @IBAction func multiplyTapped(theButton: UIButton) {
        println(theButton.titleLabel.text)
        if operatorField.text == ""{
            operatorField.text = "*"
            lastNumber = answerField.text
            answerField.text = "0"
        }else{
            enterTapped(nil)
            operatorField.text = "*"
        }
    }
    
    @IBAction func divideTapped(theButton: UIButton) {
        println(theButton.titleLabel.text)
        if operatorField.text == ""{
            operatorField.text = "/"
            lastNumber = answerField.text
            answerField.text = "0"
        }else{
            enterTapped(nil)
            operatorField.text = "/"
        }
    }
    
    @IBAction func decimalPointPressed(theButton: UIButton){
        answerField.text = answerField.text + "."
    }
    
    func showError(){
        println("There was an error. Please inspect.")
    }
}

