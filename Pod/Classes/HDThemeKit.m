//
//  HDThemeKit.m
//  Pods
//
//  Created by Dailingchi on 15/9/9.
//
//

#import "HDThemeKit.h"
#import "HDThemeStyle.h"

static HDThemeKit *shareInstance = nil;

@implementation HDThemeKit

+ (instancetype)shareInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
      shareInstance = [[HDThemeKit alloc] init];
      shareInstance.styleUIKits = @[
          [UISwitch class],
          [UIStepper class],
          [UIToolbar class],
          [UIProgressView class],
          [UITabBar class],
          [UIPageControl class],
          [UIActivityIndicatorView class],
          [UISlider class],
          [UISegmentedControl class],
          [UINavigationBar class]
      ];
    });
    return shareInstance;
}

+ (void)setupThemeWithPrimaryColor:(UIColor *)primaryColor secondaryColor:(UIColor *)secondaryColor
{
    primaryColor = primaryColor == nil
                       ? [UIColor colorWithRed:0.153 green:0.647 blue:0.6000 alpha:1.0]
                       : primaryColor;
    secondaryColor = secondaryColor == nil ? [UIColor whiteColor] : secondaryColor;

    [HDThemeKit shareInstance].primaryColor = primaryColor;
    [HDThemeKit shareInstance].secondaryColor = secondaryColor;
    [HDThemeKit applyTheme];
}

+ (void)applyTheme
{
    for (Class class in [HDThemeKit shareInstance].styleUIKits)
    {
        if ([[[class alloc] init] conformsToProtocol:@protocol(HDThemeStyle)])
        {
            [class applyHDTheme];
        }
        else
        {
            NSLog(@"%@ need conformsToProtocol HDThemeStyle!", NSStringFromClass(class));
        }
    }
}

@end
