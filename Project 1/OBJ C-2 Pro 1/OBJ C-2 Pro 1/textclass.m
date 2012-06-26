//
//  textclass.m
//  OBJ C-2 Pro 1
//
//  Created by Andres Martinez on 6/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "textclass.h"

@implementation textclass

-(id)init
{
    self = [super init];
    if (self != nil)
    {
         // any init for this object
        intValue = 4;
        floatValue = 10.3f;
    
    }
    
    return self;
}

-(NSString*)getText
{
  
    text = [NSString stringWithFormat: @"int = %d , float = %f" , intValue , floatValue];
    if (text != nil)
    {
        return text;
    }
    
    return nil;
    
}

@end
