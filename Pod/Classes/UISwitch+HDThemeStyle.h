//
//  UISwitch+HDThemeStyle.h
//  Pods
//
//  Created by Dailingchi on 15/9/9.
//
//

#import <UIKit/UIKit.h>
#import "HDThemeStyle.h"

@interface UISwitch (HDThemeStyle) <HDThemeStyle>

/**
 *      https://developer.apple.com/library/ios/documentation/UIKit/Reference/UISwitch_Class/
 *
 *  @param turnedOnColor
 *  @param thumbTintColor
 *  @param tintColor
 *  @param onImage
 *  @param offImage
 */
+ (void)applyHDThemeWithTurnedOnColor:(UIColor *)turnedOnColor
                       thumbTintColor:(UIColor *)thumbTintColor
                            tintColor:(UIColor *)tintColor
                              onImage:(UIImage *)onImage
                             offImage:(UIImage *)offImage;
@end
