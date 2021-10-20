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
    
    var count = 2

    @IBAction func switchColorPressed() {
        
        let customButtonTitle = NSMutableAttributedString(string: "NEXT", attributes: [
            NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 40)
        ])
        trafficLightSwitchButton.setAttributedTitle(customButtonTitle, for: .normal)
        
        
        count += 1
        switch count % 3 {
        case 0:
            redRectangleView.alpha = 1
            greenRectangleView.alpha = 0.3
        case 1:
            yellowRectangleView.alpha = 1
            redRectangleView.alpha = 0.3
        case 2:
            greenRectangleView.alpha = 1
            yellowRectangleView.alpha = 0.3
        default:
            redRectangleView.alpha = 0.3
            yellowRectangleView.alpha = 0.3
            greenRectangleView.alpha = 0.3
        }
    }
    
}

