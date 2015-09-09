//
//  UIToolbar+HDThemeStyle.m
//
//
//  Created by Dailingchi on 15/9/9.
//
//

#import "UIToolbar+HDThemeStyle.h"
#import "HDThemeKit.h"

@implementation UIToolbar (HDThemeStyle)

+ (void)applyHDTheme
{
    [UIToolbar applyHDThemeWithToolbarBackground:[HDThemeKit shareInstance].primaryColor
                                barItemTintColor:[HDThemeKit shareInstance].secondaryColor
                                        barStyle:UIBarStyleDefault];
}

+ (void)applyHDThemeWithToolbarBackground:(UIColor *)toolbarBackground
                         barItemTintColor:(UIColor *)barItemTintColor
                                 barStyle:(UIBarStyle)barStyle
{
    [UIToolbar appearance].barTintColor = toolbarBackground;
    [UIToolbar appearance].tintColor = barItemTintColor;
    [UIToolbar appearance].barStyle = barStyle;
}

@end
