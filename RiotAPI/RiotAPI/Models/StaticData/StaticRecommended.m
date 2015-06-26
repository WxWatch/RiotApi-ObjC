//
//  StaticRecommended.m
//  RiotAPI
//
//  Created by James Glenn on 5/13/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "StaticRecommended.h"

@implementation StaticRecommended

- (void)setBlocks:(NSArray *)blocks {
    _blocks = [blocks arrayOfObjectsWithClass:[StaticBlock class]];
}

@end
