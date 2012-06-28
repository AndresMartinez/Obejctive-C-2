//
//  UfcBaseClass.h
//  Andres_Project1
//
//  Created by Andres Martinez on 6/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UfcBaseClass : NSObject

{
    int _type;
    NSString *_name;
    int _strikes;
    NSString *textOutput;
    
    
}

-(id)initWithDetails:(int)type name:(NSString*)name strikes:(int)strikes;
-(void)printName;
-(int)GetStrikes;
-(NSString*)getTextOutput;

@end
