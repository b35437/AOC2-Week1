//
//  mageFactory.h
//  demoApp
//
//  Created by nathan byarley on 1/9/14.
//  Copyright (c) 2014 nathan byarley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseMage.h"
#import "fireMage.h"
#import "frostMage.h"
#import "arcaneMage.h"

@interface mageFactory : NSObject

+(BaseMage *)createNewMage: (int)mageType;


@end
