//
//  StaticMastery.h
//  RiotAPI
//
//  Created by James Glenn on 5/16/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"
#import "StaticImage.h"

@interface StaticMastery : BaseObject

@property (nonatomic, strong) NSArray *aDescription;
@property (nonatomic, assign) NSInteger id;
@property (nonatomic, strong) StaticImage *image;
@property (nonatomic, strong) NSString *masteryTree;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *prereq;
@property (nonatomic, assign) NSInteger ranks;
@property (nonatomic, strong) NSArray *sanitizedDescription;

@end
