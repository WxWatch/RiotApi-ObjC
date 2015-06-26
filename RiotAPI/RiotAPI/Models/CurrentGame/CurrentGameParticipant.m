//
//  CurrentGameParticipant.m
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "CurrentGameParticipant.h"

@implementation CurrentGameParticipant

- (void)setMasteries:(NSArray *)masteries {
    _masteries = [masteries arrayOfObjectsWithClass:[CurrentGameMastery class]];
}

- (void)setRunes:(NSArray *)runes {
    _runes = [runes arrayOfObjectsWithClass:[CurrentGameRune class]];
}

@end
