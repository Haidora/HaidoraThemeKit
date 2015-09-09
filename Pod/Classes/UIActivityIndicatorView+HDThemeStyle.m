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
    [UIActivityIndicatorView applyHDTheme:[HDThemeKit shareInstance].primaryColor
               activityIndicatorViewStyle:UIActivityIndicatorViewStyleGray];
}

+ (void)applyHDTheme:(UIColor *)activityColor
    activityIndicatorViewStyle:(UIActivityIndicatorViewStyle)activityIndicatorViewStyle
{
    [UIActivityIndicatorView appearance].color = activityColor;
    [UIActivityIndicatorView appearance].activityIndicatorViewStyle = activityIndicatorViewStyle;
}

@end
