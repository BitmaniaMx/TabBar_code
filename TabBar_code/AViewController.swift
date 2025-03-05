//
//  AViewController.swift
//  TabBar_code
//
//  Created by Rafael Gonzalez on 04/03/25.
//

import UIKit

class AViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
    }
    
    func setupUI(){
        
        let labelA = {
            let label = UILabel()
            label.text = "A"
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        NSLayoutConstraint.activate([
            labelA.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelA.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        view.addSubview(labelA)
    }
}
