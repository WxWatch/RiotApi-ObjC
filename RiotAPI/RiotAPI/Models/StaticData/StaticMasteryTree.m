//
//  StaticMasteryTree.m
//  RiotAPI
//
//  Created by James Glenn on 5/16/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "StaticMasteryTree.h"
#import "NSArray+Utilities.h"

@implementation StaticMasteryTree

- (void)setOffense:(NSArray *)Offense {
    _Offense = [Offense arrayOfObjectsWithClass:[StaticMasteryTreeList class]];
}

- (void)setDefense:(NSArray *)Defense {
    _Defense = [Defense arrayOfObjectsWithClass:[StaticMasteryTreeList class]];
}

- (void)setUtility:(NSArray *)Utility {
    _Utility = [Utility arrayOfObjectsWithClass:[StaticMasteryTreeList class]];
}

@end
