//
//  RunePages.m
//  RiotAPI
//
//  Created by James Glenn on 5/13/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "RunePages.h"

@implementation RunePages

- (void)setPages:(NSArray *)pages {
    _pages = [pages arrayOfObjectsWithClass:[RunePage class]];
}

@end
