//
//  StaticRecommended.h
//  RiotAPI
//
//  Created by James Glenn on 5/13/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"
#import "StaticBlock.h"

@interface StaticRecommended : BaseObject

@property (nonatomic, strong) NSArray *blocks;
@property (nonatomic, strong) NSString *champion;
@property (nonatomic, strong) NSString *map;
@property (nonatomic, strong) NSString *mode;
@property (nonatomic, assign) BOOL priority;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *type;

@end
