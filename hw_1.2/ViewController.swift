//
//  ViewController.swift
//  hw_1.2
//
//  Created by Anna Ivanova on 19.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redRectangleView: UIView!
    
    @IBOutlet var yellowRectangleView: UIView!
    
    @IBOutlet var greenRectangleView: UIView!
    
    @IBOutlet var trafficLightSwitchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redRectangleView.layer.cornerRadius = redRectangleView.frame.size.width/2
        
        yellowRectangleView.layer.cornerRadius = yellowRectangleView.frame.size.width/2
        
        greenRectangleView.layer.cornerRadius = greenRectangleView.frame.size.width/2
    }

    @IBAction func switchColorPressed() {
    }
    
}

