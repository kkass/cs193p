#import "PollyController.h"

@implementation PollyController

@synthesize polygon;

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
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
	[polygon release];
	
	[super dealloc];
}

- (void)viewWillAppear:(BOOL)animated {
	int min   = [[NSUserDefaults standardUserDefaults] integerForKey:@"minimumNumberOfSides"];
	int max   = [[NSUserDefaults standardUserDefaults] integerForKey:@"maximumNumberOfSides"];
	int sides = [[NSUserDefaults standardUserDefaults] integerForKey:@"numberOfSides"];
	
	self.polygon = [[PolygonShape alloc] initWithNumberOfSides:sides minimumNumberOfSides:min maximumNumberOfSides:max];
	polygonView.polygon = polygon;
	[self updateView];
}

- (void)viewWillDisappear:(BOOL)animated {
	[[NSUserDefaults standardUserDefaults] setInteger:polygon.minimumNumberOfSides forKey:@"minimumNumberOfSides"];
	[[NSUserDefaults standardUserDefaults] setInteger:polygon.maximumNumberOfSides forKey:@"maximumNumberOfSides"];
	[[NSUserDefaults standardUserDefaults] setInteger:polygon.numberOfSides        forKey:@"numberOfSides"];
}

- (void)updateView{
	minSides.text     = [NSString stringWithFormat:@"%d", polygon.minimumNumberOfSides];
	maxSides.text     = [NSString stringWithFormat:@"%d", polygon.maximumNumberOfSides];
	currentSides.text = [NSString stringWithFormat:@"%d", polygon.numberOfSides];
	
	// Configure the buttons that change the polygon properties.
	minUp.enabled     = [polygon minCanIncrease];
	minDown.enabled   = [polygon minCanDecrease];
	maxUp.enabled     = [polygon maxCanIncrease];
	maxDown.enabled   = [polygon maxCanDecrease];
	sidesUp.enabled   = [polygon sidesCanIncrease];
	sidesDown.enabled = [polygon sidesCanDecrease];
	
	[polygonView setNeedsDisplay];
}

- (IBAction)currentSidesDown {
    polygon.numberOfSides -= 1;
	[self updateView];
}

- (IBAction)currentSidesUp {
    polygon.numberOfSides += 1;
	[self updateView];
    
}

- (IBAction)maxSidesDown {
    polygon.maximumNumberOfSides -= 1;
	[self updateView];
}

- (IBAction)maxSidesUp {
    polygon.maximumNumberOfSides += 1;
	[self updateView];
}

- (IBAction)minSidesDown {
    polygon.minimumNumberOfSides -= 1;
	[self updateView];
}

- (IBAction)minSidesUp {
    polygon.minimumNumberOfSides += 1;
	[self updateView];
}


@end
