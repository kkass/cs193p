#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "PolygonShape.h"

@interface PolygonView : UIView {
	PolygonShape *polygon;
	IBOutlet UILabel *nameLabel;
	int currentRotation;
}

@property (assign) PolygonShape *polygon;

- (id)init;

@end
