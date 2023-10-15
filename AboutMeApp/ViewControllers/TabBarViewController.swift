//
//  TabBarViewController.swift
//  AboutMeApp
//
//  Created by Maxim Gridenko on 15.10.2023.
//

import UIKit

class TabBarViewController: UITabBarController {

    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.items?.last?.title = user.person.fullName

    }
    private func sendingData(){
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController{
                welcomeVC.user = user
            }else if let navigationVC = $0 as? UINavigationController{
                let userInfoVC = navigationVC.topViewController
                guard let userInfoVC = userInfoVC as? UserInfoViewController else{ return }
                userInfoVC.user = user
            }
        }
    }
}

