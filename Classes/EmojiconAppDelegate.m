//
//  EmojiconAppDelegate.m
//  Emojicon
//
//  Created by Naveen Selvadurai on 1/23/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "EmojiconAppDelegate.h"
#import "RootViewController.h"

@implementation EmojiconAppDelegate


@synthesize window;
@synthesize rootViewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {
    
    [window addSubview:[rootViewController view]];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [rootViewController release];
    [window release];
    [super dealloc];
}

@end
