//
//  VIPERPresenter.swift
//  Archetecture
//
//  Created by ilyas.ikhsanov on 21.02.2022.
//

import Foundation

protocol VIPERPresenterProtocol: AnyObject {
    func didGetData(data: String)
}

final class VIPERPresenter: VIPERPresenterProtocol {
    
    // Dependencies
    let interactor: VIPERInteractorProtocol
    let router: VIPERRouterProtocol
    weak var view: VIPERViewInput?
    
    init(interactor: VIPERInteractorProtocol, router: VIPERRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
    
    // MARK: - VIPERPresenterProtocol
    
    func didGetData(data: String) {
        // Здесь может быть любая обработка данных для показа на экране (формирование датасетов, вьмоделей и прочего)
        view?.configureView(text: data)
    }

}

// MARK: - VIPERViewOutput

extension VIPERPresenter: VIPERViewOutput {
    func viewDidLoad() {
        view?.configureView(text: "Hello VIPER")
    }
    
    func didTapButton() {
        interactor.getData()
    }
}
