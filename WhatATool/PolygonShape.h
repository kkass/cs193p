//
//  PolygonShape.h
//  WhatATool
//
//  Created by Ken Kassing on 1/8/10.
//  Copyright 2010__MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface PolygonShape : NSObject {
	int numberOfSides;
	int minimumNumberOfSides;
	int maximumNumberOfSides;
}

- (id)init;
- (id)initWithNumberOfSides:(int)sides minimumNumberOfSides:(int)min maximumNumberOfSides:(int)max;
- (void)dealloc;
- (NSString *)description;
@property int numberOfSides;
@property int minimumNumberOfSides;
@property int maximumNumberOfSides;
@property (readonly) float angleInDegrees;
@property (readonly) float angleInRadians;
@property (readonly) NSString *name;
@property (readonly) NSString *shapeType;

@end
