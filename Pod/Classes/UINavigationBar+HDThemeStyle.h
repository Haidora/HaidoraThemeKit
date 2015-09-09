//
//  UINavigationBar+HDThemeStyle.h
//  Pods
//
//  Created by Dailingchi on 15/9/9.
//
//

#import <UIKit/UIKit.h>
#import "HDThemeStyle.h"

@interface UINavigationBar (HDThemeStyle) <HDThemeStyle>

/**
 *  https://developer.apple.com/library/ios/documentation/UIKit/Reference/UINavigationBar_Class/#//apple_ref/doc/uid/TP40006887-CH3-SW16
 *
 *  @param navigationTitleColor
 *  @param navigationBackground
 *  @param navigationTitleFont
 *  @param navigationItemColor
 *  @param navigationBarStyle
 */
+ (void)applyHDTheme:(UIColor *)navigationTitleColor
navigationBackground:(UIColor *)navigationBackground
 navigationTitleFont:(UIFont *)navigationTitleFont
 navigationItemColor:(UIColor *)navigationItemColor
  navigationBarStyle:(UIBarStyle)navigationBarStyle;

@end
