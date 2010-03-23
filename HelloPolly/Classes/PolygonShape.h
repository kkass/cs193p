//
//  PolygonShape.h
//  WhatATool
//
//  Created by Ken Kassing on 1/8/10.
//  Copyright 2010__MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


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

@property (readonly) bool sidesCanIncrease;
@property (readonly) bool sidesCanDecrease;
@property (readonly) bool minCanIncrease;
@property (readonly) bool minCanDecrease;
@property (readonly) bool maxCanIncrease;
@property (readonly) bool maxCanDecrease;

@end
