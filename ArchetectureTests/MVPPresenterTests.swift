//
//  MVPPresenterTests.swift
//  ArchetectureTests
//
//  Created by ilyas.ikhsanov on 01.03.2022.
//

import XCTest
@testable import Archetecture

class MVPPresenterTests: XCTestCase {

    var view: MVPViewMock!
    var modelService: MVPModelServiceMock!
    var presenter: MVPPresenter!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        view = .init()
        modelService = .init()
        
        presenter = MVPPresenter(model: modelService)
        presenter.view = view
    }

    override func tearDownWithError() throws {
        modelService = nil
        view = nil
        presenter = nil
        
        try super.tearDownWithError()
    }

    func testMakeHelloStringSuccess() throws {
        // given
        let name = "Миша"
        // when
        let result = presenter.makeHelloString(name: name)
        // then
        XCTAssertEqual(result, "Миша, приветствую тебя!", "Результат не соответствует ожиданиям")
    }
    
    func testMakeHelloStringFail() throws {
        let name = "Миша"
        let result = presenter.makeHelloString(name: name)

        XCTAssertNotEqual(result, "Миша, приветствую тебя", "Результат не соответствует ожиданиям")
    }
    
    func testViewConfigureSuccess() throws {
        // given
        let loadData = "Данные конфигурации"
        modelService.loadTextCompletionResult = loadData
        
        // when
        presenter.viewDidLoad()
        
        // then
        XCTAssertEqual(view.configureViewText, loadData)
    }
}
