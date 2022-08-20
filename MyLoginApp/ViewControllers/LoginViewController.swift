//
//  LoginViewController.swift
//  MyLoginApp
//
//  Created by Юлия on 19.08.2022.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = User.getUserData()
     
    //MARK: - Override function
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else  { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach { viewController in
         if let welcomeVC = viewController as? WelcomeViewController {
             welcomeVC.user = user
           } else if let navigationVC = viewController as? UINavigationController {
              guard
                let userVC = navigationVC.topViewController as? UserViewController
               else { return }
               userVC.user = user
           }
            
        }
    }
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            super.touchesBegan(touches, with: event)
            view.endEditing(true)
        }
        
     //MARK: - @IBAction
        @IBAction func logInButtonPressed() {
            guard userNameTF.text == user.login, passwordTF.text == user.password else {
                showAlert(
                    title: "Invalid login or password",
                    message: "Please, enter correct login and password",
                    textField: passwordTF
                )
                return
            }
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }
     
     @IBAction func forgotUserNameButton() {
         showAlert(title: "Oops!", message: "Your name is \(user.login) 😉")
     }
     
     @IBAction func forgotPasswordButton() {
         showAlert(title: "Oops!", message: "Your password is \(user.password) 😉 ")
     }
     
     
     @IBAction func unwindSegue(_ segue: UIStoryboardSegue ) {
         userNameTF.text = ""
         passwordTF.text = ""
     }
     
        //MARK: - UIAlertController
        private func showAlert(title: String, message: String, textField: UITextField? = nil) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
                textField?.text = ""
            }
            alert.addAction(okAction)
            present(alert, animated: true)
        }
 }


     
 




