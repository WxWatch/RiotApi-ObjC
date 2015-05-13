//
//  Translation.h
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@interface Translation : BaseObject

@property (nonatomic, strong) NSString *content;
@property (nonatomic, strong) NSString *locale;
@property (nonatomic, strong) NSString *updated_at;

@end
