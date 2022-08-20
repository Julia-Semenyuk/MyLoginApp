//
//  UserViewController.swift
//  MyLoginApp
//
//  Created by Юлия on 19.08.2022.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet var photoImage: UIImageView! {
        didSet {
            photoImage.layer.cornerRadius = photoImage.frame.height / 2
        }
    }
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var hobbyLabel: UILabel!
    @IBOutlet var favoriteMovieLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayuer()
        photoImage.image = UIImage(named: "j")
        title = user.person.fullName
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        hobbyLabel.text = user.person.hobby.title.rawValue
        favoriteMovieLabel.text = user.person.movie.title.rawValue

     
    }
}
