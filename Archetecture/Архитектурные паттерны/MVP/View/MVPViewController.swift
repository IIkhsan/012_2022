//
//  MVPViewController.swift
//  Archetecture
//
//  Created by ilyas.ikhsanov on 15.02.2022.
//

import UIKit

protocol MVPViewProtocol: AnyObject {
    func configureView(text: String)
}

final class MVPViewController: UIViewController {
    
    //Dependencies
    let presenter: MVPPresenterProtocol
    
    // UI
    lazy var titleLabel: UILabel = UILabel()
    lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Tap me", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        return button
    }()

    // MARK: - Init
    init(presenter: MVPPresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.viewDidLoad()
        createView()
    }
    
    // Private
    private func createView() {
        view.backgroundColor = .white
        view.addSubview(titleLabel)
        view.addSubview(button)
        titleLabel.frame = CGRect(x: 50, y: 100, width: 200, height: 40)
        button.frame = CGRect(x: 50, y: titleLabel.frame.maxY + 24, width: 200, height: 40)
    }
    
    @objc
    private func didTapButton() {
        presenter.didTapButton()
    }
}

// MARK: - MVPViewProtocol

extension MVPViewController: MVPViewProtocol {
    func configureView(text: String) {
        titleLabel.text = text
    }
}
