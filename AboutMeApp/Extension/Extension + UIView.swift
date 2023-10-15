//
//  Extension + UIView.swift
//  AboutMeApp
//
//  Created by Maxim Gridenko on 15.10.2023.
//

import UIKit

extension UIView{
    func gradient(){

        let color1 = UIColor(red: 153 / 255, green: 26 / 255, blue: 61 / 255, alpha: 0.9).cgColor
        let color2 = UIColor(red: 243 / 255, green: 105 / 255, blue: 231 / 255, alpha: 0.5).cgColor

       let gradientBackground = CAGradientLayer()
       gradientBackground.frame = bounds
       gradientBackground.colors = [color1, color2]
       gradientBackground.startPoint = CGPoint(x: 0.0, y: 0.0)
       gradientBackground.endPoint = CGPoint(x: 0.0, y: 1.0)
       layer.insertSublayer(gradientBackground, at: 0)
   }
}

