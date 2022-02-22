//
//  AlertFactory.swift
//  Archetecture
//
//  Created by ilyas.ikhsanov on 22.02.2022.
//

import UIKit

protocol AlertFactory {
    
    func createOkAlert() -> UIViewController
    func createWarningAlert() -> UIViewController
}
