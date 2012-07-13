//
//  ViewController.h
//  AndresMartinezProject2
//
//  Created by Andres Martinez on 7/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    
    IBOutlet UILabel *calcScreen;
    IBOutlet UISwitch *powerSwitch;
    IBOutlet UISegmentedControl *segmentControl;
    IBOutlet UILabel *segmentTest;
    int currentOperator;
    int currentColor;
    float currentNum;
    float result;

}

-(IBAction)onSwitch:(id)sender;

-(IBAction)onDigitClick:(id)sender;

-(IBAction)onOpClick:(id)sender;

-(IBAction)onCancelInput:(id)sender;

-(IBAction)onAllClear:(id)sender;

-(IBAction)onInfoClick:(id)sender;

-(IBAction)onColorClick:(id)sender;



@end
