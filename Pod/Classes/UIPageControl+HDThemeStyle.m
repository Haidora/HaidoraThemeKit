//
//  UIPageControl+HDThemeStyle.m
//  Pods
//
//  Created by Dailingchi on 15/9/9.
//
//

#import "UIPageControl+HDThemeStyle.h"
#import "HDThemeKit.h"

@implementation UIPageControl (HDThemeStyle)

+ (void)applyHDTheme
{
    [UIPageControl applyHDThemeWithCurrentPageIndicatorColor:[HDThemeKit shareInstance].primaryColor
                                          pageIndicatorColor:[UIColor lightGrayColor]];
}

+ (void)applyHDThemeWithCurrentPageIndicatorColor:(UIColor *)currentPageIndicatorColor
                               pageIndicatorColor:(UIColor *)pageIndicatorColor
{
    [UIPageControl appearance].currentPageIndicatorTintColor = currentPageIndicatorColor;
    [UIPageControl appearance].pageIndicatorTintColor = pageIndicatorColor;
}

@end
