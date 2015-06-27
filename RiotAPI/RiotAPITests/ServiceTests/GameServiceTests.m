//
//  GameServiceTests.m
//  RiotAPI
//
//  Created by James Glenn on 6/15/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BaseServiceTests.h"

@interface GameServiceTests : BaseServiceTests

@end

@implementation GameServiceTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testRecent {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getRecentGamesForSummonerID:5908 region:[RGRegion regionWithRiotRegion:RiotRegionNA] success:^(RecentGames *recent) {
        NSLog(@"Recent: %@", recent);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

@end
