//
//  ViewController.swift
//  Calculator
//
//  Created by Eric on 7/26/16.
//  Copyright © 2016 Eric Ditmore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //the exclamation point also means optional, ! will implicitly unwrap
    @IBOutlet weak var display: UILabel!
    
    //want your names to be very descriptive
    var userIsInTheMiddleOfTyping = false
    
    
    @IBAction func touchDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping   {
                let textCurrentlyInDisplay = display!.text!
                display!.text = textCurrentlyInDisplay + digit
        }   else    {
            display.text = digit
        }
        userIsInTheMiddleOfTyping = true
    
      
    }

    //this var tracks and calculates/computes
        var displayValue: Double    {
                get     {
                      return   Double (display.text!)!
                }
                set     {
                        display.text = String(newValue) //the double value that someone set
                }
            }
    
    
    
    
        @IBAction func PerformOperation(sender: UIButton) {
            userIsInTheMiddleOfTyping = false
            if let mathematicalSymbol = sender.currentTitle {
                if mathematicalSymbol == "π"   {
                    displayValue = M_PI
                }   else if mathematicalSymbol == "√"    {
                    displayValue = sqrt(displayValue)
                }
            }
            
        }

}

