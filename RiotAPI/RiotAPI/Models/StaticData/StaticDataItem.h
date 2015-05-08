//
//  StaticDataItem.h
//  RiotAPI
//
//  Created by James Glenn on 4/30/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import <Realm/Realm.h>

@interface StaticDataItem : RLMObject

@end

// This protocol enables typed collections. i.e.:
// RLMArray<StaticDataItem>
RLM_ARRAY_TYPE(StaticDataItem)
