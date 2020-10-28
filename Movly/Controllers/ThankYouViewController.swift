//
//  ThankYouViewController.swift
//  Movly
//
//  Created by Christian Elijah on 2020-08-18.
//  Copyright © 2020 Christian Elijah. All rights reserved.
//

import UIKit

class ThankYouViewController: UIViewController {

    @IBOutlet var homeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        buttonEdit()
    }
    
    func buttonEdit() {
        homeButton.layer.borderColor = UIColor.white.cgColor
        homeButton.layer.borderWidth = 2
        homeButton.layer.cornerRadius = 25
    }
}
