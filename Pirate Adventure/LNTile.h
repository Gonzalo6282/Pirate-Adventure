//
//  LNTile.h
//  Pirate Adventure
//
//  Created by Gabi on 25/11/2014.
//  Copyright (c) 2014 Liner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LNWeapon.h"
#import "LNArmor.h"
@interface LNTile : NSObject

@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) UIImage *backgroundImage;
@property (strong, nonatomic) NSString *actionbButtonName;
@property (strong, nonatomic) LNWeapon *weapon;
@property (strong, nonatomic) LNArmor *armor;
@property (nonatomic) int healthEffect;
           
@end
