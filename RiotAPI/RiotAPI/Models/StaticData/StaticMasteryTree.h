//
//  StaticMasteryTree.h
//  RiotAPI
//
//  Created by James Glenn on 5/16/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"
#import "StaticMasteryTreeList.h"

@interface StaticMasteryTree : BaseObject

@property (nonatomic, strong) NSArray *Defense;
@property (nonatomic, strong) NSArray *Offense;
@property (nonatomic, strong) NSArray *Utility;

@end
