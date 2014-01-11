//
//  arcaneMage.m
//  demoApp
//
//  Created by nathan byarley on 1/8/14.
//  Copyright (c) 2014 nathan byarley. All rights reserved.
//

#import "arcaneMage.h"

@implementation arcaneMage

@synthesize baseDamage;
@synthesize numOfCharges;
@synthesize dmgIncPerCharge;
@synthesize totalDmgOutput;
@synthesize dmgPercent;


-(id)init {
    
    self = [super init];
    if (self != nil) {
        
        [self setNumOfCharges:2];
        [self setBaseDamage:231];
        [self setDmgIncPerCharge:0.50f];
        [self setTotalDmgOutput:0];
        [self setDmgPercent:0];
        
    }
    return self;
}

-(NSString *)calArcaneDmg {
    
    //all calculations do not follow the exact standard to the game, this is a variation.
    [self setDmgPercent: (dmgIncPerCharge * 100)];
    [self setTotalDmgOutput:((numOfCharges / dmgIncPerCharge) + baseDamage)];
    
    NSString *calArcaneDmgMsg = [[NSString alloc] initWithFormat:@"you release %i charges that contain a damage increase of %i%% per charge\n and a base damage of %i, you would do a total of damage of %i",  numOfCharges, dmgPercent, baseDamage, totalDmgOutput];
    return calArcaneDmgMsg;
}

@end
