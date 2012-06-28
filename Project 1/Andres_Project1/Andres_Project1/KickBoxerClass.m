
//
//  KickBoxerClass.m
//  Andres_Project1
//
//  Created by Andres Martinez on 6/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "KickBoxerClass.h"
#import "UfcBaseClass.h"

@implementation KickBoxerClass


 


-(int)GetStrikes
{
    _strikes = (7+2);
    return _strikes;

}

-(NSString*)getTextOutput
{
    textOutput = [NSString stringWithFormat:@"I am a %@ fighter and have %i Strikes ", _name , _strikes];
    if (textOutput != nil)
    {
        return textOutput;
    } 
    return nil;
}




@end
