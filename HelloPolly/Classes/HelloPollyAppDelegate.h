//
//  HelloPollyAppDelegate.h
//  HelloPolly
//
//  Created by Ken Kassing on 1/30/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PollyController;

@interface HelloPollyAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    PollyController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet PollyController *viewController;

@end

