//
//  MVPAssembly.swift
//  Archetecture
//
//  Created by ilyas.ikhsanov on 15.02.2022.
//

import UIKit

protocol MVPAssemblyProtocol: AnyObject {
    func assemble() -> UIViewController
}

final class MVPAssembly: MVPAssemblyProtocol {
    
    func assemble() -> UIViewController {
        let dataManager = DataManager()
        let presenter = MVPPresenter(dataManager: dataManager)
        let viewController = MVPViewController(presenter: presenter)
        
        presenter.view = viewController
        
        return viewController
    }
}
