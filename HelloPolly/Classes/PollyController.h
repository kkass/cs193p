#import <UIKit/UIKit.h>
#import "PolygonShape.h"
#import "PolygonView.h"

@interface PollyController : UIViewController {
	IBOutlet UILabel *currentSides;
	IBOutlet UILabel *maxSides;
	IBOutlet UILabel *minSides;
	IBOutlet UIButton *minUp;
	IBOutlet UIButton *minDown;
	IBOutlet UIButton *maxUp;
	IBOutlet UIButton *maxDown;
	IBOutlet UIButton *sidesUp;
	IBOutlet UIButton *sidesDown;
	IBOutlet PolygonView   *polygonView;
	PolygonShape     *polygon;
}

@property (retain) PolygonShape *polygon;

- (void)viewWillAppear:(BOOL)animated;
- (void)viewWillDisappear:(BOOL)animated;

- (void)updateView;

// Actions
- (IBAction)currentSidesDown;
- (IBAction)currentSidesUp;
- (IBAction)maxSidesDown;
- (IBAction)maxSidesUp;
- (IBAction)minSidesDown;
- (IBAction)minSidesUp;

@end

