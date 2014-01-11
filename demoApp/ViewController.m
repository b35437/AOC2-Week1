//
//  ViewController.m
//  demoApp
//
//  Created by nathan byarley on 1/8/14.
//  Copyright (c) 2014 nathan byarley. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Project header
    mageHeader = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 768.0f, 50.0f)];
    mageHeader.font = [UIFont boldSystemFontOfSize:20.0f];
    mageHeader.text = @"Mages";
    mageHeader.textAlignment = NSTextAlignmentCenter;
    mageHeader.backgroundColor = [UIColor grayColor];
    
    [self.view addSubview:mageHeader];
    
    
    
    //create fire mage
    fireMage *spellListEnum = (fireMage *)[mageFactory createNewMage:FIRE];
    
    //setup fireSpell Array
    NSArray *fireSpell = [[NSArray alloc]initWithObjects:@"Fireball", @"Pyroblast", @"Inferno Blast", @"Combustion", nil];
    
    //give variables a value
    if (spellListEnum != nil) {
        [spellListEnum setSpellName:fireSpell[0]];
        [spellListEnum setBaseTime:60];
        [spellListEnum setCastTime:2.2];
        [spellListEnum setTotalSpells:10];
        [spellListEnum setMastery:@"Ignite"];
    }
    
    //first Fire label
    UILabel *fireLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 60.0f, 768.0f,110.0f)];
    //fire mage attributes and variable output
    if (fireLabel1 && spellListEnum) {
        fireLabel1.font = [UIFont boldSystemFontOfSize:20.0f];
        fireLabel1.backgroundColor = [UIColor redColor];
        fireLabel1.text = [NSString stringWithFormat:@"You are a Fire Mage who has the Mastery of %@,\n and favors casting %@, with a cast time of %i",[spellListEnum mastery], [spellListEnum spellName], [spellListEnum castTime]];
        fireLabel1.textAlignment = NSTextAlignmentCenter;
        fireLabel1.numberOfLines = 5;

        [self.view addSubview:fireLabel1];
    }
    
    //second fire label
    UILabel *fireLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 180.0f, 768.0f, 60.0f)];
    //fire attribues
    if (fireLabel2 && spellListEnum) {
        fireLabel2.font = [UIFont boldSystemFontOfSize:20.0f];
        fireLabel2.backgroundColor = [UIColor redColor];
        fireLabel2.text = [spellListEnum calcCastTime];
        fireLabel2.textAlignment = NSTextAlignmentCenter;
        fireLabel2.numberOfLines = 3;
        
        [self.view addSubview:fireLabel2];
    }
    
    
    //Frost Mage
    frostMage *frost = (frostMage *)[mageFactory createNewMage:FROST];
    
    //setup fireSpell Array
    NSArray *frostSpell = [[NSArray alloc]initWithObjects:@"Frostbolt", @"Summon Water Elemental", @"Fingers of Frost", @"Ice Lance", nil];
    
    if (frost != nil) {
        [frost setSpellName:frostSpell[0]];
        [frost setIsAOE:FALSE];
        [frost setCastHaste:12.5];
        [frost setDmgMod:2.6];
        [frost setDmgBonus:5];
        [frost setMastery:@"Icicles"];
        
    }
    
    //frost mage label 1
    UILabel *frostLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 270.0f, 768.0f,110.0f)];
    if (frostLabel1 && frost) {
        frostLabel1.font = [UIFont boldSystemFontOfSize:20.0f];
        frostLabel1.backgroundColor = [UIColor blueColor];
        frostLabel1.text = [NSString stringWithFormat:@"You are a Frost Mage who has the Mastery of %@,\n and favors casting %@, if the spell is AOE the spell has a damage bonus \nof %i",[frost mastery], [frost spellName], [frost dmgBonus]];
        frostLabel1.textAlignment = NSTextAlignmentCenter;
        frostLabel1.numberOfLines = 5;
        
        [self.view addSubview:frostLabel1];
    }
    
    //frost mage label 2
    UILabel *frostLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 390.0f, 768.0f, 60.0f)];
    if (frostLabel2 && frost) {
        frostLabel2.font = [UIFont boldSystemFontOfSize:20.0f];
        frostLabel2.backgroundColor = [UIColor blueColor];
        frostLabel2.text = [frost calcDmg];
        frostLabel2.textAlignment = NSTextAlignmentCenter;
        frostLabel2.numberOfLines = 3;
        
        [self.view addSubview:frostLabel2];
    }
    
    
    //Arcane Mage
    arcaneMage *arcane = (arcaneMage *)[mageFactory createNewMage:ARCANE];
    
    //setup arcaneSpell Array
    NSArray *arcaneSpell = [[NSArray alloc]initWithObjects:@"Arcane Blast", @"Arcane Charge", @"Arcane Barrage", @"Arcane Missiles", nil];
    
    if (arcane != nil) {
        [arcane setSpellName:arcaneSpell[3]];
        [arcane setMastery:@"Mana Adept"];
        [arcane setNumOfCharges:2];
        [arcane setBaseDamage:231];
        [arcane setDmgIncPerCharge:0.50f];
    }
    
    //arcane mage label 1
    UILabel *arcaneLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 480.0f, 768.0f, 110.0f)];
    if (arcaneLabel1 && frost) {
        arcaneLabel1.font = [UIFont boldSystemFontOfSize:20.0f];
        arcaneLabel1.backgroundColor = [UIColor purpleColor];
        arcaneLabel1.text = [NSString stringWithFormat:@"You are an Arcane Mage who has the Mastery of %@,\n and favors casting %@, which allows you to cast multiple waves of missles",[arcane mastery], [arcane spellName]];
        arcaneLabel1.textAlignment = NSTextAlignmentCenter;
        arcaneLabel1.numberOfLines = 5;
        
        [self.view addSubview:arcaneLabel1];
    }
    
    //arcane mage label 2
    UILabel *arcaneLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 600.0f, 768.0f, 60.0f)];
    if (arcaneLabel2 && arcane) {
        arcaneLabel2.font = [UIFont boldSystemFontOfSize:20.0f];
        arcaneLabel2.backgroundColor = [UIColor purpleColor];
        arcaneLabel2.text = [arcane calArcaneDmg];
        arcaneLabel2.textAlignment = NSTextAlignmentCenter;
        arcaneLabel2.numberOfLines = 3;
        
        [self.view addSubview:arcaneLabel2];
    }
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
