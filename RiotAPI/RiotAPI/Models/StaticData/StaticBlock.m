//
//  StaticBlock.m
//  RiotAPI
//
//  Created by James Glenn on 5/13/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "StaticBlock.h"
#import "NSArray+Utilities.h"

@implementation StaticBlock

- (void)setItems:(NSArray *)items {
    _items = [items arrayOfObjectsWithClass:[StaticBlockItem class]];
}

@end
