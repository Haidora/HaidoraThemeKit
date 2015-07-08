//
//  UIStepper+HDThemeKit.swift
//  Pods
//
//  Created by Dailingchi on 15/7/7.
//
//

import Foundation
import Foundation
import UIKit

// MARK: - 适配OK
extension UIStepper: HDThemeStyle {
    
    public func applyHDTheme() {
        
    }
    
    public static func applyHDTheme() {
        UIStepper.applyHDTheme(HDThemeKit.shareInstance().primaryColor)
    }
    
    /**
    https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIStepper_Class/
    
    :param: tintColor
    */
    public static func applyHDTheme(tintColor: UIColor?) {
        UIStepper.appearance().tintColor = tintColor
    }
}
