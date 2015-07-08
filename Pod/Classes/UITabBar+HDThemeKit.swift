//
//  UITabBar+HDThemeKit.swift
//  Pods
//
//  Created by Dailingchi on 15/7/7.
//
//

import Foundation
import UIKit

extension UITabBar: HDThemeStyle {
    
    public func applyHDTheme() {
        
    }
    
    public static func applyHDTheme() {
        UITabBar.applyHDTheme(tabbarBackground: HDThemeKit.shareInstance().primaryColor, barItemTintColor: HDThemeKit.shareInstance().secondaryColor)
    }
    
    /**
    https://developer.apple.com/library/ios/documentation/UIKit/Reference/UITabBar_Class/#//apple_ref/doc/uid/TP40007521-CH3-SW4
    
    :param: tabbarBackground
    :param: barItemTintColor
    :param: barStyle
    :param: translucent      
    */
    public static func applyHDTheme(tabbarBackground: UIColor? = nil,
        barItemTintColor: UIColor? = nil,
        barStyle: UIBarStyle = UIBarStyle.Default,
        translucent: Bool = true) {
        UITabBar.appearance().barTintColor = tabbarBackground
        UITabBar.appearance().tintColor = barItemTintColor
        UITabBar.appearance().barStyle = barStyle
        UITabBar.appearance().translucent = translucent
    }
}
