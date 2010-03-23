//
//  ContactsNavController.m
//
//  Created by Ken Kassing on 3/16/10.
//  Copyright 2010. All rights reserved.
//

#import "ContactsNavController.h"

@implementation ContactsNavController



- (id)init {
	if (self = [super init]) {
		NSLog(@"In ContactsNavController init!");
	}
	return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
        self.title = @"¡Numero Uno!";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.title = @"Contacts";
}

@end
