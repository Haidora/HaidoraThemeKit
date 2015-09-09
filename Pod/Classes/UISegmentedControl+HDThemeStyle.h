//
//  UISegmentedControl+HDThemeStyle.h
//  Pods
//
//  Created by Dailingchi on 15/9/9.
//
//

#import <UIKit/UIKit.h>
#import "HDThemeStyle.h"

@interface UISegmentedControl (HDThemeStyle) <HDThemeStyle>

/**
 *
 https://developer.apple.com/library/ios/documentation/UIKit/Reference/UISegmentedControl_Class/#//apple_ref/doc/uid/TP40006807-CH3-SW33
 *
 *  @param tintColor
 */
+ (void)applyHDTheme:(UIColor *)tintColor;

@end
