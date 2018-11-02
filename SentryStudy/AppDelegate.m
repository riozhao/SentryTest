//
//  AppDelegate.m
//  SentryStudy
//
//  Created by stormmyzhao on 2018/11/1.
//  Copyright © 2018 studydaily. All rights reserved.
//

#import "AppDelegate.h"
@import Sentry;

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self registSentry];
    
    return YES;
}

- (void)registSentry{
    
    NSError *error = nil;
    SentryClient *client = [[SentryClient alloc] initWithDsn:@"https://33147f7f00d94a7a9bc1fb04d8a2967f@sentry.io/1313500" didFailWithError:&error];
    SentryUser *user = [[SentryUser alloc]init];
    user.userId = @"userid_rioshzhao";
    user.username = @"rioshzhao";
    user.email = @"rioshzhao@qq.com";
    
    client.user =user;
    [client enableAutomaticBreadcrumbTracking];
    
    SentryClient.sharedClient = client;

    [SentryClient.sharedClient startCrashHandlerWithError:&error];
    if (nil != error) {
        NSLog(@"%@", error);
    }
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
