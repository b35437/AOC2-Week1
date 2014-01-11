//
//  frostMage.m
//  demoApp
//
//  Created by nathan byarley on 1/8/14.
//  Copyright (c) 2014 nathan byarley. All rights reserved.
//

#import "frostMage.h"

@implementation frostMage

@synthesize isAOE;
@synthesize castHaste;
@synthesize dmgMod;
@synthesize dmgBonus;

-(id)init {
    
    self = [super init];
    if (self != nil) {
        
        [self setIsAOE:TRUE];
        [self setCastHaste:12.5];
        [self setDmgMod:2];
        [self setDmgBonus:5];
    }
    return self;
}

-(NSString *)calcDmg {
    
    //all calculations do not follow the exact standard to the game, this is a variation.
    //if statement based on if isAOE is true or not.
    if(isAOE == true) {
        [self setDmgBonus:(castHaste * dmgMod) * 100];
        
        NSString *calDmgMsg = [[NSString alloc] initWithFormat:@"This spell is AOE with a casting haste of %i, and damage mod of %i, resulting in a damage bonus of %i", castHaste, dmgMod, dmgBonus];
        return calDmgMsg;
        
    } else {
        [self setDmgBonus:(castHaste * dmgMod)];
        
        NSString *calDmgMsg = [[NSString alloc] initWithFormat:@"This spell is not an AOE with a casting haste of %i, and does not have a damage mod, There is no damage bonus", castHaste];
        return calDmgMsg;
    }
}

@end
