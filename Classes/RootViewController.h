//
//  RootViewController.h
//  Emojicon
//
//  Created by Naveen Selvadurai on 1/23/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MainViewController;

@interface RootViewController : UIViewController {

    MainViewController *mainViewController;
}

@property (nonatomic, retain) MainViewController *mainViewController;

@end
