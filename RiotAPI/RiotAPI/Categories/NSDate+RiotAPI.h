//
//  NSDate+Utilities.h
//  RiotAPI
//
//  Created by James Glenn on 5/11/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (RiotAPI)

+ (instancetype)dateWithMillisecondsSince1970:(long)milliseconds;

@end
