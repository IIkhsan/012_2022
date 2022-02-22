//
//  VIPERViewController.swift
//  Archetecture
//
//  Created by ilyas.ikhsanov on 21.02.2022.
//

import UIKit

protocol VIPERViewInput: AnyObject {
    func configureView(text: String)
}

protocol VIPERViewOutput: AnyObject {
    func viewDidLoad()
    func didTapButton()
}

final class VIPERViewController: UIViewController {
    
    //Dependencies
    private let presenter: VIPERViewOutput
    
    // UI
    lazy var titleLabel: UILabel = UILabel()
    lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Tap me", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        return button
    }()

    // MARK: - Init
    init(presenter: VIPERViewOutput) {
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

// MARK: - VIPERViewInput

extension VIPERViewController: VIPERViewInput {
    func configureView(text: String) {
        titleLabel.text = text
    }
}
