//
//  RunePage.h
//  RiotAPI
//
//  Created by James Glenn on 5/13/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@interface RunePage : BaseObject

@property (nonatomic, assign) BOOL current;
@property (nonatomic, assign) long id;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSArray *slots;

@end
