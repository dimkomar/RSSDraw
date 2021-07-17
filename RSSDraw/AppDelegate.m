//
//  AppDelegate.m
//  RSSDraw
//
//  Created by Dmitriy Komar on 7/17/21.
//

#import "AppDelegate.h"
#import "DKArtistViewController.h"
#import "DKDrawingsViewController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    //create nc
    UINavigationController *nc = [[UINavigationController alloc] init];

    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];


    //create root view controller
    DKArtistViewController *artistViewController = [[DKArtistViewController alloc] init];

    [nc setViewControllers:[NSArray arrayWithObject:artistViewController]];

    [self.window setRootViewController:nc];
            

    return YES;
}



@end
