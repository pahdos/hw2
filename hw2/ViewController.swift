//
//  ViewController.swift
//  hw2
//
//  Created by Pahdos on 9/20/19.
//  Copyright © 2019 Pahdos. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
       
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
           redTextField.resignFirstResponder()
           greenTextField.resignFirstResponder()
           blueTextField.resignFirstResponder()
       }
    

    @IBOutlet var redTextField: UITextField!
    @IBOutlet var greenTextField: UITextField!
    @IBOutlet var blueTextField: UITextField!
    
    @IBOutlet var redLable: UILabel!
    @IBOutlet var greenLable: UILabel!
    @IBOutlet var blueLable: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var centerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSlider.minimumTrackTintColor = .red
        redSlider.maximumTrackTintColor = .gray
        redSlider.value = 0.50
        redSlider.maximumValue = 1.0
        redSlider.minimumValue = 0.0
        
        greenSlider.maximumTrackTintColor = .gray
        greenSlider.minimumTrackTintColor = .green
        greenSlider.value = 0.50
        greenSlider.maximumValue = 1.0
        greenSlider.minimumValue = 0.0
        
        blueSlider.maximumTrackTintColor = .gray
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.value = 0.50
        blueSlider.maximumValue = 1.0
        blueSlider.minimumValue = 0.0
        
        redLable.textColor = .red
        redLable.text = String(format: "%.2f", redSlider.value)
        
        greenLable.textColor = .green
        greenLable.text = String(format: "%.2f", greenSlider.value)
        
        blueLable.textColor = .blue
        blueLable.text = String(format: "%.2f", blueSlider.value)
        
        redTextField.text = String(format: "%.2f", redSlider.value)
        greenTextField.text = String(format: "%.2f", greenSlider.value)
        blueTextField.text = String(format: "%.2f", blueSlider.value)
        
        centerView.layer.cornerRadius = 15
        centerView.backgroundColor = UIColor.init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(1))
        }
          
    func color() {
        centerView.backgroundColor = UIColor.init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(1))
    }
        
    @IBAction func redSliderAction() {
        redLable.text = String(format: "%.2f", redSlider.value)
        redTextField.text = String(format: "%.2f",redSlider.value)
        color()
    }
    @IBAction func greenSliderAction() {
        greenLable.text = String(format: "%.2f",greenSlider.value)
        greenTextField.text = String(format: "%.2f",greenSlider.value)
        color()
        }
    @IBAction func blueSliderAction() {
        blueLable.text = String(format: "%.2f",blueSlider.value)
        blueTextField.text = String(format: "%.2f",blueSlider.value)
        color()
        }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool{
        true
    }
    
    @IBAction func redTextFieldAction() {
        
        
        
        }
    
}
 

    
    

    
    
    



