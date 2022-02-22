//
//  Coordinator.swift
//  Archetecture
//
//  Created by ilyas.ikhsanov on 22.02.2022.
//

import UIKit

// Помогает с навигацией между модулями
// Простой вариант
protocol Coordinator {
    
    init(view: UIViewController)
    
    func start()
}

final class ConcreteCoordinator: Coordinator {
    
    private let viewController: UIViewController
    
    init(view: UIViewController) {
        self.viewController = view
    }
    
    func start() {
        let assembly = MVVMAssembly()
        let mvvmViewController = assembly.assemble()
        viewController.present(mvvmViewController, animated: true, completion: nil)
    }
}
