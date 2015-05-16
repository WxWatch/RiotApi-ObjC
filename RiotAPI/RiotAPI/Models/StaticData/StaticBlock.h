//
//  StaticBlock.h
//  RiotAPI
//
//  Created by James Glenn on 5/13/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@interface StaticBlock : BaseObject

@property (nonatomic, strong) NSArray *items;
@property (nonatomic, assign) BOOL recMath;
@property (nonatomic, strong) NSString *type;

@end
