//
//  InfoViewController.swift
//  LoginView
//
//  Created by Alexandr Barabash on 12.03.2022.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var hobbyLabel: UILabel!
    
    var name = ""
    var age = ""
    var city = ""
    var hobby = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
        ageLabel.text = age
        cityLabel.text = city
        hobbyLabel.text = hobby
    }

}
