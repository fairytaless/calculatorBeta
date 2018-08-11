//
//  ViewController.swift
//  CalculatorBeta
//
//  Created by Lee Yuan-Shiou on 2018/7/17.
//  Copyright © 2018年 Lee Yuan-Shiou. All rights reserved.
//

import UIKit

class CalculatorVC: UIViewController {
    @IBOutlet weak var lbResult: UILabel!

    var num1 = ""
    var num2 = ""
    var preNum = ""
    var calResult = 0.0
    var isTyping = false
    var result = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        Thread.sleep(forTimeInterval: 2.5)
        // Do any additional setup after loading the view, typically from a nib.
    }

    func checkTyping() {
        if isTyping == true {
            preNum = num1
        }else{
            lbResult.text = lbResult.text!
            
        }

    }
    
    @IBAction func btNumbers(_ sender: UIButton) {
        let inputNumber = sender.tag
        isTyping = true
        if lbResult.text == "0"{
            lbResult.text = "\(inputNumber)"
            num1 = lbResult.text!
        }else{
            lbResult.text = lbResult.text! + "\(inputNumber)"
            num1 = lbResult.text!
        }
        checkTyping()
    }
    
    @IBAction func btClear(_ sender: UIButton) {
        lbResult.text = "0"
        preNum = ""
        num1 = ""
        num2 = ""
    }
    
    @IBAction func btCalculate(_ sender: UIButton) {


        
        let inputOperator = sender.tag
        switch inputOperator {
//        case 250://+
//            num2 = preNum
//
//            result = Double(num2)! + Double(num1)!
//
//        case 300://-
//            return
//        case 400:///
//            return
//        case 350://*
//            return
        case 500:
            result = Double(num1)! * -1
        case 550:
            result = Double(num1)! * 0.01
        default:
            break
        }
//        lbResult.text = String(result)
    }
    @IBAction func btAnswer(_ sender: UIButton) {
        
        lbResult.text = String(result)
    }
    
    @IBAction func btPlus(_ sender: UIButton) {
        checkTyping()
        result = Double(preNum)! + Double(num1)!
    }
    
    @IBAction func btMinus(_ sender: UIButton) {
    }
    @IBAction func btMulti(_ sender: UIButton) {
    }
    @IBAction func btDivide(_ sender: UIButton) {
    }
    



}
    
    
    
    
    






