//
//  UfcFactoryClass.h
//  Andres_Project1
//
//  Created by Andres Martinez on 6/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UfcBaseClass.h"

@interface UfcFactoryClass : NSObject

-(UfcBaseClass*)GetFighter:(int)fighterType;

@end
