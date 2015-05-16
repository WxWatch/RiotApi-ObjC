//
//  StaticInfo.h
//  RiotAPI
//
//  Created by James Glenn on 5/13/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@interface StaticInfo : BaseObject

@property (nonatomic, assign) NSInteger attack;
@property (nonatomic, assign) NSInteger defense;
@property (nonatomic, assign) NSInteger difficulty;
@property (nonatomic, assign) NSInteger magic;

@end
