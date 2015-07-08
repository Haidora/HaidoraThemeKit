//
//  HDThemeKit.swift
//  Pods
//
//  Created by Dailingchi on 15/7/6.
//
//

import Foundation
import UIKit

/**
*  如果要自定义样式,需要该协议
*/
@objc public protocol HDThemeStyle {
    
    /**
    真正起作用的地方
    */
    static func applyHDTheme()
    /**
    For Xcode Build(语法编译通过,为空)
    */
    func applyHDTheme()
}

@objc public class HDThemeKit: NSObject {

    /// App主色调
    internal var primaryColor: UIColor!
    internal var secondaryColor: UIColor!

    /// 需要Style的UIClass
    public var styleUIKits: [AnyClass] = [UISwitch.self, UIStepper.self, UIToolbar.self,UIProgressView.self, UITabBar.self, UIPageControl.self, UIActivityIndicatorView.self, UISlider.self, UISegmentedControl.self, UINavigationBar.self] {
        didSet {
            HDThemeKit.applyTheme()
        }
    }
    
    public class func shareInstance() -> HDThemeKit {
        
        struct HDThemeKitSingleton {
            static var predicate: dispatch_once_t = 0
            static var instance: HDThemeKit? = nil;
        }
        
        dispatch_once(&HDThemeKitSingleton.predicate, {
            HDThemeKitSingleton.instance = HDThemeKit()
        })
        return HDThemeKitSingleton.instance!
    }
    
    public class func setupTheme(primaryColor: UIColor! = UIColor(red:0.153, green:0.647, blue:0.600, alpha: 1), secondaryColor: UIColor! = UIColor.whiteColor()) {
        HDThemeKit.shareInstance().primaryColor = primaryColor
        HDThemeKit.shareInstance().secondaryColor = secondaryColor
        HDThemeKit.applyTheme()
    }
    
    /// 更新Theme
    internal class func applyTheme() {
        for uiClass in HDThemeKit.shareInstance().styleUIKits {
            if let conformsClass = uiClass as? HDThemeStyle {
                conformsClass.applyHDTheme()
            } else {
                println("\(uiClass) need conformsToProtocol HDThemeStyle")
            }
        }
    }

}
