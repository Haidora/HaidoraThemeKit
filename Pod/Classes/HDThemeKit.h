//
//  HDThemeKit.h
//  Pods
//
//  Created by Dailingchi on 15/9/9.
//
//

#import <Foundation/Foundation.h>
#import "UIActivityIndicatorView+HDThemeStyle.h"
#import "UINavigationBar+HDThemeStyle.h"
#import "UIPageControl+HDThemeStyle.h"
#import "UIProgressView+HDThemeStyle.h"
#import "UISegmentedControl+HDThemeStyle.h"
#import "UISlider+HDThemeStyle.h"
#import "UIStepper+HDThemeStyle.h"
#import "UISwitch+HDThemeStyle.h"
#import "UITabBar+HDThemeStyle.h"
#import "UIToolbar+HDThemeStyle.h"

@interface HDThemeKit : NSObject

@property (nonatomic, copy) UIColor *primaryColor;
@property (nonatomic, copy) UIColor *secondaryColor;
@property (nonatomic, copy) NSArray *styleUIKits;

+ (instancetype)shareInstance;
+ (void)setupThemeWithPrimaryColor:(UIColor *)primaryColor secondaryColor:(UIColor *)secondaryColor;

@end
