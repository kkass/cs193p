//
//  Photo.h
//  Paparzzi2
//
//  Created by Ken Kassing on 3/18/10.
//  Copyright 2010 Paton Electronics. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"


@interface Photo : NSObject {
	Person   *name;
	NSString *description;
	NSString *path;
}

@property (assign) Person   *name;
@property (retain) NSString *description;
@property (retain) NSString *path;

- (id)init;
- (id)initWithName:(Person*)name description:(NSString*)description path:(NSString*)path;

@end
