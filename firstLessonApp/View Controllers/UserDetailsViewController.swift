//
//  UserDetailsViewController.swift
//  myBrilliantApp
//
//  Created by Lyudmyla Gulik on 13.07.2021.
//

import UIKit

class UserDetailsViewController: UIViewController {
    
    var user: User?
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var avatar: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        if let user = user {
            nameLabel.text = user.firstName + " " + user.lastName
            avatar.image = UIImage(named: user.picture)
        }
    }
}
