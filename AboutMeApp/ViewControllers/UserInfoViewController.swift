//
//  UserInfoViewController.swift
//  AboutMeApp
//
//  Created by Maxim Gridenko on 15.10.2023.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var departamentLabel: UILabel!
    @IBOutlet weak var jobTitleLabel: UILabel!
    
    var user: User!
    
    var name: String!
    var surname: String!
    var company: String!
    var departament: String!
    var jobTitle: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
