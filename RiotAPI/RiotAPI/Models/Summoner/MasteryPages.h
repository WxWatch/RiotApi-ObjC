//
//  MasteryPages.h
//  RiotAPI
//
//  Created by James Glenn on 5/13/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"
#import "MasteryPage.h"

@interface MasteryPages : BaseObject

@property (nonatomic, strong) NSArray *pages;
@property (nonatomic, assign) long summonerId;

@end
