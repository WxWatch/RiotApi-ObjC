//
//  StaticMasteryTreeItem.h
//  RiotAPI
//
//  Created by James Glenn on 5/16/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@interface StaticMasteryTreeItem : BaseObject

@property (nonatomic, assign) NSInteger masteryId;
@property (nonatomic, strong) NSString *prereq;

@end
