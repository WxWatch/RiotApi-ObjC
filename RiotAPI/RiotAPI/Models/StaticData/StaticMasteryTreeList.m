//
//  StaticMasteryTreeList.m
//  RiotAPI
//
//  Created by James Glenn on 5/16/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "StaticMasteryTreeList.h"

@implementation StaticMasteryTreeList

- (void)setMasteryTreeItems:(NSArray *)masteryTreeItems {
    _masteryTreeItems = [masteryTreeItems arrayOfObjectsWithClass:[StaticMasteryTreeItem class]];
}

@end
