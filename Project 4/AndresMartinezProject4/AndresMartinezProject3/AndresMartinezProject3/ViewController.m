//
//  ViewController.m
//  AndresMartinezProject3
//
//  Created by Andres Martinez on 7/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "EventController.h"


@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

-(IBAction)onSaveEvent:(id)sender
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (defaults != nil)
    {
        NSString *eventString = namelabel.text;
        [defaults setObject:eventString forKey:@"myevent"];
        [defaults synchronize];
    }
}



-(void)setEvent:(NSString*)myEventString
{
    namelabel.text = myEventString;
    
}

- (void)viewDidLoad
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (defaults != nil)
    {
        NSString *eventString = [defaults objectForKey:@"myevent"];
        namelabel.text = eventString;
    }
    
    [super viewDidLoad];
     // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
     
    
    
    //remeber to go to xib and turn on user interaction interface or nothing will happen
    rightSwiper = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(onSwipe:)];
    rightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    [swipelabel  addGestureRecognizer:rightSwiper];

    [super viewWillAppear:animated];
}


-(void) onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    if(recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
        EventController *Eventview = [[EventController alloc]initWithNibName:@"EventController" bundle:nil];
        if(Eventview != nil)
            Eventview.delegate = self;
        [self presentModalViewController:Eventview animated:TRUE];
    }
}


-(IBAction)onClear:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setPersistentDomain:[NSDictionary dictionary] forName:[[NSBundle mainBundle]bundleIdentifier]];
    
    namelabel.text = @"";
}



- (void)viewDidAppear:(BOOL)animated
{
      [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
