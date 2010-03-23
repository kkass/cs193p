//
//  PolygonShape.m
//  WhatATool
//
//  Created by Ken Kassing on 1/8/10.
//  Copyright 2010__MyCompanyName__. All rights reserved.
//

#import "PolygonShape.h"


@implementation PolygonShape

@synthesize numberOfSides;
@synthesize minimumNumberOfSides;
@synthesize maximumNumberOfSides;

- (id)init {
	return [self initWithNumberOfSides:4 minimumNumberOfSides:3 maximumNumberOfSides:7];
}

- (id)initWithNumberOfSides:(int)sides minimumNumberOfSides:(int)min maximumNumberOfSides:(int)max {
	if (self = [super init]) {
		self.maximumNumberOfSides = max;
		self.minimumNumberOfSides = min;
		self.numberOfSides        = sides;
	}
	return self;
}

- (void)setNumberOfSides:(int)value {
	if (value < minimumNumberOfSides) {
		NSLog(@"Invalid number of sides: %d is less than the minimum of %d allowed", value, minimumNumberOfSides);
		return;
	}
	if (value > maximumNumberOfSides) {
		NSLog(@"Invalid number of sides: %d is greater than the maximum of %d allowed", value, maximumNumberOfSides);
		return;
	}
	numberOfSides = value;
}

- (void)setMinimumNumberOfSides:(int)value {
	if (value < 3) {
		NSLog(@"Invalid minimum number of sides: %d is less than 3", value);
		return;
	}
	if (value > maximumNumberOfSides) {
		NSLog(@"Invalid minimum number of sides: %d is greater than the maximum of %d allowed", value, maximumNumberOfSides);
		return;
	}
	minimumNumberOfSides = value;
}

- (void)setMaximumNumberOfSides:(int)value {
	if (value < minimumNumberOfSides) {
		NSLog(@"Invalid maximum number of sides: %d is less than the minimum of %d allowed", value, minimumNumberOfSides);
		return;
	}
	if (value > 12) {
		NSLog(@"Invalid maximum number of sides: %d is greater than 12", value);
		return;
	}
	maximumNumberOfSides = value;
}

- (float)angleInDegrees {
	float sides = self.numberOfSides;
	return (180 * (sides - 2) / sides);
}

- (float)angleInRadians {
	return ((self.angleInDegrees * M_PI) / 180);
}

- (NSString *)shapeType {
	NSArray *shapeArray = [NSArray arrayWithObjects: @"triangle", @"quadrilateral", @"pentagon", @"hexagon", @"heptagon",
						   @"octagon", @"enneagon", @"decagon", @"hendecagon", @"dodecagon", nil];
	return [shapeArray objectAtIndex:self.numberOfSides -3];
}

- (NSString *)name {
	NSString *name = [[NSString alloc] initWithFormat:@"Hello I am a %d-sided polygon (aka a %@) with angles of %1.1f degrees (%1.2f radians).", self.numberOfSides, self.shapeType, self.angleInDegrees, self.angleInRadians];
	[name autorelease];
	return name;
}

- (void)dealloc {
	NSLog(@"dealloc method called");
	[super dealloc];
}

- (NSString *)description {
	return self.name;
}

@end
