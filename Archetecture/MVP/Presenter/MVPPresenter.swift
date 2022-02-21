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
    let model: MVPModelServiceProtocol
    
    // MARK: - Init
    
    init(model: MVPModelServiceProtocol) {
        self.model = model
    }
}

// MARK: - MVPPresenterProtocol

extension MVPPresenter: MVPPresenterProtocol {
    func viewDidLoad() {
        model.loadText { data in
            DispatchQueue.main.async {
                self.view?.configureView(text: data)
            }
        }
    }
    
    func didTapButton() {
        view?.configureView(text: "1,2,3")
    }
}
