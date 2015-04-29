//
//  Shared.h
//  RiotAPI
//
//  Created by James Glenn on 4/29/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import <Realm/Realm.h>

@interface Image : RLMObject
@property NSString *full;
@property NSString *group;
@property NSInteger h;
@property NSString *sprite;
@property NSInteger w;
@property NSInteger x;
@property NSInteger y;
@end

RLM_ARRAY_TYPE(Image)

