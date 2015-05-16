//
//  StaticMapData.h
//  RiotAPI
//
//  Created by James Glenn on 5/13/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@interface StaticMapData : BaseObject

@property (nonatomic, strong) NSDictionary *data;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *version;

@end
