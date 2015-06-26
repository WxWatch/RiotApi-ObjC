//
//  StaticItemList.m
//  RiotAPI
//
//  Created by James Glenn on 5/13/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "StaticItemList.h"

@implementation StaticItemList

- (void)setData:(NSDictionary *)data {
    _data = [data dictionaryOfObjectsWithClass:[StaticItem class]];
}

- (void)setGroups:(NSArray *)groups {
    _groups = [groups arrayOfObjectsWithClass:[StaticGroup class]];
}

- (void)setTree:(NSArray *)tree {
    _tree = [tree arrayOfObjectsWithClass:[StaticItemTree class]];
}

@end
