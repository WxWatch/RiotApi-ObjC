//
//  Frame.h
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"
#import "Event.h"
#import "ParticipantFrame.h"

@interface Frame : BaseObject

@property (nonatomic, strong) NSArray *events;
@property (nonatomic, strong) NSDictionary *participantFrames;
@property (nonatomic, assign) long timestamp;

@end
