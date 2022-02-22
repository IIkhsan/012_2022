//
//  MVVMModel.swift
//  Archetecture
//
//  Created by ilyas.ikhsanov on 22.02.2022.
//

import Foundation

protocol MVVMModelProtocol {
    func getData() -> String
}

final class MVVMModel: MVVMModelProtocol {
    
    let dataManager: DataManager
    
    init(dataManager: DataManager) {
        self.dataManager = dataManager
    }
    
    func getData() -> String {
        dataManager.getData()
    }
}
