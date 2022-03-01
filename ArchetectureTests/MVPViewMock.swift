//
//  MVPViewMock.swift
//  ArchetectureTests
//
//  Created by ilyas.ikhsanov on 01.03.2022.
//

import Foundation
@testable import Archetecture

final class MVPViewMock: MVPViewProtocol {
    
    var configureViewText: String!
    
    func configureView(text: String) {
        configureViewText = text
    }
}
