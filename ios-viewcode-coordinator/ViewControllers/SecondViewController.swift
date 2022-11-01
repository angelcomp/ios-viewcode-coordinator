//
//  SecondViewController.swift
//  ios-viewcode-coordinator
//
//  Created by Angelica dos Santos on 01/11/22.
//

import UIKit

class SecondViewController: UIViewController {

    private var vcTitle: UILabel = {
        let element = UILabel()
        element.text = "Second View Controller Screen"
        element.textColor = .black
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    
    private var button: UIButton = {
        let element = UIButton()
        element.setTitle("Go to View Controller", for: .normal)
        element.backgroundColor = .systemBlue
        element.setTitleColor(.white, for: .normal)
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    
    var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc private func didTapButton(_ sender: UIButton) {
        coordinator?.goToViewController()
    }
    
    private func setupViews() {
        
        view.backgroundColor = .orange
        
        view.addSubview(vcTitle)
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            vcTitle.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            vcTitle.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            
            button.topAnchor.constraint(equalTo: vcTitle.bottomAnchor, constant: 30),
            button.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            button.widthAnchor.constraint(equalToConstant: 200)
        ])
    }

}
