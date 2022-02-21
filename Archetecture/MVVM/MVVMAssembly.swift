//
//  MVVMAssembly.swift
//  Archetecture
//
//  Created by ilyas.ikhsanov on 21.02.2022.
//

import UIKit

final class MVVMAssembly {
    func assemble() -> UIViewController {
        let dataManager = DataManager()
        // 
        let viewModel = MVVMViewModel(dataManager: dataManager)
        let view = MVVMViewController()
        
        view.viewModel = viewModel
        
        return view
    }
}
