//
//  Photo.m
//  Paparzzi2
//
//  Created by Ken Kassing on 3/18/10.
//  Copyright 2010 Paton Electronics. All rights reserved.
//

#import "Photo.h"


@implementation Photo

@synthesize name;
@synthesize description;
@synthesize path;

- (id)init {
	return [self initWithName:nil description:@"" path:@""];
}

- (id)initWithName:(Person*)name description:(NSString*)description path:(NSString*)path {
	if ([self = super init]) {
		self.name        = name;
		self.description = description;
		self.path        = path;
	}
	return self;
}

@end
