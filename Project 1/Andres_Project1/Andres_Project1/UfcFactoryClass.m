//
//  UfcFactoryClass.m
//  Andres_Project1
//
//  Created by Andres Martinez on 6/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "UfcFactoryClass.h"
#import "UfcBaseClass.h"
#import "KickBoxerClass.h"
#import "MuayThaiClass.h"
#import "JiuJitsuClass.h"

@implementation UfcFactoryClass

-(UfcBaseClass*)GetFighter:(int)fighterType
{
    if (fighterType == 0)
    {
        return [[UfcBaseClass alloc] initWithDetails:0  name:@"kickboxer"  strikes:(7+2)];
    }
    else if (fighterType == 1)
    {
        return [[UfcBaseClass alloc] initWithDetails:1 name:@"MuayThai" strikes:(8*2)];
    }
    else if (fighterType == 2)
    {
        return [[UfcBaseClass alloc] initWithDetails:2 name:@"jiu-jitsu" strikes:(10*2)];
    }
    return nil;
    

}

@end
