//
//  ChampionService.h
//  RiotAPI
//
//  Created by James Glenn on 6/9/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseService.h"
#import "MetaChampionList.h"

@interface ChampionService : BaseService

- (void)getChampionsForRegion:(RGRegion*)region success:(void (^)(MetaChampionList *))success failure:(void (^)(NSError *))failure;
- (void)getChampionsFreeToPlay:(BOOL)freeToPlay region:(RGRegion*)region success:(void (^)(MetaChampionList *))success failure:(void (^)(NSError *))failure;
- (void)getChampionByID:(NSInteger)championID region:(RGRegion*)region success:(void (^)(MetaChampion *))success failure:(void (^)(NSError *))failure;

@end
