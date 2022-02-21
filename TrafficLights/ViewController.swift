//
//  ViewController.swift
//  TrafficLights
//
//  Created by Andrey Zhivotov on 16.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLightsView: UIView!
    @IBOutlet var yellowLightsView: UIView!
    @IBOutlet var greenLightsView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentColor = CurrentColor.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightsView.alpha = 0.3
        yellowLightsView.alpha = 0.3
        greenLightsView.alpha = 0.3
        
        redLightsView.layer.cornerRadius = 55
        yellowLightsView.layer.cornerRadius = 55
        greenLightsView.layer.cornerRadius = 55
        
        startButton.layer.cornerRadius = 10
        
    }
    
    enum CurrentColor {
        case red
        case yellow
        case green
    }
    
    @IBAction func startButtonPressed() {
       
        if startButton.isEnabled {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentColor {
        case .red:
            greenLightsView.alpha = 0.3
            redLightsView.alpha = 1
            currentColor = .yellow
        case .yellow:
            redLightsView.alpha = 0.3
            yellowLightsView.alpha = 1
            currentColor = .green
        case .green:
            yellowLightsView.alpha = 0.3
            greenLightsView.alpha = 1
            currentColor = .red
        }
        
    }
    
}
