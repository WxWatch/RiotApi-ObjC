//
//  MatchList.h
//  Pods
//
//  Created by James Glenn on 7/28/15.
//
//

#import "BaseObject.h"
#import "MatchReference.h"

@interface MatchList : BaseObject

@property (nonatomic, assign) NSInteger endIndex;
@property (nonatomic, strong) NSArray *matches;
@property (nonatomic, assign) NSInteger startIndex;
@property (nonatomic, assign) NSInteger totalGames;

@end
