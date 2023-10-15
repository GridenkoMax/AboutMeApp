//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Maxim Gridenko on 06.10.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var loginName: UILabel!
    
     var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        loginName.text = user.person.fullName
        view.gradient()
    }
}


