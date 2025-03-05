//
//  CViewController.swift
//  TabBar_code
//
//  Created by Rafael Gonzalez on 04/03/25.
//

import UIKit

class CViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
    }
    
    func setupUI(){
        
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
        
        NSLayoutConstraint.activate([
            labelC.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelC.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        view.addSubview(labelC)
    }


}
