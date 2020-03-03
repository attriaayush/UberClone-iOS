//
//  LoginController.swift
//  UberClone
//
//  Created by ATTRI AAYUSH on 03/03/2020.
//  Copyright © 2020 ATTRI AAYUSH. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    // MARK: - Properties
    // here we are creating a titleLabel and casting it to UILabel
    private let titleLable: UILabel = {
        let label = UILabel() // init
        // Creating some properties for the label
        label.text = "UBER"
        label.font = UIFont(name: "Aventir-Light", size: 36)
        label.textColor = UIColor(white: 1, alpha: 0.8)
        return label
    }()
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(red: 25/255, green: 25/255, blue: 25/255, alpha: 1)
        
        view.addSubview(titleLable)
        titleLable.translatesAutoresizingMaskIntoConstraints = false // disabling the autoresizing contraints
        // programtically centering a label
        titleLable.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
