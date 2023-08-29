//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Bayu Septyan Nur Hidayat on 27/08/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var adviceResult: UILabel!
    @IBOutlet weak var bmiResult: UILabel!
    @IBOutlet weak var backgroundView: UIImageView!
    var bmiValue: String?
    var adviceValue: String?
    var backgroundValue: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiResult.text = bmiValue
        adviceResult.text = adviceValue
        backgroundView.backgroundColor = backgroundValue
        
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        // penulisan self diatas bisa tidak ditulis
    }
    

}
