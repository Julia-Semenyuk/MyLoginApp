//
//  File.swift
//  MyLoginApp
//
//  Created by Юлия on 20.08.2022.
//

import UIKit

extension UIView {
    func addVerticalGradientLayuer() {
     let primaryColor = UIColor(red: 117/201, green: 180/100, blue: 214/66, alpha: 1)
        let secondaryColor = UIColor(red: 113/255, green: 80/125, blue: 210/255, alpha: 1)
        
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [primaryColor.cgColor, secondaryColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
