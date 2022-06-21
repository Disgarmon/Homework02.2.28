//
//  ViewController.swift
//  Homework02.2.28
//
//  Created by Daniil Lebedev on 17.06.2022.
//

import UIKit



class ViewController: UIViewController {
    
    enum CurrentLight{
        case red, yellow, green
    }

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var starAndNextButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightIsOff: CGFloat = 0.3
    private let lightIsOn: CGFloat = 1
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        starAndNextButton.layer.cornerRadius = 10
        
        redLightView.alpha = lightIsOff
        yellowLightView.alpha = lightIsOff
        greenLightView.alpha = lightIsOff
        
        redLightView.layer.cornerRadius = redLightView.frame.height / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.height / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.height / 2
    }

    @IBAction func startAndNextButtonTapped() {
        if starAndNextButton.currentTitle == "Start"{
            starAndNextButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight{
        case .red:
            greenLightView.alpha = lightIsOff
            redLightView.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLightView.alpha = lightIsOff
            yellowLightView.alpha = lightIsOn
            currentLight = .green
        case .green:
            yellowLightView.alpha = lightIsOff
            greenLightView.alpha = lightIsOn
            currentLight = .red
        }
    }
}

