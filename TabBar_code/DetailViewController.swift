//
//  DetailViewController.swift
//  TabBar_code
//
//  Created by Rafael Gonzalez on 05/03/25.
//


//
//  DetailViewController.swift
//  TabBar_code
//
//  Created by Rafael Gonzalez on 05/03/25.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupUI()
        
        
    }
    
    func setupUI() {
        
        view.backgroundColor = .systemBackground
        
        let label = {
            let label = UILabel()
            label.text = "Detailed Informaction"
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
