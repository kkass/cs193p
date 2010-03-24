//
//  PaparazziAppDelegate.h
//  Paparazzi
//
//  Created by Ken Kassing on 3/16/10.
//  Copyright 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PaparazziAppDelegate : NSObject <UIApplicationDelegate> {
	UIWindow *window;
	UITabBarController *tabBarController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@end

