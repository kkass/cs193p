//
//  Paparazzi1AppDelegate.m
//  Paparazzi
//
//  Created by Ken Kassing on 3/16/10.
//  Copyright  2010. All rights reserved.
//

#import "PaparazziAppDelegate.h"

@implementation PaparazziAppDelegate

@synthesize window;
@synthesize tabBarController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
	//tabBarController = [[UITabBarController alloc] init];
	[window addSubview:tabBarController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
	[tabBarController release];
    [window release];
    [super dealloc];
}


@end
