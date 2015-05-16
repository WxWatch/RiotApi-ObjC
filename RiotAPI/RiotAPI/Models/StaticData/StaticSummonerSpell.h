//
//  StaticSummonerSpell.h
//  RiotAPI
//
//  Created by James Glenn on 5/16/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"
#import "StaticImage.h"
#import "StaticLevelTip.h"

@interface StaticSummonerSpell : BaseObject

@property (nonatomic, strong) NSArray *cooldown;
@property (nonatomic, strong) NSString *cooldownBurn;
@property (nonatomic, strong) NSArray *cost;
@property (nonatomic, strong) NSString *costBurn;
@property (nonatomic, strong) NSString *costType;
@property (nonatomic, strong) NSString *aDescription;
@property (nonatomic, strong) NSArray *effect;
@property (nonatomic, strong) NSArray *effectBurn;
@property (nonatomic, assign) NSInteger id;
@property (nonatomic, strong) StaticImage *image;
@property (nonatomic, strong) NSString *key;
@property (nonatomic, strong) StaticLevelTip *leveltip;
@property (nonatomic, assign) NSInteger maxrank;
@property (nonatomic, strong) NSArray *modes;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) id range;
@property (nonatomic, strong) NSString *rangeBurn;
@property (nonatomic, strong) NSString *resource;
@property (nonatomic, strong) NSString *sanitizedDescription;
@property (nonatomic, strong) NSString *sanitizedTooltip;
@property (nonatomic, strong) NSString *tooltip;
@property (nonatomic, strong) NSArray *vars;

@end
