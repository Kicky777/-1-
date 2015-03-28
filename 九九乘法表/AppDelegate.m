//
//  AppDelegate.m
//  九九乘法表
//
//  Created by student on 15-1-26.
//  Copyright (c) 2015年 艳丽. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    _window.backgroundColor = [UIColor whiteColor];
    [_window makeKeyAndVisible];
    
    //九九乘法表
    
    CGFloat width = _window.frame.size.width / 9;
    CGFloat height = width ;
    
    for (int i = 1; i < 10; i++) {
        for (int j = 1; j <= i; j++) {
            UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake((j-1) * width,  i * height + 20, width, height)];
            lable.textAlignment = NSTextAlignmentLeft;
        //    lable.text = @"1";
            [_window addSubview:lable];
            lable.textColor = [ UIColor blackColor];
            
            lable.font = [UIFont systemFontOfSize:10];
            lable.text = [NSString stringWithFormat:@"%dx%d=%d ", i, j, i*j];
            if ((i+j)%2 == 0) {
                
            lable.backgroundColor = [UIColor magentaColor];
            } else {
                lable.backgroundColor = [UIColor  cyanColor];
            }
        }
        
    }
    

    
    
    
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
