//
//  CurrentGameServiceTests.m
//  RiotAPI
//
//  Created by James Glenn on 6/15/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BaseServiceTests.h"

@interface CurrentGameServiceTests : BaseServiceTests
@end

@implementation CurrentGameServiceTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testCurrentGame {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getCurrentGameForSummonerID:8010 region:[RGRegion regionWithRiotRegion:RiotRegionNA] success:^(CurrentGameInfo *game) {
        NSLog(@"Current Game: %@", game);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Failure: %@", error);
        [expectation fulfill];
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}


@end
