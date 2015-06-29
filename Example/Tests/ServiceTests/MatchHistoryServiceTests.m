//
//  MatchHistoryServiceTests.m
//  RiotAPI
//
//  Created by James Glenn on 6/18/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseServiceTests.h"

@interface MatchHistoryServiceTests : BaseServiceTests

@end

@implementation MatchHistoryServiceTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testMatchHistory {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getMatchHistoryForSummonerID:5908 region:[RGRegion regionWithRiotRegion:RiotRegionNA] success:^(PlayerHistory *history) {
        NSLog(@"History: %@", history);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

- (void)testExtendedMatchHistory {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getMatchHistoryForSummonerID:5908 championIDs:nil rankedQueues:nil beginIndex:0 endIndex:15 region:[RGRegion regionWithRiotRegion:RiotRegionNA] success:^(PlayerHistory *history) {
        NSLog(@"History: %@", history);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

@end
