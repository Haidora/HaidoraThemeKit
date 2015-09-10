//
//  UIActivityIndicatorView+HDThemeStyle.m
//  Pods
//
//  Created by Dailingchi on 15/9/9.
//
//

#import "UIActivityIndicatorView+HDThemeStyle.h"
#import "HDThemeKit.h"

@implementation UIActivityIndicatorView (HDThemeStyle)

+ (void)applyHDTheme
{
    [UIActivityIndicatorView applyHDTheme:[HDThemeKit shareInstance].primaryColor];
}

+ (void)applyHDTheme:(UIColor *)activityColor
{
    [UIActivityIndicatorView appearance].color = activityColor;
}

@end
