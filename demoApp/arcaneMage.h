//
//  arcaneMage.h
//  demoApp
//
//  Created by nathan byarley on 1/8/14.
//  Copyright (c) 2014 nathan byarley. All rights reserved.
//

#import "BaseMage.h"

@interface arcaneMage : BaseMage

@property int baseDamage;
@property int numOfCharges;
@property float dmgIncPerCharge;
@property int totalDmgOutput;
@property int dmgPercent;

-(NSString *)calArcaneDmg;

@end
