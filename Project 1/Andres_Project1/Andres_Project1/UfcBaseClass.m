//
//  UfcBaseClass.m
//  Andres_Project1
//
//  Created by Andres Martinez on 6/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "UfcBaseClass.h"

@implementation UfcBaseClass



-(id)initWithDetails:(int)type name:(NSString*)name strikes:(int)strikes

{
    _type = type;
    _name = name;
    _strikes = strikes;
    return self;
    
}

-(int)GetStrikes
{
    NSLog(@"i am a %@ fighter,and have %i Strikes ", _name , _strikes);
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




-(void)printName
{
    NSLog(@"i am a %@ andd have %i strikes" , _name , _strikes);
}








@end
