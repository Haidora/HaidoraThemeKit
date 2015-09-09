//
//  UISwitch+HDThemeStyle.m
//  Pods
//
//  Created by Dailingchi on 15/9/9.
//
//

#import "UISwitch+HDThemeStyle.h"
#import "HDThemeKit.h"

@implementation UISwitch (HDThemeStyle)

+ (void)applyHDTheme
{
    [UISwitch applyHDThemeWithTurnedOnColor:[HDThemeKit shareInstance].primaryColor
                             thumbTintColor:nil
                                  tintColor:nil
                                    onImage:nil
                                   offImage:nil];
}

+ (void)applyHDThemeWithTurnedOnColor:(UIColor *)turnedOnColor
                       thumbTintColor:(UIColor *)thumbTintColor
                            tintColor:(UIColor *)tintColor
                              onImage:(UIImage *)onImage
                             offImage:(UIImage *)offImage
{
    [UISwitch appearance].onTintColor = turnedOnColor;
    [UISwitch appearance].thumbTintColor = thumbTintColor;
    [UISwitch appearance].tintColor = tintColor;
    [UISwitch appearance].onImage = onImage;
    [UISwitch appearance].offImage = offImage;
}

@end
