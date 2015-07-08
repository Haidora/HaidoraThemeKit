//
//  UIProgressView+HDThemeKit.swift
//  Pods
//
//  Created by Dailingchi on 15/7/7.
//
//

import Foundation
import UIKit

extension UIProgressView: HDThemeStyle {
    
    public func applyHDTheme() {}
    
    public static func applyHDTheme() {
        UIProgressView.applyHDTheme(HDThemeKit.shareInstance().primaryColor)
    }

    /**
    https://developer.apple.com/library/ios/documentation/UserExperience/Conceptual/UIKitUICatalog/UIProgressView.html#//apple_ref/doc/uid/TP40012857-UIProgressView
    
    :param: progressColor     
    :param: trackColor
    :param: progressImage
    :param: trackImage
    :param: progressViewStyle
    */
    public static func applyHDTheme(progressColor: UIColor?,
        trackColor: UIColor? = UIColor.lightGrayColor(),
        progressImage: UIImage? = nil,
        trackImage: UIImage? = nil,
        progressViewStyle: UIProgressViewStyle = UIProgressViewStyle.Default) {
        UIProgressView.appearance().progressTintColor = progressColor
        UIProgressView.appearance().trackTintColor = trackColor
        
        UIProgressView.appearance().progressImage = progressImage
        UIProgressView.appearance().trackImage = trackImage
        UIProgressView.appearance().progressViewStyle = progressViewStyle
    }
}