//
//  UISlider+HDThemeStyle.m
//  Pods
//
//  Created by Dailingchi on 15/9/9.
//
//

#import "UISlider+HDThemeStyle.h"
#import "HDThemeKit.h"

@implementation UISlider (HDThemeStyle)

+ (void)applyHDTheme
{
    [UISlider applyHDTheme:[HDThemeKit shareInstance].primaryColor
               thumbTintColor:[UIColor grayColor]
        maximumTrackTintColor:[UIColor lightGrayColor]
            minimumValueImage:nil
            maximumValueImage:nil];
}

+ (void)applyHDTheme:(UIColor *)minimumTrackTintColor
           thumbTintColor:(UIColor *)thumbTintColor
    maximumTrackTintColor:(UIColor *)maximumTrackTintColor
        minimumValueImage:(UIImage *)minimumValueImage
        maximumValueImage:(UIImage *)maximumValueImage;
{

    [UISlider appearance].minimumTrackTintColor = minimumTrackTintColor;
    [UISlider appearance].thumbTintColor = thumbTintColor;
    // TODO: maximumTrackTintColor 需要测试
    [UISlider appearance].maximumTrackTintColor = maximumTrackTintColor;

    [UISlider appearance].minimumValueImage = minimumValueImage;
    [UISlider appearance].maximumValueImage = maximumValueImage;
}

@end
