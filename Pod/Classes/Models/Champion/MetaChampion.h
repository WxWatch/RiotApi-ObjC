
//
//  MetaChampion.h
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@interface MetaChampion : BaseObject

@property (nonatomic, assign) BOOL active;
@property (nonatomic, assign) BOOL botEnabled;
@property (nonatomic, assign) BOOL botMmEnabled;
@property (nonatomic, assign) BOOL freeToPlay;
@property (nonatomic, assign) long id;
@property (nonatomic, assign) BOOL rankedPlayEnabled;

@end
