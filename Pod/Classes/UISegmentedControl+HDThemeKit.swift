//
//  UISegmentedControl+HDThemeKit.swift
//  Pods
//
//  Created by Dailingchi on 15/7/6.
//
//

import Foundation
import UIKit

extension UISegmentedControl: HDThemeStyle {
    
    public func applyHDTheme() {
        
    }
    
    public static func applyHDTheme() {
        UISegmentedControl.applyHDTheme(HDThemeKit.shareInstance().primaryColor)
    }
    
    /**
    https://developer.apple.com/library/ios/documentation/UIKit/Reference/UISegmentedControl_Class/#//apple_ref/doc/uid/TP40006807-CH3-SW33
    
    :param: tintColor 
    */
    public static func applyHDTheme(tintColor: UIColor) {
        UISegmentedControl.appearance().tintColor = tintColor
    }
}