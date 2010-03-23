//
//  PeopleViewController.m
//  Paparazzi
//
//  Created by Ken Kassing on 3/16/10.
//  Copyright 2010. All rights reserved.
//

#import "PeopleViewController.h"
#import "PhotoListViewController.h"


@implementation PeopleViewController

- (IBAction)view1Pressed {
	NSLog(@"View 1 Pressed");
	PhotoListViewController *vc = [[[PhotoListViewController alloc] initWithText:@"Jen" photos:@""] autorelease];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)view2Pressed {
	NSLog(@"View 2 Pressed");
	PhotoListViewController *vc = [[[PhotoListViewController alloc] initWithText:@"Ken" photos:@""] autorelease];
    [self.navigationController pushViewController:vc animated:YES];
}

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
