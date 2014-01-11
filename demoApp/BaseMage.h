//
//  BaseMage.h
//  demoApp
//
//  Created by nathan byarley on 1/8/14.
//  Copyright (c) 2014 nathan byarley. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface BaseMage : NSObject {
    
    int mageEnum;
}

typedef enum {
    
    FROST,
    FIRE,
    ARCANE
    
}mageEnum;

@property int castTime;
@property NSString *mastery;
@property NSArray *spellName;

-(id)init;

-(NSString *)calcCastTime;




@end
