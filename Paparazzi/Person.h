//
//  Person.h
//  Paparzzi2
//
//  Created by Ken Kassing on 3/18/10.
//  Copyright 2010 Paton Electronics. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Person : NSObject {
	NSString *name;
	NSString *contactPhoto;
}

@property (retain) NSString *name;
@property (retain) NSString *contactPhoto;

- (id)init;
- (id)initWithName:(NSString*)name contactPhoto:(NSString*) contactPhoto;

@end
