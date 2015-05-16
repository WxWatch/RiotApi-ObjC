//
//  Message.h
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"
#import "Translation.h"

@interface Message : BaseObject

@property (nonatomic, strong) NSString *author;
@property (nonatomic, strong) NSString *content;
@property (nonatomic, strong) NSString *created_at;
@property (nonatomic, assign) long id;
@property (nonatomic, strong) NSString *severity;
@property (nonatomic, strong) NSArray *translations;
@property (nonatomic, strong) NSString *updated_at;

@end
