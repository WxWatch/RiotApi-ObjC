//
//  Roster.m
//  RiotAPI
//
//  Created by James Glenn on 5/11/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "Roster.h"

@implementation Roster

- (void)setMemberList:(NSArray *)memberList {
    _memberList = [memberList arrayOfObjectsWithClass:[TeamMemberInfo class]];
}

@end
