//
//  UserInfoViewController.swift
//  AboutMeApp
//
//  Created by Maxim Gridenko on 15.10.2023.
//

import UIKit

final class UserInfoViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView! {
        didSet { imageView.layer.cornerRadius = imageView.frame.height / 2 }
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var departamentLabel: UILabel!
    @IBOutlet weak var jobTitleLabel: UILabel!
    
    @IBOutlet weak var userNavigationBarLabel: UINavigationItem!
     var user: User!
    
   private var name: String!
    var surname: String!
    var company: String!
    var departament: String!
    var jobTitle: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.gradient()
        imageView.image = UIImage(named: user.person.photo)
        
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        companyLabel.text = user.person.company
        departamentLabel.text = user.person.departament
        jobTitleLabel.text = user.person.jobTitle
        userNavigationBarLabel.title = user.person.fullName
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.user = user
    }
}


