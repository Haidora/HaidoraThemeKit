//
//  UIPageControl+HDThemeKit.swift
//  Pods
//
//  Created by Dailingchi on 15/7/7.
//
//

import Foundation
import UIKit

extension UIPageControl: HDThemeStyle {
    
    public func applyHDTheme() {
        
    }
    
    public static func applyHDTheme() {
        UIPageControl.applyHDTheme(currentPageIndicatorColor: HDThemeKit.shareInstance().primaryColor)
    }
    
    /**
    https://developer.apple.com/library/ios/documentation/UserExperience/Conceptual/UIKitUICatalog/UIPageControl.html#//apple_ref/doc/uid/TP40012857-UIPageControl
    
    :param: currentPageIndicatorColor
    :param: pageIndicatorColor        
    */
    public static func applyHDTheme(currentPageIndicatorColor: UIColor? = nil,
        pageIndicatorColor: UIColor? = UIColor.lightGrayColor()) {
        UIPageControl.appearance().currentPageIndicatorTintColor = currentPageIndicatorColor
        UIPageControl.appearance().pageIndicatorTintColor = pageIndicatorColor
    }
}
