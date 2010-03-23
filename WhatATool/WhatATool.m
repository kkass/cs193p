#import <Foundation/Foundation.h>
#import "PolygonShape.h"

void PrintPathInfo() {
	NSLog(@"===== Begin Section 1 =====");
	NSString *path = @"~";
	NSLog([NSString stringWithFormat: @"Path to test %@", path]);
	
	path = [path stringByExpandingTildeInPath];
	NSLog([NSString stringWithFormat: @"My home folder is at '%@'", path]);
	
	NSArray *pathComponents = [path pathComponents];
	
	for (NSString *s in pathComponents) {
		NSLog(s);
	}
	
	NSLog(@"===== End Section 1 =====");
}

void PrintProcessInfo() {
	NSLog(@"===== Begin Section 2 =====");
	NSProcessInfo *processInfo = [NSProcessInfo processInfo];
	NSString *name = [processInfo processName];
	int pid = [processInfo processIdentifier];
	
	NSLog([NSString stringWithFormat:@"Process name is '%@' and PID is '%d'", name, pid]);
	NSLog(@"===== End Section 2 =====");
}

void PrintBookmarkInfo() {
	NSLog(@"===== Begin Section 3 =====");
	NSMutableDictionary *bookMark = [NSMutableDictionary dictionaryWithCapacity:5];
	
	[bookMark setObject:[NSURL URLWithString:@"http://www.stanford.edu"] forKey:@"Stanford University"];
	[bookMark setObject:[NSURL URLWithString:@"http://www.apple.com"] forKey:@"Apple"];
	[bookMark setObject:[NSURL URLWithString:@"http://cs193p.stanford.edu"] forKey:@"CS193P"];
	[bookMark setObject:[NSURL URLWithString:@"http://itunes.stanford.edu"] forKey:@"Stanford on iTunes U"];
	[bookMark setObject:[NSURL URLWithString:@"http://stanfordshop.com"] forKey:@"Stanford Mall"];
	
	for (id key in bookMark) {
		if ([key hasPrefix:@"Stanford"]) {
			NSLog(@"key: %@, URL: %@", key, [bookMark objectForKey:key]);
		}
	}
	
	NSLog(@"===== End Section 3 =====");
}

void PrintIntrospectionInfo() {
	NSLog(@"===== Begin Section 4 =====");
	NSMutableArray *array = [NSMutableArray arrayWithCapacity:5];
	
	[array addObject:[NSURL URLWithString:@"http://stanfordshop.com"]];
	[array addObject:@"Some String"];
	[array addObject:@"Some Other String"];
	NSMutableString *newString = [NSMutableString stringWithCapacity:20];
	[newString setString:@"A Mutable String"];
	[array addObject:newString];
	
	for (id item in array) {
		NSLog(@"Class Name: %@", [item className]);
		NSLog(@"Is Member of NSString: %@", ([item isMemberOfClass:[NSString class]]?@"YES":@"NO"));
		NSLog(@"Is Member of NSString: %@", ([item isKindOfClass:[NSString class]]?@"YES":@"NO"));
		
		SEL sel = @selector(lowercaseString);
		if ([item respondsToSelector:sel]) {
			NSLog(@"Responds to lowercaseString: YES");
			NSLog(@"lowercaseString is: %@", [item performSelector:sel]);
		} else {
			NSLog(@"Responds to lowercaseString: NO");
		}
	
		NSLog(@"***************");	
	}
	
	
	NSLog(@"===== End Section 4 =====");
}

void PrintPolygonInfo() {
	NSLog(@"===== Begin Section 6 =====");
	NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:3];
	PolygonShape *p1, *p2, *p3;
	
	p1 = [[PolygonShape alloc] init];
	[array addObject:p1];
	NSLog(@"Added object: %@", p1);
	
	p2 = [[PolygonShape alloc] init];
	p2.minimumNumberOfSides = 5;
	p2.maximumNumberOfSides = 9;
	p2.numberOfSides        = 6;
	[array addObject:p2];
	NSLog(@"Added object: %@", p2);
	
	p3 = [[PolygonShape alloc] initWithNumberOfSides:12 minimumNumberOfSides:9 maximumNumberOfSides:12];
	[array addObject:p3];
	NSLog(@"Added object: %@", p3);
	
	for (PolygonShape *item in array) {
		NSLog(@"Setting numberOfSides to 10");
		[item setNumberOfSides: 10];
	}
	
	[array makeObjectsPerformSelector:@selector(release)];
	[array release];
	NSLog(@"===== End Section 6 =====");
}

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
    PrintPathInfo();          // Section 1
	PrintProcessInfo();       // Section 2
	PrintBookmarkInfo();      // Section 3
	PrintIntrospectionInfo(); // Section 4
	PrintPolygonInfo();       // Section 6
	
    [pool drain];
    return 0;
}
