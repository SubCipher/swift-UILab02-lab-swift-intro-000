//
//  ViewController.swift
//  UIFun
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // TODO: Setup the IBOutlets
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBOutlet weak var paintBucket: UIImageView!

    
    @IBOutlet weak var firstColorSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var secondColorSegementedControl: UISegmentedControl!
    
    func mixColors(first: String, second: String) -> UIColor {
        
        switch (first, second) {
        case ("Red", "Red"):
            return UIColor.red
        case ("Red", "Yellow"), ("Yellow", "Red"):
            return UIColor.orange
        case ("Red", "Blue"), ("Blue", "Red"):
            return UIColor.purple
        case ("Yellow", "Yellow"):
            return UIColor.yellow
        case ("Yellow", "Blue"), ("Blue", "Yellow"):
            return UIColor.green
        case ("Blue", "Blue"):
            return UIColor.blue
        default:
            return UIColor.white
        }
        
    }
    
    
    
    @IBAction func colorSelected(_ sender: UISegmentedControl) {
        
        let firstSelection = firstColorSegmentedControl.selectedSegmentIndex
        let secondSelection = secondColorSegementedControl.selectedSegmentIndex
        
        switch (true) {
        case (firstSelection == 0 && secondSelection == 0):
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Red")
        case (firstSelection == 0 &&  secondSelection == 1):
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Yellow")
        case (firstSelection == 0 && secondSelection == 2):
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Blue")
        case (firstSelection == 1 && secondSelection == 0):
            paintBucket.backgroundColor = mixColors(first: "Yellow", second: "Red")
        case (firstSelection == 1 && secondSelection == 1):
            paintBucket.backgroundColor = mixColors(first: "Yellow", second: "Yellow")
        case (firstSelection == 1 && secondSelection == 2):
            paintBucket.backgroundColor = mixColors(first: "Yellow", second: "Blue")
        case (firstSelection == 2 && secondSelection == 0):
            paintBucket.backgroundColor = mixColors(first: "Blue", second: "Red")
        case (firstSelection == 2 && secondSelection == 1):
            paintBucket.backgroundColor = mixColors(first: "Blue", second: "Yellow")
        case (firstSelection == 2 && secondSelection == 2):
            paintBucket.backgroundColor = mixColors(first: "Blue", second: "Blue")
            
            
        default:
            paintBucket.backgroundColor = mixColors(first: "White", second: "White")
        }
        
        
        
        
    }
}
