//
//  Team.m
//  RiotAPI
//
//  Created by James Glenn on 5/11/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "Team.h"
#import "NSDate+Utilities.h"
#import "NSArray+Utilities.h"

@implementation Team

- (void)setMatchHistory:(NSArray *)matchHistory {
    _matchHistory = [matchHistory arrayOfObjectsWithClass:[MatchHistorySummary class]];
}

- (void)setTeamStatDetails:(NSArray *)teamStatDetails {
    _teamStatDetails = [teamStatDetails arrayOfObjectsWithClass:[TeamStatDetail class]];
}

- (NSDate*)lastGameDateAsDate {
    return [NSDate dateWithMillisecondsSince1970:self.lastGameDate];
}

- (NSDate*)lastJoinDateAsDate {
    return [NSDate dateWithMillisecondsSince1970:self.lastJoinDate];
}

- (NSDate*)lastJoinedRankedTeamQueueDateAsDate {
    return [NSDate dateWithMillisecondsSince1970:self.lastJoinedRankedTeamQueueDate];
}

- (NSDate*)modifyDateAsDate {
    return [NSDate dateWithMillisecondsSince1970:self.modifyDate];
}

- (NSDate*)secondLastJoinDateAsDate {
    return [NSDate dateWithMillisecondsSince1970:self.secondLastJoinDate];
}

- (NSDate*)thirdLastJoinDateAsDate {
    return [NSDate dateWithMillisecondsSince1970:self.thirdLastJoinDate];
}


@end
