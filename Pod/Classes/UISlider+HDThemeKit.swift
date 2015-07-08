//
//  UISlider+HDThemeKit.swift
//  Pods
//
//  Created by Dailingchi on 15/7/6.
//
//

import Foundation
import UIKit

// MARK: - 适配OK
extension UISlider: HDThemeStyle {
    
    public func applyHDTheme() {
        
    }
    
    public static func applyHDTheme() {
        UISlider.applyHDTheme(HDThemeKit.shareInstance().primaryColor)
    }
    
    /**
    https://developer.apple.com/library/ios/documentation/UIKit/Reference/UISlider_Class/

    :param: minimumTrackTintColor
    :param: thumbTintColor
    :param: maximumTrackTintColor
    :param: minimumValueImage
    :param: maximumValueImage
    */
    public static func applyHDTheme(minimumTrackTintColor: UIColor?,
        thumbTintColor: UIColor? = nil,
        maximumTrackTintColor: UIColor? = UIColor.lightGrayColor(),
        minimumValueImage: UIImage? = nil,
        maximumValueImage: UIImage? = nil) {
        UISlider.appearance().minimumTrackTintColor = minimumTrackTintColor
        UISlider.appearance().thumbTintColor = thumbTintColor
            //TODO: maximumTrackTintColor 需要测试
        UISlider.appearance().maximumTrackTintColor = maximumTrackTintColor
        
        UISlider.appearance().minimumValueImage = minimumValueImage
        UISlider.appearance().maximumValueImage = maximumValueImage
    }
}
