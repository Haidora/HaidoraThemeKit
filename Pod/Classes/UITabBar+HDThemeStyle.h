//
//  UITabBar+HDThemeStyle.h
//  Pods
//
//  Created by Dailingchi on 15/9/9.
//
//

#import <UIKit/UIKit.h>
#import "HDThemeStyle.h"

@interface UITabBar (HDThemeStyle) <HDThemeStyle>

/**
 *
 https://developer.apple.com/library/ios/documentation/UIKit/Reference/UITabBar_Class/#//apple_ref/doc/uid/TP40007521-CH3-SW4
 *
 *  @param tabbarBackground
 *  @param barItemTintColor
 *  @param barStyle
 */
+ (void)applyHDThemeWithTabbarBackground:(UIColor *)tabbarBackground
                        barItemTintColor:(UIColor *)barItemTintColor
                                barStyle:(UIBarStyle)barStyle;

@end
