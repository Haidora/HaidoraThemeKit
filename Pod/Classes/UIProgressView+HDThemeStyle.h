//
//  UIProgressView+HDThemeStyle.h
//  Pods
//
//  Created by Dailingchi on 15/9/9.
//
//

#import <UIKit/UIKit.h>
#import "HDThemeStyle.h"

@interface UIProgressView (HDThemeStyle) <HDThemeStyle>

/**
 *
 https://developer.apple.com/library/ios/documentation/UserExperience/Conceptual/UIKitUICatalog/UIProgressView.html#//apple_ref/doc/uid/TP40012857-UIProgressView
 *
 *  @param progressColor
 *  @param trackColor
 *  @param progressImage
 *  @param trackImage
 *  @param progressViewStyle
 */
+ (void)applyHDTheme:(UIColor *)progressColor
          trackColor:(UIColor *)trackColor
       progressImage:(UIImage *)progressImage
          trackImage:(UIImage *)trackImage
   progressViewStyle:(UIProgressViewStyle)progressViewStyle;

@end
