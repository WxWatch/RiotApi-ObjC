//
//  Incident.h
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@class Message;

@interface Incident : BaseObject

@property (nonatomic, assign) BOOL active;
@property (nonatomic, strong) NSString *created_at;
@property (nonatomic, assign) long id;
@property (nonatomic, strong) NSArray *messages;

@end
