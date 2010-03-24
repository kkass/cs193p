//
//  Person.m
//  Paparzzi2
//
//  Created by Ken Kassing on 3/18/10.
//  Copyright 2010 Paton Electronics. All rights reserved.
//

#import "Person.h"


@implementation Person

@synthesize name;

- (id)init {
	return [self initWithName:@""];
}

- (id)initWithName:(NSString*)name contactPhoto:(NSString*) contactPhoto {
	if ([self = super init]) {
			self.name         = name;
		self.contactPhoto = contactPhoto;
	}
	return self;
}

@end
