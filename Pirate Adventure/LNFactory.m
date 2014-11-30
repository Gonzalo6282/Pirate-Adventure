//
//  LNFactory.m
//  Pirate Adventure
//
//  Created by Gabi on 25/11/2014.
//  Copyright (c) 2014 Liner. All rights reserved.
//

#import "LNFactory.h"
#import "LNTile.h"
@implementation LNFactory

-(NSArray *)tiles;
{
    LNTile *tile1 = [[LNTile alloc]init];
    tile1.story = @"Captain, we need a fearless leader such as yourself to undertake a voyage. You just stop the evil pirate Boss. Would you like a blunted sword to get started?";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    LNWeapon *bluntedSword = [[LNWeapon alloc] init];
    bluntedSword.name = @"Blunted sword";
    bluntedSword.damage = 12;
    tile1.weapon = bluntedSword;
    tile1.actionbButtonName = @"Take the sword";
    
    
    
    LNTile *tile2 = [[LNTile alloc]init];
    tile2.story = @"You have come across an armory. Would you like to upgrade your armor to steel armor? ";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    LNArmor *steelArmor = [[LNArmor alloc] init];
    steelArmor.name = @"Steel armor";
    steelArmor.health = 8;
    tile2.armor = steelArmor;
    tile2.actionbButtonName = @"Take armor";
    
    
    LNTile *tile3 = [[LNTile alloc]init];
    tile3.story = @"A mysterious dock appears in the horizon. Should we stop and ask for directions?";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile3.healthEffect = 12;
    tile3.actionbButtonName = @"Stop at the dock";
    
                              
    NSMutableArray *firstColumn = [[NSMutableArray alloc]init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    LNTile *tile4 = [[LNTile alloc]init];
    tile4.story = @"You have found a parrot. This can be used in your armor slot. Parrots are a great defender and are fiercly loyal to their captain!";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    LNArmor *parrotArmor = [[LNArmor alloc] init];
    parrotArmor.health = 20;
    parrotArmor.name = @"Parrot";
    tile4.armor = parrotArmor;
    tile4.actionbButtonName = @"Adopt Parrot";
    
    LNTile *tile5 = [[LNTile alloc]init];
    tile5.story = @"You have stumbled upon a cache of pirate weapons. Would you like to upgrade to a pistol?";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    LNWeapon *pistolWeapon = [[LNWeapon alloc] init];
    pistolWeapon.damage = 17;
    pistolWeapon.name = @"Pistol";
    tile5.weapon = pistolWeapon;
    tile5.actionbButtonName = @"Use pistol";
    
    
    LNTile *tile6 = [[LNTile alloc]init];
    tile6.story = @"You have been captured by piretes and are order to walk the plank";
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.healthEffect = -22;
    tile6.actionbButtonName = @"Show no fear";
    
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc]init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    LNTile *tile7 = [[LNTile alloc]init];
    tile7.story = @"You have sighted a pirate battle off the coast. Should we intervene?";
       tile7.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    tile7.healthEffect = 8;
    tile7.actionbButtonName = @"Fight those scum";
    
    
    LNTile *tile8 = [[LNTile alloc]init];
    tile8.story = @"The legend  of the deep. The mighty kraken appears";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile8.healthEffect = -46;
    tile8.actionbButtonName = @"Abandon ship";
    
    
    LNTile *tile9 = [[LNTile alloc]init];
    tile9.story = @"You have stumbled upon a hidden cave pirate treasurer";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile9.healthEffect = 20;
    tile9.actionbButtonName = @"Take treasurer";
    
    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc]init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    LNTile *tile10 = [[LNTile alloc]init];
    tile10.story = @"A group of pirate attempts to board you ship";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile10.healthEffect = -15;
    tile10.actionbButtonName = @"Repel the invaders";
                             
    LNTile *tile11 = [[LNTile alloc]init];
    tile11.story = @"In the deep of the sea many things can live or many things can be found. Will the fortune bring help or ruin?";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile11.healthEffect = -7;
    tile11.actionbButtonName = @"Swim deeper";
    
    LNTile *tile12 = [[LNTile alloc]init];
    tile12.story = @"Your final faceoff with the fearsome pirate boss!";
    
    tile12.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile12.healthEffect = -15;
    tile12.actionbButtonName = @"Fight";
                             
                             
    NSMutableArray *fourthColumn = [[NSMutableArray alloc]init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    NSArray *tiles = [[NSArray alloc]initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    return tiles;

}

-(LNCharacter *) character
{
    LNCharacter *character = [[LNCharacter alloc] init];
    character.health = 100;
    
    LNArmor *armor = [[LNArmor alloc] init];
    armor.name = @"Cloak";
    armor.health = 5;
    character.armor = armor;
    
    LNWeapon *weapon =[[LNWeapon alloc] init];
    weapon.name = @"Fists";
    weapon.damage = 10;
    character.weapon = weapon;
    
    return character;
}
-(LNBoss *) boss
{
        LNBoss *boss = [[LNBoss alloc] init];
        boss.health = 65;
        return boss;
    }

@end