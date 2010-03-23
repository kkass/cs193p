#import "PollyController.h"

@implementation PollyController
- (void)dealloc {
	NSLog(@"PollyController release");
	[polygon release];
	
	[super dealloc];
}

- (void)awakeFromNib {
	polygon = [[PolygonShape alloc] init];
	[self updateLables];
	NSLog(@"awakeFromNib");
}

- (void)viewDidAppear:(BOOL)animated {
	int min   = [[NSUserDefaults standardUserDefaults] integerForKey:@"minimumNumberOfSides"];
	int max   = [[NSUserDefaults standardUserDefaults] integerForKey:@"maximumNumberOfSides"];
	int sides = [[NSUserDefaults standardUserDefaults] integerForKey:@"numberOfSides"];
	
	//polygon = [[PolygonShape alloc] initWithNumberOfSides:sides minimumNumberOfSides:min maximumNumberOfSides:max];
	polygon.maximumNumberOfSides = 10;
	[self updateLables];
}

- (void)viewDidDisappear:(BOOL)animated {
	[[NSUserDefaults standardUserDefaults] setInteger:polygon.minimumNumberOfSides forKey:@"minimumNumberOfSides"];
	[[NSUserDefaults standardUserDefaults] setInteger:polygon.maximumNumberOfSides forKey:@"maximumNumberOfSides"];
	[[NSUserDefaults standardUserDefaults] setInteger:polygon.numberOfSides        forKey:@"numberOfSides"];
}

- (void)updateLables {
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
}

- (IBAction)currentSidesDown {
    polygon.numberOfSides -= 1;
	[self updateLables];
}

- (IBAction)currentSidesUp {
    polygon.numberOfSides += 1;
	[self updateLables];
    
}

- (IBAction)maxSidesDown {
    polygon.maximumNumberOfSides -= 1;
	[self updateLables];
}

- (IBAction)maxSidesUp {
    polygon.maximumNumberOfSides += 1;
	[self updateLables];
}

- (IBAction)minSidesDown {
    polygon.minimumNumberOfSides -= 1;
	[self updateLables];
}

- (IBAction)minSidesUp {
    polygon.minimumNumberOfSides += 1;
	[self updateLables];
}
@end
