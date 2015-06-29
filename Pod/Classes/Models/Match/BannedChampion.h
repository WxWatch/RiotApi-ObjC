//
//  BannedChampion.h
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@interface BannedChampion : BaseObject

@property (nonatomic, assign) NSInteger championId;
@property (nonatomic, assign) NSInteger pickTurn;

@end
