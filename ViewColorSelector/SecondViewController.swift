//
//  SecondViewController.swift
//  ViewColorSelector
//
//  Created by Carlos Garcia Perez on 20/2/24.
//

import UIKit

final class SecondViewController: UIViewController {

    weak var delegate: ColorSelectionDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func selectColor(_ sender: UIBarButtonItem) {
        let selectedColor = UIColor.red
        delegate?.didSelectColor(color: view.backgroundColor ?? .black)
                dismiss(animated: true, completion: nil)
    }
    
}

