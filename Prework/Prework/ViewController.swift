//
//  ViewController.swift
//  Prework
//
//  Created by Jimmy Palafox on 7/13/22.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var partySizeSlider: UISlider!
    @IBOutlet weak var partySizeLabel: UILabel!
    @IBOutlet weak var pricePerPersonLabel: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateTip(_ sender: Any) {
        
        //Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get party size from slider input
        let partySize = Double(partySizeSlider.value)
        
        //Get Total tip by multiplying tip* tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill *
            tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        pricePerPersonLabel.text = String(format: "$%.2f", total/partySize)
        
        //Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        //Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func getPartySize(_ sender: Any) {
        
        //Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        // Get party size from slider input
        let partySize = Int(round(partySizeSlider.value))
        partySizeLabel.text = String(Int(round(partySizeSlider.value)))
        //Get Total tip by multiplying tip* tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill *
            tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        pricePerPersonLabel.text = String(format: "$%.2f", total/Double(partySize))
        
        //Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

