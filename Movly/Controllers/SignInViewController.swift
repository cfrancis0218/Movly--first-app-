//
//  SignInViewController.swift
//  Movly
//
//  Created by Christian Elijah on 2020-08-16.
//  Copyright © 2020 Christian Elijah. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet var SignInButton: UIButton!
    @IBOutlet var emailField: UITextField!
    @IBOutlet var passwordField: UITextField!
    @IBOutlet var logIn: UILabel!
    @IBOutlet var icon: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        signInButton()
        iconEdits()
        customTextFields()
    }
    
    func signInButton() {
        SignInButton.layer.borderColor = UIColor.black.cgColor
        SignInButton.layer.borderWidth = 2
        SignInButton.layer.cornerRadius = 25
    }
    func customTextFields() {
        emailField.backgroundColor = .systemGroupedBackground
        passwordField.backgroundColor = .systemGroupedBackground
    }
    
    func iconEdits() {
        
    }
}
