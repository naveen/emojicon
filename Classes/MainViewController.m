//
//  MainViewController.m
//  Emojicon
//
//  Created by Naveen Selvadurai on 1/23/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "MainViewController.h"
#import "MainView.h"

@implementation MainViewController

@synthesize dict, action, desc;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}

-(IBAction)change:(id)sender {
	if (enabled) {
		[dict setObject:[NSNumber numberWithBool:FALSE] forKey:@"KeyboardEmojiEverywhere"];
	} else {
		[dict setObject:[NSNumber numberWithBool:TRUE] forKey:@"KeyboardEmojiEverywhere"];
	}
	
	[dict writeToFile:[[NSHomeDirectory() stringByAppendingPathComponent:@"../../Library/Preferences/"] stringByAppendingPathComponent:@"com.apple.Preferences.plist"] atomically:NO];
	[self currentStatus];
}

-(void)currentStatus {	
	NSString *status = [dict objectForKey:@"KeyboardEmojiEverywhere"];
	if (![status boolValue]) {
		NSLog(@"emoji: disabled");
		[action setTitle:@"Emoji is disabled. Tap to enable." forState:UIControlStateNormal];
		[action setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
		
		[desc setText:@"Emoji (絵文字) is the Japanese name for the picture characters or emoticons used in Japanese wireless messages and webpages. Originally meaning pictograph, the word literally means e \"picture\" + moji \"letter\". The characters are used much like emoticons elsewhere, but a wider range is provided, and the icons are standardized and built into the handsets. [Wikipedia]"];

		enabled = NO;
	} else {
		NSLog(@"emoji: enabled");
		[action setTitle:@"Emoji is enabled. Tap to disable." forState:UIControlStateNormal];
		[action setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
		
		[desc setText:@"To use Emoji in your messages, you'll need to turn on the Japanese Emoji keyboard.\n\nGo to \"Settings\" ➔ \"General\" ➔ \"Keyboard\" ➔ \"International Keyboards\" ➔ \"Japanese\" ➔ Turn \"Emoji\" to ON."];

		enabled = YES;
	}
}

- (void)viewDidLoad {
    [super viewDidLoad];
	
	dict = [[NSMutableDictionary alloc] initWithContentsOfFile:[[NSHomeDirectory() stringByAppendingPathComponent:@"../../Library/Preferences/"] stringByAppendingPathComponent:@"com.apple.Preferences.plist"]];

	[self currentStatus];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}

- (void)dealloc {
	[dict release];
	[action release];
	[desc release];
    [super dealloc];
}

@end
