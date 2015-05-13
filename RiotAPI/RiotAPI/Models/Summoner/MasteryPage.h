//
//  MasteryPage.h
//  RiotAPI
//
//  Created by James Glenn on 5/13/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@interface MasteryPage : BaseObject

@property (nonatomic, assign) BOOL current;
@property (nonatomic, assign) long id;
@property (nonatomic, strong) NSArray *masteries;
@property (nonatomic, strong) NSString *name;

@end
