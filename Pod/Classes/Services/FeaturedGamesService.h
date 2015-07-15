//
//  FeaturedGamesService.h
//  RiotAPI
//
//  Created by James Glenn on 6/10/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseService.h"
#import "FeaturedGames.h"

@interface FeaturedGamesService : BaseService

- (void)getFeaturedGamesForRegion:(RGRegion*)region success:(void (^)(FeaturedGames *))success failure:(void (^)(NSError *))failure;

@end
