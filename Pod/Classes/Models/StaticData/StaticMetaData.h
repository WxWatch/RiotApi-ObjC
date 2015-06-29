//
//  StaticMetaData.h
//  RiotAPI
//
//  Created by James Glenn on 5/13/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@interface StaticMetaData : BaseObject

@property (nonatomic, assign) BOOL isRune;
@property (nonatomic, strong) NSString *tier;
@property (nonatomic, strong) NSString *type;

@end
