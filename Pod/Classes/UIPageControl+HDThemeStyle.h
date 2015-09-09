//
//  UIPageControl+HDThemeStyle.h
//  Pods
//
//  Created by Dailingchi on 15/9/9.
//
//

#import <UIKit/UIKit.h>
#import "HDThemeStyle.h"

@interface UIPageControl (HDThemeStyle) <HDThemeStyle>

/**
 *
 https://developer.apple.com/library/ios/documentation/UserExperience/Conceptual/UIKitUICatalog/UIPageControl.html#//apple_ref/doc/uid/TP40012857-UIPageControl
 *
 *  @param currentPageIndicatorColor
 *  @param pageIndicatorColor
 */
+ (void)applyHDThemeWithCurrentPageIndicatorColor:(UIColor *)currentPageIndicatorColor
                               pageIndicatorColor:(UIColor *)pageIndicatorColor;

@end
