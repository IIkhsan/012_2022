//
//  MVPModel.swift
//  Archetecture
//
//  Created by ilyas.ikhsanov on 15.02.2022.
//

import Foundation

protocol MVPModelServiceProtocol {
    func loadText(completion: @escaping(String) -> Void)
}

final class MVPModelService: MVPModelServiceProtocol {
    
    let dataManager = DataManager()
    
    func loadText(completion: @escaping (String) -> Void) {
        let data = dataManager.getData()
        completion(data)
    }
}
