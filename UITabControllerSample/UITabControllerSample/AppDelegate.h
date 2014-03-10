//
//  AppDelegate.h
//  UITabControllerSample
//
//  Created by 橋本 淳 on 2014/03/10.
//
//

#import <UIKit/UIKit.h>
#import "TabBarSampleViewController.h"
#import "SampleViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) UITabBarController *tabBarController;

@end
