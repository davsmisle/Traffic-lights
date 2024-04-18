//
//  ViewController.swift
//  Traffic lights
//
//  Created by Dinar Mukhlisov on 17.04.2024.
//

import UIKit

final class ViewController: UIViewController {

    
    @IBOutlet var lightView: [UIView]!
    
    private var count = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for light in lightView {
            light.layer.cornerRadius = light.frame.height / 2.5
        }
        
        for light in lightView {
            light.alpha = 0.5
        }
    }
    
    @IBAction func startButtonChanging(_ sender: UIButton) {
        sender.setTitle("Next", for: .normal)
        count += 1
    }
    
    @IBAction func trafficLightColorChanging(_ sender: UIButton) {
        if count <= 2 {
            switch count {
            case 0: lightView[0].alpha = 1
                lightView[1].alpha = 0.5
                lightView[2].alpha = 0.5
            case 1: lightView[1].alpha = 1
                lightView[0].alpha = 0.5
                lightView[2].alpha = 0.5
            default: lightView[2].alpha = 1
                lightView[0].alpha = 0.5
                lightView[1].alpha = 0.5
                count = -1
            }
        }
    }
}


