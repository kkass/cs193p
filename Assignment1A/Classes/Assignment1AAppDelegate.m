//
//  Assignment1AAppDelegate.m
//  Assignment1A
//
//  Created by Ken Kassing on 12/26/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "Assignment1AAppDelegate.h"

@implementation Assignment1AAppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
