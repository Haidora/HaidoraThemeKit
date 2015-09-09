//
//  UISlider+HDThemeStyle.h
//  Pods
//
//  Created by Dailingchi on 15/9/9.
//
//

#import <UIKit/UIKit.h>
#import "HDThemeStyle.h"

@interface UISlider (HDThemeStyle) <HDThemeStyle>

/**
 *  https://developer.apple.com/library/ios/documentation/UIKit/Reference/UISlider_Class/
 *
 *  @param minimumTrackTintColor
 *  @param thumbTintColor
 *  @param maximumTrackTintColor
 *  @param minimumValueImage
 *  @param maximumValueImage
 */
+ (void)applyHDTheme:(UIColor *)minimumTrackTintColor
           thumbTintColor:(UIColor *)thumbTintColor
    maximumTrackTintColor:(UIColor *)maximumTrackTintColor
        minimumValueImage:(UIImage *)minimumValueImage
        maximumValueImage:(UIImage *)maximumValueImage;

@end
