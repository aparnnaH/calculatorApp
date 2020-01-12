//
//  ViewController.swift
//  calculator
//
//  Created by Aparnna Hariharan on 2019-12-27.
//  Copyright © 2019 Aparnna Hariharan. All rights reserved.
///Users/aparnnahariharan/workspace/Swift/calculator/calculator.xcodeproj

import UIKit

var number1 = 0.0
var number2 = 0.0
var counter = 0
var operation = ""

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func clearBtn(_ sender: Any) {
        resultLabel.text = ""
        number1 = 0.0
        number2 = 0.0
        counter = 0
    }
    
    @IBAction func SignBtn(_ sender: Any) {     //
        if resultLabel.text != "" {
            let input = Double(resultLabel.text!)!
            let result = input * -1.0
            resultLabel.text = String(result)
        }
    }
    
    @IBAction func PercentBtn(_ sender: Any) {     //
        if resultLabel.text != "" {
            let input = Double(resultLabel.text!)!
            let result = input / 100
            resultLabel.text = String(result)
        }
    }
    
    @IBAction func DivideBtn(_ sender: Any) {
        operation = "/"
        if resultLabel.text != "" {
            AddNum(input:Double(resultLabel.text!)!)
        }
    }
    
    @IBAction func MultipleBtn(_ sender: Any) {
        operation = "x"
        if resultLabel.text != "" {
            AddNum(input:Double(resultLabel.text!)!)
        }
    }
    
    @IBAction func SubtractBtn(_ sender: Any) {
        operation = "-"
        if resultLabel.text != "" {
            AddNum(input:Double(resultLabel.text!)!)
        }
        
    }
    
    @IBAction func AddBtn(_ sender: Any) {
        operation = "+"
        if resultLabel.text != "" {
            AddNum(input:Double(resultLabel.text!)!)
        }
        
    }
    
    @IBAction func DecimalBtn(_ sender: Any) {
        let input = resultLabel.text!
        if !(input.contains(".")){
            resultLabel.text = String(input + ".")
        }
        if resultLabel.text != "" {
            resultLabel.text = "0."
        }
        
    }
    
    @IBAction func EqualBtn(_ sender: Any) {
        var total = 0.0
        if resultLabel.text != ""{
            total = result(input:Double(resultLabel.text!)!)
            if (total - floor(total) > 0.000001) {//dec
                resultLabel.text = String(total)
            } else { //int
                let totalInt = Int(total)
                resultLabel.text = String(totalInt)
            }
        }
    }
    
    @IBAction func ZeroBtn(_ sender: Any) {
        numValueBlank()
        resultLabel.text! += String("0")
    }
    
    @IBAction func OneBtn(_ sender: Any) {
        numValueBlank()
        resultLabel.text! += String("1")
        
    }
    
    @IBAction func TwoBtn(_ sender: Any) {
        numValueBlank()
        resultLabel.text! += String("2")
        
    }
    
    @IBAction func ThreeBtn(_ sender: Any) {
        numValueBlank()
        resultLabel.text! += String("3")
        
    }
    
    @IBAction func FourBtn(_ sender: Any) {
        numValueBlank()
        resultLabel.text! += String("4")
        
    }
    
    @IBAction func FiveBtn(_ sender: Any) {
        numValueBlank()
        resultLabel.text! += String("5")
    }
    
    @IBAction func SixBtn(_ sender: Any) {
        numValueBlank()
        resultLabel.text! += String("6")
    }
    
    @IBAction func SevenBtn(_ sender: Any) {
        numValueBlank()
        resultLabel.text! += String("7")
    }
    
    @IBAction func EightBtn(_ sender: Any) {
        numValueBlank()
        resultLabel.text! += String("8")
    }
    
    @IBAction func NineBtn(_ sender: Any) {
        numValueBlank()
        resultLabel.text! += String("9")
        
    }
    
    func result(input:Double) -> Double {
        counter = 0
        number2 = input
        if operation == "x" {
            return number1 * number2
        }
        else if operation == "/" {
            return number1 / number2
        }
        else if operation == "-" {
            return number1 - number2
        }
        else if operation == "+" {
            return number1 + number2
        }
        return number2
    }
    
    func AddNum(input:Double) {
        if counter == 0{
            counter += 1
            number1 = input
        }
    }
    
    func numValueBlank() {
        if number1 != 0.0 {
            resultLabel.text = ""
        }
    }
    
    func findTotal(input:Double) -> Double {
        counter = 0
        number2 = input
        if operation == "x" {
            return number1 * number2
        }
        else if operation == "/" {
            return number1 / number2
        }
        else if operation == "-" {
            return number1 - number2
        }
        else if operation == "+" {
            return number1 + number2
        }
        return number2
    }
    
}

