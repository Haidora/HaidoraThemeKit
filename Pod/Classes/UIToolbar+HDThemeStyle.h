//
//  UIToolbar+HDThemeStyle.h
//
//
//  Created by Dailingchi on 15/9/9.
//
//

#import <UIKit/UIKit.h>
#import "HDThemeStyle.h"

@interface UIToolbar (HDThemeStyle) <HDThemeStyle>

/**
 *
 https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIToolbar_Class/#//apple_ref/doc/uid/TP40006927-CH3-SW4
 *
 *  @param toolbarBackground
 *  @param barItemTintColor
 *  @param barStyle
 */
+ (void)applyHDThemeWithToolbarBackground:(UIColor *)toolbarBackground
                         barItemTintColor:(UIColor *)barItemTintColor
                                 barStyle:(UIBarStyle)barStyle;

@end
