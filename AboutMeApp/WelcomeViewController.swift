//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Maxim Gridenko on 06.10.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var loginName: UILabel!
    
    var logName: Scence!
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginName.text = Scence.getUser().nameUser

        gradient()
    }
}
//MARK: - создание градиента для WelcomeViewController
extension WelcomeViewController{
     func gradient(){
        
        let color1 = UIColor(red: 153 / 255, green: 26 / 255, blue: 61 / 255, alpha: 1.0).cgColor
        let color2 = UIColor(red: 243 / 255, green: 155 / 255, blue: 51 / 255, alpha: 1.0).cgColor
        
        let gradientBackground = CAGradientLayer()
        gradientBackground.frame = self.view.bounds
        gradientBackground.colors = [color1, color2]
        gradientBackground.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientBackground.endPoint = CGPoint(x: 0.0, y: 1.0)
        self.view.layer.insertSublayer(gradientBackground, at: 0)
    }
}
