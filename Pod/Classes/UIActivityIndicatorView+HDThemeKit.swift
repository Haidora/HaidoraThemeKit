//
//  UIActivityIndicatorView+HDThemeKit.swift
//  Pods
//
//  Created by Dailingchi on 15/7/7.
//
//

import Foundation
import UIKit

extension UIActivityIndicatorView: HDThemeStyle {
    
    public func applyHDTheme() {}
    
    public static func applyHDTheme() {
        UIActivityIndicatorView.applyHDTheme(HDThemeKit.shareInstance().primaryColor)
    }
    
    /**
    https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIActivityIndicatorView_Class/
    
    :param: activityColor
    :param: activityIndicatorViewStyle 
    */
    public static func applyHDTheme(activityColor: UIColor,
        activityIndicatorViewStyle: UIActivityIndicatorViewStyle = UIActivityIndicatorViewStyle.WhiteLarge) {
        UIActivityIndicatorView.appearance().activityIndicatorViewStyle = activityIndicatorViewStyle
        UIActivityIndicatorView.appearance().color = activityColor
    }
}