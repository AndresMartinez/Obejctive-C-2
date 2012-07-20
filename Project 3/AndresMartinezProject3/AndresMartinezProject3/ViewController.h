//
//  ViewController.h
//  AndresMartinezProject3
//
//  Created by Andres Martinez on 7/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventController.h"

@interface ViewController : UIViewController <PassEventText>
{
    IBOutlet UITextView *eventview;
    IBOutlet UILabel *namelabel;
}

-(IBAction)onClick:(id)sender;


@end
