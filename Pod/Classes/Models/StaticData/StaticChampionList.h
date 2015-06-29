//
//  StaticChampionList.h
//  RiotAPI
//
//  Created by James Glenn on 5/13/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"
#import "StaticChampion.h"

@interface StaticChampionList : BaseObject

@property (nonatomic, strong) NSDictionary *data;
@property (nonatomic, strong) NSString *format;
@property (nonatomic, strong) NSDictionary *keys;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *version;

@end
