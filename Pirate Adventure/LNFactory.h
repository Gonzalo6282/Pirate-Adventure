//
//  LNFactory.h
//  Pirate Adventure
//
//  Created by Gabi on 25/11/2014.
//  Copyright (c) 2014 Liner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LNCharacter.h"
#import "LNBoss.h"

@interface LNFactory : NSObject

-(NSArray *)tiles;
-(LNCharacter *) character;
-(LNBoss *) boss;

@end
