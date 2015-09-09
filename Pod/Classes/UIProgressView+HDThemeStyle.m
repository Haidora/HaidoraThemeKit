//
//  UIProgressView+HDThemeStyle.m
//  Pods
//
//  Created by Dailingchi on 15/9/9.
//
//

#import "UIProgressView+HDThemeStyle.h"
#import "HDThemeKit.h"

@implementation UIProgressView (HDThemeStyle)

+ (void)applyHDTheme
{
    [UIProgressView applyHDTheme:[HDThemeKit shareInstance].primaryColor
                      trackColor:[UIColor lightGrayColor]
                   progressImage:nil
                      trackImage:nil
               progressViewStyle:UIProgressViewStyleDefault];
}

+ (void)applyHDTheme:(UIColor *)progressColor
          trackColor:(UIColor *)trackColor
       progressImage:(UIImage *)progressImage
          trackImage:(UIImage *)trackImage
   progressViewStyle:(UIProgressViewStyle)progressViewStyle
{
    [UIProgressView appearance].progressTintColor = progressColor;
    [UIProgressView appearance].trackTintColor = trackColor;

    [UIProgressView appearance].progressImage = progressImage;
    [UIProgressView appearance].trackImage = trackImage;
    [UIProgressView appearance].progressViewStyle = progressViewStyle;
}

@end
