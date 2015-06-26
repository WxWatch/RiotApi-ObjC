//
//  StaticChampion.h
//  RiotAPI
//
//  Created by James Glenn on 5/13/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"
#import "StaticImage.h"
#import "StaticInfo.h"
#import "StaticPassive.h"
#import "StaticStats.h"
#import "StaticRecommended.h"
#import "StaticSkin.h"
#import "StaticChampionSpell.h"

@interface StaticChampion : BaseObject

@property (nonatomic, strong) NSArray *allytips;
@property (nonatomic, strong) NSString *blurb;
@property (nonatomic, strong) NSArray *enemytips;
@property (nonatomic, assign) NSInteger id;
@property (nonatomic, strong) StaticImage *image;
@property (nonatomic, strong) StaticInfo *info;
@property (nonatomic, strong) NSString *key;
@property (nonatomic, strong) NSString *lore;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *partype;
@property (nonatomic, strong) StaticPassive *passive;
@property (nonatomic, strong) NSArray *recommended;
@property (nonatomic, strong) NSArray *skins;
@property (nonatomic, strong) NSArray *spells;
@property (nonatomic, strong) StaticStats *stats;
@property (nonatomic, strong) NSArray *tags;
@property (nonatomic, strong) NSString *title;

@end
