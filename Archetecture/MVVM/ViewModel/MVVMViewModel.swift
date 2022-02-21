//
//  MVVMViewModel.swift
//  Archetecture
//
//  Created by ilyas.ikhsanov on 21.02.2022.
//

import Foundation

protocol MVVMViewModelProtocol: AnyObject {
    var title: String? { get }
    var titleDidChange: ((MVVMViewModelProtocol) -> Void)? { set get }
    
    func viewDidLoad()
    func didTapButton()
}

final class MVVMViewModel: MVVMViewModelProtocol {
    
    var title: String? {
        didSet {
            self.titleDidChange?(self)
        }
    }
    var titleDidChange: ((MVVMViewModelProtocol) -> Void)?
    
    let dataManager: DataManager
    
    init(dataManager: DataManager) {
        self.dataManager = dataManager
    }
    
    func viewDidLoad() {
        let data = dataManager.getData()
        title = data
    }
    
    func didTapButton() {
        title = "1,2,3"
    }
    
}
