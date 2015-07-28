//
//  MatchReference.h
//  Pods
//
//  Created by James Glenn on 7/28/15.
//
//

#import "BaseObject.h"

@interface MatchReference : BaseObject

@property (nonatomic, assign) long champion;
@property (nonatomic, strong) NSString *lane;
@property (nonatomic, assign) long matchId;
@property (nonatomic, strong) NSString *platformId;
@property (nonatomic, strong) NSString *queue;
@property (nonatomic, strong) NSString *role;
@property (nonatomic, strong) NSString *season;
@property (nonatomic, assign) long timestamp;

@end
