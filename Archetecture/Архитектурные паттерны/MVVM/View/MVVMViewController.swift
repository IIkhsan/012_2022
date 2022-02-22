//
//  MVVMViewController.swift
//  Archetecture
//
//  Created by ilyas.ikhsanov on 21.02.2022.
//

import UIKit

class MVVMViewController: UIViewController {

    //Dependencies
    var viewModel: MVVMViewModel! {
        didSet {
            viewModel.titleDidChange = { [weak self] viewModel in
                self?.titleLabel.text = viewModel.title
            }
        }
    }
    
    // UI
    lazy var titleLabel: UILabel = UILabel()
    lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Tap me", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        return button
    }()

    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createView()
        viewModel.viewDidLoad()
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
        viewModel.didTapButton()
    }
}
