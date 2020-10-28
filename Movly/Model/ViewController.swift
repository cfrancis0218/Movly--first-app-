//
//  ViewController.swift
//  Movly
//
//  Created by Christian Elijah on 2020-08-12.
//  Copyright © 2020 Christian Elijah. All rights reserved.
//

import UIKit

// Start Screen
class ViewController: UIViewController {
    
    
    @IBOutlet var SignUp: UIButton!
    @IBOutlet var SignIn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customSignUpButton()
        customSignInButton()
    }
    
    // Sign Up Button Styling
    func customSignUpButton() {
        SignUp.layer.borderColor = UIColor.white.cgColor
        SignUp.layer.borderWidth = 2
        SignUp.layer.cornerRadius = 25
    }
    
    // Sign In Button Styling
    func customSignInButton() {
        SignIn.layer.cornerRadius = 25
    }
}

