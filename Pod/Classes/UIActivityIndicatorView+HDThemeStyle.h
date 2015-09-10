//
//  UIActivityIndicatorView+HDThemeStyle.h
//  Pods
//
//  Created by Dailingchi on 15/9/9.
//
//

#import <UIKit/UIKit.h>
#import "HDThemeStyle.h"

@interface UIActivityIndicatorView (HDThemeStyle) <HDThemeStyle>

/**
 *  https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIActivityIndicatorView_Class/
 *
 *  @param activityColor
 *  @param activityIndicatorViewStyle
 */
+ (void)applyHDTheme:(UIColor *)activityColor;

@end
