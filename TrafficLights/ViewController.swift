//
//  ViewController.swift
//  TrafficLights
//
//  Created by Руслан Шигапов on 18.09.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.alpha = 0.3
        redView.layer.cornerRadius = 50
        
        yellowView.alpha = 0.3
        yellowView.layer.cornerRadius = 50
        
        greenView.alpha = 0.3
        greenView.layer.cornerRadius = 50
        
        startButton.layer.cornerRadius = 10
    }

    @IBAction func startButtonDidTapped() {
        startButton.setTitle("NEXT", for: .normal)
        
        if redView.alpha == 1 {
            redView.alpha = 0.3
            yellowView.alpha = 1
        } else if yellowView.alpha == 1 {
            yellowView.alpha = 0.3
            greenView.alpha = 1
        } else {
            greenView.alpha = 0.3
            redView.alpha = 1
        }
    }
}

