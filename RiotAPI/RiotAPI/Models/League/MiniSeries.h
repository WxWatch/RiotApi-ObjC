//
//  MiniSeries.h
//  RiotAPI
//
//  Created by James Glenn on 5/11/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@interface MiniSeries : BaseObject

@property (nonatomic, assign) NSInteger losses;
@property (nonatomic, strong) NSString *progress;
@property (nonatomic, assign) NSInteger target;
@property (nonatomic, assign) NSInteger wins;

@end
