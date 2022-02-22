//
//  UIKitAlertFactory.swift
//  Archetecture
//
//  Created by ilyas.ikhsanov on 22.02.2022.
//

import UIKit

final class UIKitAlertFactory: AlertFactory {
    func createOkAlert() -> UIViewController {
        let alert = UIAlertController(title: "Ok", message: nil, preferredStyle: .alert)
        return alert
    }
    
    func createWarningAlert() -> UIViewController {
        let alert = UIAlertController(title: "Warning", message: nil, preferredStyle: .alert)
        return alert
    }
}
