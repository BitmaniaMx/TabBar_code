//
//  BViewController.swift
//  TabBar_code
//
//  Created by Rafael Gonzalez on 04/03/25.
//

import UIKit

class BViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
    }
    
    
    
    func setupUI(){
        
        view.backgroundColor = .systemBackground
        
        let labelB = {
            let label = UILabel()
            label.text = "B"
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        view.addSubview(labelB)
        
        NSLayoutConstraint.activate([
            labelB.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelB.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

