//
//  CViewController.swift
//  TabBar_code
//
//  Created by Rafael Gonzalez on 05/03/25.
//

import UIKit

class CViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
    }
    
    func setupUI(){
        
        view.backgroundColor = .systemBackground
        
        let labelC = {
            let label = UILabel()
            label.text = "C"
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        let buttonC = {
           let button = UIButton(type: .system)
            button.setTitle("View Details", for: .normal)
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()
        
        view.addSubview(labelC)
        NSLayoutConstraint.activate([
            labelC.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelC.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        view.addSubview(buttonC)
        NSLayoutConstraint.activate([
            buttonC.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonC.topAnchor.constraint(equalTo: labelC.bottomAnchor, constant: 20)
        ])
    }
}

