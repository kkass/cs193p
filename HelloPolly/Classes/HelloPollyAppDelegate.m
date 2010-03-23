//
//  HelloPollyAppDelegate.m
//  HelloPolly
//
//  Created by Ken Kassing on 1/30/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "HelloPollyAppDelegate.h"
#import "PollyController.h"
@implementation HelloPollyAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)applicationWillTerminate:(UIApplication *)application {
	NSLog(@"AppDelagate applicationWillTerminate");
	[self release];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
