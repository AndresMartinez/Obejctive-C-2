//
//  EventController.m
//  AndresMartinezProject3
//
//  Created by Andres Martinez on 7/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "EventController.h"


@interface EventController ()

@end


@implementation EventController

@synthesize delegate, datepick;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        delegate = nil;
        // Custom initialization
    }
    return self;
}
//////

-(IBAction)keyboardVanish:(id)sender
{
    [myEventTextField resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    datepick.minimumDate = [NSDate date];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)TextField
{
    TextField.text = [NSString stringWithString:@""];    return YES;
}





-(IBAction)onEventSave:(id)sender
{
    datepick.minimumDate = [NSDate date];
    NSDate *choice = [datepick date];
    if(choice !=nil)
    {
        NSDateFormatter *formatDate = [[NSDateFormatter alloc] init];
        if (formatDate != nil) {
            [formatDate setDateFormat:@"MMMM dd, h:mm a"];
        }
        words = [formatDate stringFromDate:choice];
        NSLog(@"%@", words);
    }
    
    [self dismissModalViewControllerAnimated:TRUE];
    if (delegate != nil)
    {
        newEvent = [NSString stringWithFormat:@"%@ \n%@ \n \n", myEventTextField.text, words];
        [delegate setEvent:newEvent];
    }
}






- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
