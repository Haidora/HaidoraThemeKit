//
//  UINavigationBar+HDThemeStyle.m
//  Pods
//
//  Created by Dailingchi on 15/9/9.
//
//

#import "UINavigationBar+HDThemeStyle.h"
#import "HDThemeKit.h"

@implementation UINavigationBar (HDThemeStyle)

+ (void)applyHDTheme
{
    [UINavigationBar applyHDTheme:[HDThemeKit shareInstance].secondaryColor
             navigationBackground:[HDThemeKit shareInstance].primaryColor
              navigationTitleFont:[UIFont boldSystemFontOfSize:20]
              navigationItemColor:[UIColor whiteColor]
               navigationBarStyle:UIBarStyleDefault];
}

+ (void)applyHDTheme:(UIColor *)navigationTitleColor
navigationBackground:(UIColor *)navigationBackground
 navigationTitleFont:(UIFont *)navigationTitleFont
 navigationItemColor:(UIColor *)navigationItemColor
  navigationBarStyle:(UIBarStyle)navigationBarStyle
{
    [UINavigationBar appearance].tintColor = navigationItemColor;
    [UINavigationBar appearance].barTintColor = navigationBackground;
    [UINavigationBar appearance].barStyle = navigationBarStyle;
    NSMutableDictionary *titleTextAttributes = [NSMutableDictionary dictionary];
    if ([UINavigationBar appearance].titleTextAttributes)
    {
        titleTextAttributes = [NSMutableDictionary
            dictionaryWithDictionary:[UINavigationBar appearance].titleTextAttributes];
    }
    if (navigationTitleColor)
    {
        titleTextAttributes[NSForegroundColorAttributeName] = navigationTitleColor;
    }
    if (navigationTitleFont)
    {
        titleTextAttributes[NSFontAttributeName] = navigationTitleFont;
    }
    [UINavigationBar appearance].titleTextAttributes = titleTextAttributes;
}

@end
