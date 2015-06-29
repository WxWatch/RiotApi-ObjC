//
//  StaticMapDetails.h
//  RiotAPI
//
//  Created by James Glenn on 5/13/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@class StaticImage;

@interface StaticMapDetails : BaseObject

@property (nonatomic, strong) StaticImage *image;
@property (nonatomic, assign) long mapId;
@property (nonatomic, strong) NSString *mapName;
@property (nonatomic, strong) NSArray *unpurchasableItemList;

@end
