//
//  ViewController.swift
//  betaapp_calculator
//
//  Created by Antoine Benichou on 25/11/2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var initialcostLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var FinalCostLabel: UILabel!
    @IBOutlet weak var test: UISegmentedControl!
    
    @IBAction func testaction(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            pourcentage = 0.85
        } else if sender.selectedSegmentIndex == 1 {
            pourcentage = 0.80
        } else if sender.selectedSegmentIndex == 2 {
            pourcentage = 0.70
        } else if sender.selectedSegmentIndex == 3 {
            pourcentage = 0.50
        }
        updateDisplay()
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        updateDisplay()
    }
    
    var currencySign = "€"
    var pourcentage = 0.85
    
    func updateDisplay() {
        let initialprice = Float(round(100*slider.value)/100)
        
        let finalcost = Float(round(100*Double(initialprice) * pourcentage)/100)
        
        FinalCostLabel.text = String(finalcost) + " " + currencySign
        
        initialcostLabel.text = String(initialprice) + " " + currencySign
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     
        updateDisplay()
        
    
    }


}

