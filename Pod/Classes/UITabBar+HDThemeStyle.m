//
//  UITabBar+HDThemeStyle.m
//  Pods
//
//  Created by Dailingchi on 15/9/9.
//
//

#import "UITabBar+HDThemeStyle.h"
#import "HDThemeKit.h"

@implementation UITabBar (HDThemeStyle)

+ (void)applyHDTheme
{
    [UITabBar applyHDThemeWithTabbarBackground:[HDThemeKit shareInstance].primaryColor
                              barItemTintColor:[HDThemeKit shareInstance].secondaryColor
                                      barStyle:UIBarStyleDefault];
}

+ (void)applyHDThemeWithTabbarBackground:(UIColor *)tabbarBackground
                        barItemTintColor:(UIColor *)barItemTintColor
                                barStyle:(UIBarStyle)barStyle
{
    [UITabBar appearance].barTintColor = tabbarBackground;
    [UITabBar appearance].tintColor = barItemTintColor;
    [UITabBar appearance].barStyle = barStyle;
}

@end
