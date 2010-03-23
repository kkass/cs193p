//
//  HelloPollyAppDelegate.m
//  HelloPolly
//
//  Created by Ken Kassing on 1/30/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "HelloPollyAppDelegate.h"

@implementation HelloPollyAppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
    [window makeKeyAndVisible];
}


- (void)applicationWillTerminate:(UIApplication *)application {
	NSLog(@"AppDelagate applicationWillTerminate");
	[self release];
}


- (void)dealloc {
	NSLog(@"AppDelagate dealloc");
    [window release];
    [super dealloc];
}


@end
