//
//  LNCharacter.h
//  Pirate Adventure
//
//  Created by Gabi on 26/11/2014.
//  Copyright (c) 2014 Liner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LNArmor.h"
#import "LNWeapon.h"

@interface LNCharacter : NSObject

@property (strong, nonatomic) LNArmor *armor;
@property (strong, nonatomic) LNWeapon *weapon;
@property (nonatomic)int damage;
@property (nonatomic)int health;
@end
