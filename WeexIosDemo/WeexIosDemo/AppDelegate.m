//
//  AppDelegate.m
//  WeexIosDemo
//
//  Created by zhouyu on 2018/11/23.
//  Copyright © 2018年 zhouyu. All rights reserved.
/*
 WXSDKEngine：SDK开放的绝大多数接口都在此有声明。
 WXLog: 控制Log输出的级别，包括Verbose、Debug、Info、Warning、Error，开发者可以按需来设置输出级别。
 WXDebugTool: weex提供的对外调试工具。
 WXAppConfiguration: 使用weex开发的业务性配置。
 */

#import "AppDelegate.h"
#import <WeexSDK/WXDebugTool.h>
#import "WeexSDKManager.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [WeexSDKManager setup];
    
    // 开启debug模式
    [WXDebugTool setDebug:YES];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
