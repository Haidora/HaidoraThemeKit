//
//  UIStepper+HDThemeStyle.h
//  Pods
//
//  Created by Dailingchi on 15/9/9.
//
//

#import <UIKit/UIKit.h>
#import "HDThemeStyle.h"

@interface UIStepper (HDThemeStyle) <HDThemeStyle>

/**
 *  https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIStepper_Class/
 *
 *  @param tintColor
 */
+ (void)applyHDTheme:(UIColor *)tintColor;

@end
