//
//  UISwitch+HDThemeKit.swift
//  Pods
//
//  Created by Dailingchi on 15/7/6.
//
//

import Foundation
import UIKit

// MARK: - 适配OK
extension UISwitch: HDThemeStyle {
    
    public func applyHDTheme() {
        
    }
    
    public static func applyHDTheme() {
        UISwitch.applyHDTheme(turnedOnColor: HDThemeKit.shareInstance().primaryColor)
    }
    
    /**
    https://developer.apple.com/library/ios/documentation/UIKit/Reference/UISwitch_Class/

    :param: turnedOnColor
    :param: thumbTintColor
    :param: tintColor
    :param: onImage
    :param: offImage
    */
    public static func applyHDTheme(turnedOnColor: UIColor? = nil,
        thumbTintColor: UIColor? = nil,
        tintColor: UIColor? = nil,
        onImage: UIImage? = nil,
        offImage: UIImage? = nil) {
        UISwitch.appearance().onTintColor = turnedOnColor
        UISwitch.appearance().thumbTintColor = thumbTintColor
        UISwitch.appearance().tintColor = tintColor
        UISwitch.appearance().onImage = onImage
        UISwitch.appearance().offImage = offImage
    }
}