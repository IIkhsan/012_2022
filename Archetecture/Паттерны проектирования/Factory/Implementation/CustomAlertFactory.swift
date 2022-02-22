//
//  CustomAlertFactory.swift
//  Archetecture
//
//  Created by ilyas.ikhsanov on 22.02.2022.
//

import UIKit

final class CustomAlertFactory: AlertFactory {
    func createOkAlert() -> UIViewController {
        let alertView = UIViewController()
        return alertView
    }
    
    func createWarningAlert() -> UIViewController {
        let alertView = UIViewController()
        alertView.view.backgroundColor = .red
        return alertView
    }
}
