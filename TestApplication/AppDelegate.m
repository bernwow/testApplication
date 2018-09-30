//
//  AppDelegate.m
//  TestApplication
//
//  Created by Bern on 27.09.2018.
//  Copyright © 2018 Bern. All rights reserved.
//

#import "AppDelegate.h"
#import "MyRowListViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];

    MyRowListViewModel *myRowListVM = [[MyRowListViewModel alloc] init];

    MyRowListViewController *myRowListVC = [[MyRowListViewController alloc] initWithViewModel:myRowListVM];

    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:myRowListVC];
    self.window.rootViewController = navigationController;

    [self.window makeKeyAndVisible];

    return YES;
}

@end
