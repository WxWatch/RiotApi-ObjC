//
//  ShardStatus.h
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"
#import "Service.h"

@interface ShardStatus : BaseObject

@property (nonatomic, strong) NSString *hostname;
@property (nonatomic, strong) NSArray *locales;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *region_tag;
@property (nonatomic, strong) NSArray *services;
@property (nonatomic, strong) NSString *slug;

@end
