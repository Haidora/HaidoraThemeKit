//
//  UIToolbar+HDThemeKit.swift
//  Pods
//
//  Created by Dailingchi on 15/7/7.
//
//

import Foundation
import UIKit

extension UIToolbar: HDThemeStyle {
    
    public func applyHDTheme() {
        
    }
    
    public static func applyHDTheme() {
        UIToolbar.applyHDTheme(toolbarBackground: HDThemeKit.shareInstance().primaryColor, barItemTintColor: HDThemeKit.shareInstance().secondaryColor)
    }
    
    /**
    https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIToolbar_Class/#//apple_ref/doc/uid/TP40006927-CH3-SW4
   
    :param: toolbarBackground
    :param: barItemTintColor
    :param: barStyle
    :param: translucent
    */
    public static func applyHDTheme(toolbarBackground: UIColor? = nil,
        barItemTintColor: UIColor? = nil,
        barStyle: UIBarStyle = UIBarStyle.Default,
        translucent: Bool = true) {
        UIToolbar.appearance().barTintColor = toolbarBackground
        UIToolbar.appearance().tintColor = barItemTintColor
        UIToolbar.appearance().barStyle = barStyle
        UIToolbar.appearance().translucent = translucent
    }
}
