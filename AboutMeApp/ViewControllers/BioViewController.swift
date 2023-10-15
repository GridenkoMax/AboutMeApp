//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Maxim Gridenko on 15.10.2023.
//

import UIKit

final class BioViewController: UIViewController {

    

    @IBOutlet weak var bioLabel: UILabel!
    
    
     var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bioLabel.text = user.person.bio
        view.gradient()
    }
}

