//
//  frostMage.h
//  demoApp
//
//  Created by nathan byarley on 1/8/14.
//  Copyright (c) 2014 nathan byarley. All rights reserved.
//

#import "BaseMage.h"

@interface frostMage : BaseMage

@property BOOL isAOE;
@property int castHaste;
@property int dmgMod;
@property int dmgBonus;

-(NSString *)calcDmg;

@end
