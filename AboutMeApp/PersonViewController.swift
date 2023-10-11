//
//  PersonViewController.swift
//  AboutMeApp
//
//  Created by Maxim Gridenko on 10.10.2023.
//

import UIKit

class PersonViewController: UIViewController {

    @IBOutlet weak var nameText: UILabel!
    @IBOutlet weak var surnameText: UILabel!
    
    @IBOutlet weak var companyText: UILabel!
    
    @IBOutlet weak var departamentText: UILabel!
    
    @IBOutlet weak var jobTitleText: UILabel!
    
    @IBOutlet weak var scenceTitleText: UINavigationItem!
    
    @IBOutlet weak var imagePhoto: UIImageView!
    
    let person = Scence.getInfoScence()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scenceTitleText.title = person.title
        nameText.text = person.name
        surnameText.text = person.surname
        companyText.text = person.company
        departamentText.text = person.departament
        jobTitleText.text = person.jobTitle
        imagePhoto.image = UIImage(named: "1")
        
    }
}
