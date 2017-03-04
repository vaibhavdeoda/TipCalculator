//
//  ViewController.swift
//  tipCalc
//
//  Created by Vaibhav Deoda on 3/2/17.
//  Copyright © 2017 Vaibhav Deoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func calcTip(sender: AnyObject) {
        let tipPer = [0.1,0.15,0.2]
        
        let amount = Double(billField.text!) ?? 0
        let tip = amount * tipPer[tipControl.selectedSegmentIndex];
        let total = amount + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)

    }
}

