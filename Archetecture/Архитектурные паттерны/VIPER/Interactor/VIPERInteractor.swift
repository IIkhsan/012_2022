//
//  VIPERInteractor.swift
//  Archetecture
//
//  Created by ilyas.ikhsanov on 21.02.2022.
//

import Foundation

protocol VIPERInteractorProtocol: AnyObject {
    func getData()
}

final class VIPERInteractor: VIPERInteractorProtocol {
    
    private let dataManager: DataManager
    weak var presenter: VIPERPresenterProtocol?
    
    init(dataManager: DataManager) {
        self.dataManager = dataManager
    }
    
    // MARK: - VIPERInteractorProtocol
    
    func getData() {
        let data = dataManager.getData()
        presenter?.didGetData(data: data)
    }
}
