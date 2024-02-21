//
//  SecondViewController.swift
//  ViewColorSelector
//
//  Created by Carlos Garcia Perez on 20/2/24.
//

import UIKit

final class SecondViewController: UIViewController {

    weak var delegate: ColorSelectionDelegate?
    var backgroundColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        view.backgroundColor = backgroundColor
    }
    
    @IBAction func selectColor(_ sender: UIBarButtonItem) {
        if let color = backgroundColor {
            delegate?.didSelectColor(color: color)
            navigationController?.popViewController(animated: true)
        }
    }
}

