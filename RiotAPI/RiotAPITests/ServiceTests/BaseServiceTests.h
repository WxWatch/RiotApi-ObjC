//
//  BaseServiceTests.h
//  RiotAPI
//
//  Created by James Glenn on 6/15/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "RiotAPIController.h"

@interface BaseServiceTests : XCTestCase
@property (nonatomic, strong) RiotAPIController *controller;

- (void)setUp;
- (void)tearDown;

@end

