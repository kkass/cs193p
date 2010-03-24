//
//  PictureTableController.m
//
//  Created by Ken Kassing on 3/18/10.
//  Copyright 2010 Paton Electronics. All rights reserved.
//

#import "PictureTableController.h"
#import "PhotoListViewController.h"

@implementation PictureTableController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	//self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
	self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Recent" style:UIBarButtonItemStyleBordered target:nil action:nil] autorelease];
	
	NSLog(@"PictureTableController viewDidLoad");
	list = [[NSMutableArray alloc] init];
	
	[list addObject:@"Jen"];
	[list addObject:@"Ken"];
	
}

// For a navigation hierarchy...
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	// Get the row and the object it represents
	NSString *obj = [list objectAtIndex:indexPath.row];
	
	NSLog(@"Object '%@' selected.", obj);
	// Create a new view controller and pass it along
	
	PhotoListViewController *vc = [[[PhotoListViewController alloc] initWithText:obj photos:@""] autorelease];
    [self.navigationController pushViewController:vc animated:YES];
}

// Get the number of rows
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	NSLog(@"Get Number of Rows");
    return [list count];
}

// Get a row
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	NSLog(@"Get Cell: %@", [NSString stringWithFormat:@"%@.jpg",[list objectAtIndex:indexPath.row]]);
    UITableViewCell *cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil] autorelease];
    
	cell.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.jpg",[list objectAtIndex:indexPath.row]]];
    cell.textLabel.text = [list objectAtIndex:indexPath.row];
	//cell.detailTextLabel.text = @"Test";
	cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

- (void)dealloc {
	[list release];
    
	[super dealloc];
}

@end
