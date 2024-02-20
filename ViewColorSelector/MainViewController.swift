//
//  ViewController.swift
//  ViewColorSelector
//
//  Created by Carlos Garcia Perez on 2/2/24.
//

import UIKit

protocol ColorSelectionDelegate: AnyObject {
    func didSelectColor(color: UIColor)
}

final class MainViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 16
        setupSlidersValue()
        setupColorView()
    }
    
    override func prepare(for segue : UIStoryboardSegue, sender: Any?) {
        let secondVC = segue.destination as? SecondViewController
        secondVC?.delegate = self
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        switch sender {
            case redSlider:
                redValue.text = redSlider.value.formatted()
            case greenSlider:
                greenValue.text = greenSlider.value.formatted()
            default:
                blueValue.text = blueSlider.value.formatted()
        }
        setupColorView()
    }
    
    private func setupSlidersValue(){
        redValue.text = redSlider.value.formatted()
        greenValue.text = greenSlider.value.formatted()
        blueValue.text = blueSlider.value.formatted()
    }
    
    private func setupColorView() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        colorView.backgroundColor = UIColor(
            red: red,
            green: green,
            blue: blue,
            alpha: 1.0
        )
    }
}
extension Float {
    func formatted() -> String {
        String(format: "%.2f", self)
    }
}
// MARK - ColorSelectionDelegate
extension MainViewController: ColorSelectionDelegate {
    func didSelectColor(color: UIColor) {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        let selectedColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1.0)
    }
}
