//
//  ViewController.m
//  Andres_Project1
//
//  Created by Andres Martinez on 6/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "UfcFactoryClass.h"
#import "KickBoxerClass.h"
#import "MuayThaiClass.h"
#import "JiuJitsuClass.h"


@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    UfcFactoryClass *ufcFactoryClass = [[UfcFactoryClass alloc]init];
    if (ufcFactoryClass != nil)
    {
        UfcBaseClass *kickboxer = [ufcFactoryClass GetFighter:0];
        [kickboxer getTextOutput];
        labelFighterType1 = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 80.0f)];
        
        if (labelFighterType1 != nil)
        {
            labelFighterType1.backgroundColor = [UIColor grayColor];
            labelFighterType1.text = [kickboxer getTextOutput];
            labelFighterType1.textAlignment = UITextAlignmentLeft;
            labelFighterType1.numberOfLines = 7;
            labelFighterType1.textColor = [UIColor blackColor];
        }
        
        [self.view addSubview:labelFighterType1];
   
    }  
/// second fighter 
    {
        UfcBaseClass *muayThai = [ufcFactoryClass GetFighter:1];
        [muayThai getTextOutput];
        labelFighterType2 =[[UILabel alloc]initWithFrame:CGRectMake(0.0f, 100.0f, 320.0f, 80.0f)];
        
        if (labelFighterType2 != nil)
        {
            labelFighterType2.backgroundColor = [UIColor blueColor];
            labelFighterType2.text = [muayThai getTextOutput];
            labelFighterType2.textAlignment = UITextAlignmentLeft;
            labelFighterType2.numberOfLines = 3;
            labelFighterType2.textColor = [UIColor whiteColor];
        }
        [self.view addSubview:labelFighterType2];
        
        
    } 
///Third fighter
    {
        UfcBaseClass *jiujitsu = [ufcFactoryClass GetFighter:2];
        [jiujitsu getTextOutput];
        labelFighterType3 = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 200.0f, 320.0f, 80.0f) ];
        
        if (labelFighterType3 != nil)
        {
            labelFighterType3.backgroundColor = [UIColor greenColor];
            labelFighterType3.text = [jiujitsu getTextOutput];
            labelFighterType3.textAlignment = UITextAlignmentLeft;
            labelFighterType3.numberOfLines =3;
            labelFighterType3.textColor = [UIColor blueColor];
        }
        [self.view addSubview:labelFighterType3];
        
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
    [super viewWillAppear:animated];
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
