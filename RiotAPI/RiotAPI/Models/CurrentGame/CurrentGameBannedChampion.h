//
//  CurrentGameBannedChampion.h
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@interface CurrentGameBannedChampion : BaseObject

@property (nonatomic, assign) long championId;
@property (nonatomic, assign) NSInteger pickTurn;
@property (nonatomic, assign) long teamId;

@end
