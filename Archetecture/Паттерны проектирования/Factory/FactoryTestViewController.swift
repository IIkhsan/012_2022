//
//  FactoryTestViewController.swift
//  Archetecture
//
//  Created by ilyas.ikhsanov on 22.02.2022.
//

import UIKit

class FactoryTestViewController: UIViewController {
    
    let alertFactory: AlertFactory = UIKitAlertFactory() // так же может без болезненно испльзовано CustomAlertFactory

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let alert = alertFactory.createOkAlert()
        present(alert, animated: true, completion: nil)
    }

}
