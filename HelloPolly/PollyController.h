#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "PolygonShape.h"

@interface PollyController : NSObject {
    IBOutlet UILabel *currentSides;
    IBOutlet UILabel *maxSides;
    IBOutlet UILabel *minSides;
	IBOutlet UIButton *minUp;
	IBOutlet UIButton *minDown;
	IBOutlet UIButton *maxUp;
	IBOutlet UIButton *maxDown;
	IBOutlet UIButton *sidesUp;
	IBOutlet UIButton *sidesDown;
	PolygonShape     *polygon;
}
- (void)dealloc;
- (void)awakeFromNib;
- (void)viewDidAppear:(BOOL)animated;
- (void)viewDidDisappear:(BOOL)animated;

- (void)updateLables;

// Actions
- (IBAction)currentSidesDown;
- (IBAction)currentSidesUp;
- (IBAction)maxSidesDown;
- (IBAction)maxSidesUp;
- (IBAction)minSidesDown;
- (IBAction)minSidesUp;
@end
