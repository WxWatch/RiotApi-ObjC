//
//  StaticItemList.h
//  RiotAPI
//
//  Created by James Glenn on 5/13/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@class StaticBasicData;

@interface StaticItemList : BaseObject

@property (nonatomic, strong) StaticBasicData *basic;
@property (nonatomic, strong) NSDictionary *data;
@property (nonatomic, strong) NSArray *groups;
@property (nonatomic, strong) NSArray *tree;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *version;

@end
