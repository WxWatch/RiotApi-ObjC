//
//  Participant.m
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "Participant.h"
#import "NSArray+Utilities.h"

@implementation Participant

- (void)setMasteries:(NSArray *)masteries {
    _masteries = [masteries arrayOfObjectsWithClass:[ParticipantMastery class]];
}

- (void)setRunes:(NSArray *)runes {
    _runes = [runes arrayOfObjectsWithClass:[ParticipantRune class]];
}

@end
