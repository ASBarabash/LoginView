//
//  WelcomeViewController.swift
//  LoginView
//
//  Created by Alexandr Barabash on 08.03.2022.
//

import UIKit

class WelcomeViewController: UIViewController {


    @IBOutlet weak var welcomeUserLabel: UILabel!
    
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeUserLabel.text = "Welcome, \(user)"
    }
    
}
