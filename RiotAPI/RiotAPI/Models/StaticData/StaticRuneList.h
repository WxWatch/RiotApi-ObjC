//
//  StaticRuneList.h
//  RiotAPI
//
//  Created by James Glenn on 5/16/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"
#import "StaticBasicData.h"
#import "StaticRune.h"

@interface StaticRuneList : BaseObject

@property (nonatomic, strong) StaticBasicData *basic;
@property (nonatomic, strong) NSDictionary *data;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *version;

@end
