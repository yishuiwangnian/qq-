//
//  CQZAppDelegate.m
//  qq界面仿
//
//  Created by 陈求樟 on 16-4-16.
//  Copyright (c) 2016年 CQZ. All rights reserved.
//

#import "CQZAppDelegate.h"
#import "CQZviewController.h"
#import "CQZviewController2.h"
#import "CQZviewController3.h"
#import "CQZviewController4.h"
#import "CQZviewController5.h"
@implementation CQZAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    UITabBarController *tab = [UITabBarController new];
    self.window.rootViewController = tab;
    
    CQZviewController *controller1 =  [CQZviewController new];
    CQZviewController2 *controller2 = [CQZviewController2 new];
    CQZviewController3 *controller3 = [CQZviewController3 new];
    CQZviewController4 *controller4 = [CQZviewController4 new];
    CQZviewController5 *controller5 = [CQZviewController5 new];
    
    
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:controller1];
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:controller2];
    UINavigationController *nav3 = [[UINavigationController alloc] initWithRootViewController:controller3];
    UINavigationController *nav4 = [[UINavigationController alloc] initWithRootViewController:controller4];
    UINavigationController *nav5 = [[UINavigationController alloc] initWithRootViewController:controller5];
    
    
    
    nav1.title = @"书架";
    nav2.title = @"书城";
    nav3.title = @"书单";
    nav4.title = @"书吧";
    nav5.title = @"娱乐";
    
    tab.viewControllers = @[nav1,nav2,nav3,nav4,nav5];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
