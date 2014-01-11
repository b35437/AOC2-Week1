//
//  fireMage.m
//  demoApp
//
//  Created by nathan byarley on 1/8/14.
//  Copyright (c) 2014 nathan byarley. All rights reserved.
//

#import "fireMage.h"


@implementation fireMage

@synthesize baseTime;
@synthesize castTime;
@synthesize totalSpells;

-(id)init {
    
    self = [super init];
    if (self != nil) {
        
        [self setTotalSpells:0];
        [self setCastTime:0];
        [self setBaseTime:0];
    }
    return self;
}

-(NSString *)calcCastTime {
    //all calculations do not follow the exact standard to the game, this is a variation.
    [self setCastTime:(((totalSpells * castTime) -1) * 100) / baseTime];
    
    NSString *calCastMsg = [[NSString alloc] initWithFormat:@"You would need to increase Your haste %i%%\n to cast this spell %i times within %i seconds\n", castTime, totalSpells, baseTime];
    return calCastMsg;
}

@end
