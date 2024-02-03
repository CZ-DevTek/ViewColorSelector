//
//  ViewController.swift
//  ViewColorSelector
//
//  Created by Carlos Garcia Perez on 2/2/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupRedValue()
        setupGreenValue()
        setupBlueValue()
        
        setupColorView()
    }

    @IBAction func redSliderAction() {
        setupColorView()
        redValue.text = redSlider.value.formatted()
    }
    @IBAction func greenSliderAction() {
        setupColorView()
        greenValue.text = greenSlider.value.formatted()
    }
    @IBAction func blueSliderAction() {
        setupColorView()
        blueValue.text = blueSlider.value.formatted()
    }
    
    private func setupRedValue(){
        redValue.text = redSlider.value.formatted()
    }
    private func setupGreenValue(){
        greenValue.text = greenSlider.value.formatted()
    }
    private func setupBlueValue(){
        blueValue.text = blueSlider.value.formatted()
    }
    
    
    
    private func setupColorView() {
            let red = CGFloat(redSlider.value)
            let green = CGFloat(greenSlider.value)
            let blue = CGFloat(blueSlider.value)
            
            colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        }
}

extension Float {
    func formatted() -> String {
        return String(format: "%.2f", self)
    }
}
