//
//  MatchList.m
//  Pods
//
//  Created by James Glenn on 7/28/15.
//
//

#import "MatchList.h"

@implementation MatchList

- (void)setMatches:(NSArray *)matches {
    _matches = [matches arrayOfObjectsWithClass:[MatchReference class]];
}

@end
