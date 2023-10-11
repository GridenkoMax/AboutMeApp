//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Maxim Gridenko on 10.10.2023.
//

import UIKit

class BioViewController: UIViewController {

    @IBOutlet weak var biographyText: UILabel!
    
    @IBOutlet weak var labelText: UILabel!
     
    override func viewDidLoad() {
        super.viewDidLoad()

        biographyText.text = bio.biography
        labelText.text = Scence.getInfoScence().title
    }
    

}
