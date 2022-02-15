//
//  MVPPresenter.swift
//  Archetecture
//
//  Created by ilyas.ikhsanov on 15.02.2022.
//

import Foundation

protocol MVPPresenterProtocol {
    func viewDidLoad()
    func didTapButton()
}

final class MVPPresenter {
    
    // Dependencies
    weak var view: MVPViewProtocol?
    let dataManager: DataManager
    
    // MARK: - Init
    init(dataManager: DataManager) {
        self.dataManager = dataManager
    }
}

// MARK: - MVPPresenterProtocol
extension MVPPresenter: MVPPresenterProtocol {
    func viewDidLoad() {
        let data = dataManager.getData()
        view?.configureView(text: data)
    }
    
    func didTapButton() {
        view?.configureView(text: "1,2,3")
    }
}
