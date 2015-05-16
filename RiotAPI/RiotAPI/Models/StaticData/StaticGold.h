//
//  StaticGold.h
//  RiotAPI
//
//  Created by James Glenn on 5/13/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@interface StaticGold : BaseObject

@property (nonatomic, assign) NSInteger base;
@property (nonatomic, assign) BOOL purchaseable;
@property (nonatomic, assign) NSInteger sell;
@property (nonatomic, assign) NSInteger total;

@end
