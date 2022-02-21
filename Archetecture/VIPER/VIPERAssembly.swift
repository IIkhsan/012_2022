//
//  VIPERAssembly.swift
//  Archetecture
//
//  Created by ilyas.ikhsanov on 21.02.2022.
//

import UIKit

final class VIPERAssembly {
    func assemble() -> UIViewController {
        let dataManager = DataManager()
        let interactor = VIPERInteractor(dataManager: dataManager)
        let router = VIPERRouter()
        let presenter = VIPERPresenter(interactor: interactor, router: router)
        let view = VIPERViewController(presenter: presenter)
        
        router.view = view
        presenter.view = view
        interactor.presenter = presenter
        
        return view
    }
}
