//
//  ViewController.swift
//  LoginView
//
//  Created by Alexandr Barabash on 08.03.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userNameLabel: UITextField!
    @IBOutlet weak var passwordLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if userNameLabel.text == "User" && passwordLabel.text == "Password" {
            guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
            welcomeVC.welcomeUser = userNameLabel.text
        } else {
            showAlert(title: "Invalid login or password", message: "Please, enter correct login and password")
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
    }

    @IBAction func logInButton() {
    }
    
    
    @IBAction func userNameButton() {
        showAlert(title: "Oops!😜", message: "Your name is User")
    }
    
    @IBAction func passwordButton() {
        showAlert(title: "Oops!", message: "Your password is Password")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let _ = segue.source as? WelcomeViewController else { return }
        userNameLabel.text = ""
        passwordLabel.text = ""
    }
}

// MARK: - Private Methods
extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordLabel.text = nil
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
