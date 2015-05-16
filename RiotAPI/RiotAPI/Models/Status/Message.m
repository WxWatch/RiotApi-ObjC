//
//  Message.m
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "Message.h"
#import "NSArray+Utilities.h"

@implementation Message

- (void)setTranslations:(NSArray *)translations {
    _translations = [translations arrayOfObjectsWithClass:[Translation class]];
}

@end
