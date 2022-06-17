//
//  ViewController.swift
//  Homework02.2.28
//
//  Created by Daniil Lebedev on 17.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var starAndNextButton: UIButton!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = redLightView.frame.size.width/2
       // yellowLightView.layer.cornerRadius = 50
       // greenLightView.layer.cornerRadius = 50
    }

    @IBAction func startAndNextButtonTapped() {
    }
    
}

