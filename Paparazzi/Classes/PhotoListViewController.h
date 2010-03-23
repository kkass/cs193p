//
//  PhotoListViewController.h
//  Paparazzi
//
//  Created by Ken Kassing on 3/17/10.
//  Copyright 2010. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PhotoListViewController : UIViewController {
	BOOL isJen;

}

- (id)initWithText:(NSString*)name photos:(NSString*)photos;

@end
