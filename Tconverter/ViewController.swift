//
//  ViewController.swift
//  Tconverter
//
//  Created by Nikita Kuznetsov on 4/29/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celLabel: UILabel!
    @IBOutlet weak var farLabel: UILabel!
    @IBOutlet weak var slider: UISlider!{
        didSet{
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        let temperatureCelsius = Int(round(slider.value))
        celLabel.text = "\(temperatureCelsius)Cº"
        let temperatureFahrenheit = round(slider.value)
        farLabel.text = "\(temperatureFahrenheit * 9 / 5 + 32)ºF"
    }
    
}

