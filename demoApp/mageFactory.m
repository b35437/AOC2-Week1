//
//  mageFactory.m
//  demoApp
//
//  Created by nathan byarley on 1/9/14.
//  Copyright (c) 2014 nathan byarley. All rights reserved.
//

#import "mageFactory.h"


@implementation mageFactory

+(BaseMage *)createNewMage: (int)mageType {
    if(mageType == FIRE) {
        return [[fireMage alloc] init];
    } else if (mageType == FROST) {
        return [[frostMage alloc] init];
    } else if (mageType == ARCANE) {
        return [[arcaneMage alloc] init];
    } else {
        return nil;
    }
}


@end
