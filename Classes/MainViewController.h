//
//  MainViewController.h
//  Emojicon
//
//  Created by Naveen Selvadurai on 1/23/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController {
	NSMutableDictionary *dict;
    IBOutlet UIButton *action;
	IBOutlet UITextView *desc;
	BOOL enabled;
}

@property (nonatomic, retain) NSMutableDictionary *dict;
@property (nonatomic, retain) UIButton *action;
@property (nonatomic, retain) UITextView *desc;

-(void)currentStatus;
-(IBAction)change:(id)sender;

@end
