//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var weightScale: UISlider!
    @IBOutlet weak var heighScale: UISlider!
    @IBOutlet weak var heighText: UILabel!
    @IBOutlet weak var weightText: UILabel!
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    @IBAction func weightChange(_ sender: UISlider) {
        weightText.text = String(format: "%.0f", sender.value) + " kg"
    }
    
    @IBAction func heightChange(_ sender: UISlider) {
        heighText.text = String(format: "%.2f", sender.value) + " m"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heighScale.value
        let weight = weightScale.value
        
        calculatorBrain.calculateBMI(height, weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        // penulisan self diatas bisa tidak ditulis
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.adviceValue = calculatorBrain.getAdvice()
            destinationVC.backgroundValue = calculatorBrain.getColor()
        }
    }
    
}

