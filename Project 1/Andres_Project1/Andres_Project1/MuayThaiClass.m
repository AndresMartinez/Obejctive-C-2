//
//  MuayThaiClass.m
//  Andres_Project1
//
//  Created by Andres Martinez on 6/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MuayThaiClass.h"
#import "UfcBaseClass.h"

@implementation MuayThaiClass



-(int)GetStrikes
{
    _strikes = (8*2);
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
