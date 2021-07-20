//
//  AppDelegate.m
//  RSSDraw
//
//  Created by Dmitriy Komar on 7/17/21.
//

#import "AppDelegate.h"
#import "DKArtistViewController.h"

@interface AppDelegate ()

@end


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    //create root view controller
    UIViewController *artistViewController = [[DKArtistViewController alloc] init];
    //create nc
    UINavigationController *nc = [[UINavigationController alloc] initWithRootViewController:artistViewController];
    [self.window setRootViewController:nc];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
