//
//  UIStepper+HDThemeStyle.m
//  Pods
//
//  Created by Dailingchi on 15/9/9.
//
//

#import "UIStepper+HDThemeStyle.h"
#import "HDThemeKit.h"

@implementation UIStepper (HDThemeStyle)

+ (void)applyHDTheme
{
    [UIStepper applyHDTheme:[HDThemeKit shareInstance].primaryColor];
}

+ (void)applyHDTheme:(UIColor *)tintColor
{
    [UIStepper appearance].tintColor = tintColor;
}
@end
