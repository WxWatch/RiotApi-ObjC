//
//  Frame.m
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "Frame.h"
#import "NSArray+Utilities.h"
#import "NSDictionary+Utilities.h"

@implementation Frame

- (void)setEvents:(NSArray *)events {
    _events = [events arrayOfObjectsWithClass:[Event class]];
}

- (void)setParticipantFrames:(NSDictionary *)participantFrames {
    _participantFrames = [participantFrames dictionaryOfObjectsWithClass:[ParticipantFrame class]];
}

@end
