#import "PolygonView.h"

@implementation PolygonView

@synthesize polygon;

- (id)init {
	if (self = [super init]) {
		currentRotation = 0;
	}
	return self;
}

+ (NSArray *)pointsForPolygonInRect:(CGRect)rect numberOfSides:(int)numberOfSides {
	CGPoint center = CGPointMake(rect.size.width / 2.0, rect.size.height / 2.0);
	float radius = 0.9 * center.x;
	NSMutableArray *result = [NSMutableArray array];
	float angle = (2.0 * M_PI) / numberOfSides;
	float exteriorAngle = M_PI - angle;
	float rotationDelta = angle - (0.5 * exteriorAngle);
	for (int currentAngle = 0; currentAngle < numberOfSides; currentAngle++) {
		float newAngle = (angle * currentAngle) - rotationDelta;
		float curX = cos(newAngle) * radius;
		float curY = sin(newAngle) * radius;
		[result addObject:[NSValue valueWithCGPoint:CGPointMake(center.x + curX, center.y + curY)]];
	}
	return result;
}

- (void)drawRect:(CGRect)rect {
	bool pathStarted = NO;
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	self.backgroundColor = [UIColor clearColor];
	//UIRectFill([self bounds]);
	
	NSArray *points = [PolygonView pointsForPolygonInRect:rect numberOfSides:polygon.numberOfSides];
	
	CGContextBeginPath (context);
	for (NSValue *value in points) {
		CGPoint point = [value CGPointValue];
		if (!pathStarted) {
			CGContextMoveToPoint (context, point.x, point.y);
			pathStarted = YES;
		} else {
			CGContextAddLineToPoint (context, point.x, point.y);
		}
	}
	CGContextClosePath (context);
	nameLabel.text = polygon.shapeType;
	
	[[UIColor redColor] setFill];
	[[UIColor blackColor] setStroke];
	CGContextDrawPath (context, kCGPathFillStroke);
	
	/*
	// Animate
	[UIView beginAnimations:@"rotate" context:context];
	[UIView setAnimationDuration:2];
	//[UIView setAnimationRepeatAutoreverses:YES];
	[UIView setAnimationRepeatCount:1];
	
	currentRotation += 180;
	self.transform = CGAffineTransformMakeRotation(currentRotation);
	nameLabel.transform = CGAffineTransformMakeRotation(-1 * currentRotation);
	
	[UIView commitAnimations];
	// */
}

@end
