//
//  UISegmentedControl+HDThemeStyle.m
//  Pods
//
//  Created by Dailingchi on 15/9/9.
//
//

#import "UISegmentedControl+HDThemeStyle.h"
#import "HDThemeKit.h"

@implementation UISegmentedControl (HDThemeStyle)

+ (void)applyHDTheme
{
    [UISegmentedControl applyHDTheme:[HDThemeKit shareInstance].primaryColor];
}

+ (void)applyHDTheme:(UIColor *)tintColor
{
    [UISegmentedControl appearance].tintColor = tintColor;
}

@end
