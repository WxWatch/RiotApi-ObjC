//
//  StaticImage.h
//  RiotAPI
//
//  Created by James Glenn on 5/13/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@interface StaticImage : BaseObject

@property (nonatomic, strong) NSString *full;
@property (nonatomic, strong) NSString *group;
@property (nonatomic, assign) NSInteger h;
@property (nonatomic, strong) NSString *sprite;
@property (nonatomic, assign) NSInteger w;
@property (nonatomic, assign) NSInteger x;
@property (nonatomic, assign) NSInteger y;

@end
