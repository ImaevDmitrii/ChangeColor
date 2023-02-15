//
//  ViewController.swift
//  ChangeColor
//
//  Created by Дмитрий Имаев on 15.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSlider.value = 30
        greenSlider.value = 60
        blueSlider.value = 90
        
        setColor()
        setValue()
    }
    
    
    @IBAction func rgbSliders(_ sender: UISlider) {
        setColor()
        setValue()
    }
    
    
    private func setColor() {
        colorView.backgroundColor = UIColor ( red: CGFloat(redSlider.value) / 255,
                                              green: CGFloat(greenSlider.value) / 255,
                                              blue: CGFloat(blueSlider.value) / 255,
                                              alpha: 1 )
    }
    
    private func setValue() {
        redLabel.text = string(from: redSlider)
        greenLabel.text = string(from: greenSlider)
        blueLabel.text = string(from: blueSlider)
        
    }
    
    
    private func string(from slider: UISlider) -> String {
        String(Int(slider.value))
    }
}

