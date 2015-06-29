//
//  MatchHistorySummary.h
//  RiotAPI
//
//  Created by James Glenn on 5/11/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@interface MatchHistorySummary : BaseObject

@property (nonatomic, assign) NSInteger assists;
@property (nonatomic, assign) long date;
@property (nonatomic, assign) NSInteger deaths;
@property (nonatomic, assign) long gameId;
@property (nonatomic, strong) NSString *gameMode;
@property (nonatomic, assign) BOOL invalid;
@property (nonatomic, assign) NSInteger kills;
@property (nonatomic, assign) NSInteger mapId;
@property (nonatomic, assign) NSInteger opposingTeamKills;
@property (nonatomic, strong) NSString *opposingTeamName;
@property (nonatomic, assign) BOOL win;

- (NSDate*)dateAsDate;

@end
