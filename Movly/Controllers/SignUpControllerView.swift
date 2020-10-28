//
//  HomeScreenViewController.swift
//  Movly
//
//  Created by Christian Elijah on 2020-08-16.
//  Copyright © 2020 Christian Elijah. All rights reserved.
//

import UIKit

// Sign Up Controller View
class SignUpControllerView: UIViewController {

    @IBOutlet var SignUpButton: UIButton!
    @IBOutlet var createAcc: UILabel!
    @IBOutlet var Icon: UIImageView!
    @IBOutlet var fields: [UITextField]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        signUpButton()
        shadowStyling()
    }
    
    func signUpButton() {
        SignUpButton.layer.borderColor = UIColor.black.cgColor
        SignUpButton.layer.borderWidth = 2
        SignUpButton.layer.cornerRadius = 25
    }
    
    // Look into
    func shadowStyling() {
        
    }
}
