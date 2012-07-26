//
//  EventController.h
//  AndresMartinezProject3
//
//  Created by Andres Martinez on 7/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>



@protocol PassEventText <NSObject>

@required
-(void)setEvent:(NSString*)myEventString;

@end


@interface EventController : UIViewController <UITextFieldDelegate>

{
    IBOutlet UITextField *myEventTextField;
    id <PassEventText> delegate;
    IBOutlet UIDatePicker *datepick;
    NSString *words;
    NSString *newEvent;
    
    IBOutlet UILabel *slideLeftLabel;
    UISwipeGestureRecognizer *leftSwiper;
}

@property (strong) id<PassEventText> delegate;
@property (nonatomic, retain)IBOutlet UIDatePicker *datepick;


-(IBAction)keyboardVanish:(id)sender;

-(void) onLeftSwipe:(UISwipeGestureRecognizer*)recognizer;










@end
