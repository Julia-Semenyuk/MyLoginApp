//
//  WelcomeViewController.swift
//  MyLoginApp
//
//  Created by Юлия on 19.08.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayuer()
        welcomeLabel.text = "Welcome, \(user.person.fullName)!"
       }
    

}
