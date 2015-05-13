//
//  Summoner.h
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@interface Summoner : BaseObject

@property (nonatomic, assign) long id;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger profileIconId;
@property (nonatomic, assign) long revisionDate;
@property (nonatomic, assign) long summmonerLevel;

- (NSDate*)revisionDateAsDate;

@end
