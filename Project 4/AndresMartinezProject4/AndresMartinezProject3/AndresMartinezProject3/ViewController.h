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

    IBOutlet UILabel *namelabel;
    IBOutlet UILabel *swipelabel;
    
    UISwipeGestureRecognizer *rightSwiper;

}

-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer;
-(IBAction)onSaveEvent:(id)sender;
-(IBAction)onClear:(id)sender;
@end
