//
//  StaticItem.h
//  RiotAPI
//
//  Created by James Glenn on 5/13/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@class StaticGold;
@class StaticImage;
@class StaticMetaData;
@class StaticBasicDataStats;

@interface StaticItem : BaseObject

@property (nonatomic, strong) NSString *colloq;
@property (nonatomic, assign) BOOL consumeOnFull;
@property (nonatomic, assign) BOOL consume;
@property (nonatomic, assign) NSInteger depth;
@property (nonatomic, strong) NSString *basicDataDescription;
@property (nonatomic, strong) NSArray *from;
@property (nonatomic, strong) StaticGold *gold;
@property (nonatomic, strong) NSString *group;
@property (nonatomic, assign) BOOL hideFromAll;
@property (nonatomic, assign) NSInteger id;
@property (nonatomic, strong) StaticImage *image;
@property (nonatomic, assign) BOOL inStore;
@property (nonatomic, strong) NSArray *into;
@property (nonatomic, strong) NSDictionary *maps;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *plaintext;
@property (nonatomic, strong) NSString *requiredChampion;
@property (nonatomic, strong) StaticMetaData *rune;
@property (nonatomic, strong) NSString *sanitizedDescription;
@property (nonatomic, assign) NSInteger specialRecipe;
@property (nonatomic, assign) NSInteger stacks;
@property (nonatomic, strong) StaticBasicDataStats *stats;
@property (nonatomic, strong) NSArray *tags;

@end
