//
//  UINavigationBar+HDThemeKit.swift
//  Pods
//
//  Created by Dailingchi on 15/7/6.
//
//

import Foundation
import UIKit

extension UINavigationBar: HDThemeStyle {
    
    public func applyHDTheme() {}
    
    public static func applyHDTheme() {
        UINavigationBar.applyHDTheme(HDThemeKit.shareInstance().secondaryColor, navigationBackground: HDThemeKit.shareInstance().primaryColor)
    }
    /** https://developer.apple.com/library/ios/documentation/UIKit/Reference/UINavigationBar_Class/#//apple_ref/doc/uid/TP40006887-CH3-SW16
    
    :param: navigationTitleColor
    :param: navigationBackground
    :param: navigationTitleFont
    :param: navigationItemColor
    :param: navigationBarStyle   
    */
    public static func applyHDTheme(navigationTitleColor: UIColor?,
        navigationBackground: UIColor? = nil,
        navigationTitleFont: UIFont? = UIFont.boldSystemFontOfSize(20),
        navigationItemColor: UIColor = UIColor.whiteColor(),
        navigationBarStyle: UIBarStyle = UIBarStyle.Default) {
        UINavigationBar.appearance().tintColor = navigationItemColor
        UINavigationBar.appearance().barTintColor = navigationBackground
        UINavigationBar.appearance().barStyle = navigationBarStyle
        
        var titleTextAttributes: [NSObject : AnyObject] = [NSObject : AnyObject]()
        if let navTitleTextAttributes = UINavigationBar.appearance().titleTextAttributes {
            titleTextAttributes = navTitleTextAttributes
        }
        if let navigationTitleColor = navigationTitleColor {
            titleTextAttributes[NSForegroundColorAttributeName] = navigationTitleColor
        }
        if let navigationTitleFont = navigationTitleFont {
            titleTextAttributes[NSFontAttributeName] = navigationTitleFont
        }
        UINavigationBar.appearance().titleTextAttributes = titleTextAttributes
    }
}