//
//  ViewController.swift
//  tippy
//
//  Created by Gabe De Mesa on 1/3/20.
//  Copyright © 2020 Gabe De Mesa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var billField: UITextField!
    @IBOutlet var tipLabel: UILabel!
    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var tipSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercentages = [ 0.15, 0.18, 0.2 ]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipSegment.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    

}
