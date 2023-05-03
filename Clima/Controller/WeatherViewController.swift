//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet var userTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userTextField.delegate = self
    }

    @IBAction func searchButton(_ sender: UIButton) {
        print(userTextField.text!)
        userTextField.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(userTextField.text!)
        userTextField.endEditing(true)
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        userTextField.text = ""
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if userTextField.text == "" {
            userTextField.placeholder = "Text Something"
            return false
        } else {
            return true
        }
    }
}

