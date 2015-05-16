//
//  StaticPassive.h
//  RiotAPI
//
//  Created by James Glenn on 5/13/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@class StaticImage;

@interface StaticPassive : BaseObject

@property (nonatomic, strong) NSString *aDescription;
@property (nonatomic, strong) StaticImage *image;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *sanitizedDescription;

@end
