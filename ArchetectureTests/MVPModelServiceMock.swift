//
//  MVPModelServiceMock.swift
//  ArchetectureTests
//
//  Created by ilyas.ikhsanov on 01.03.2022.
//

import Foundation
@testable import Archetecture

final class MVPModelServiceMock: MVPModelServiceProtocol {
    
    var loadTextCompletionResult: String!
    
    func loadText(completion: @escaping (String) -> Void) {
        completion(loadTextCompletionResult)
    }
}
