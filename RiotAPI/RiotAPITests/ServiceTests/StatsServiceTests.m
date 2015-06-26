//
//  StatsServiceTests.m
//  RiotAPI
//
//  Created by James Glenn on 6/18/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseServiceTests.h"

@interface StatsServiceTests : BaseServiceTests

@end

@implementation StatsServiceTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testRanked {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getRankedStatsForSummonerID:5908 withAPIKey:nil region:[RGRegion regionWithRiotRegion:RiotRegionNA] success:^(RankedStats *stats) {
        NSLog(@"Stats: %@", stats);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

- (void)testRanked2 {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getRankedStatsForSummonerID:5908 season:@"SEASON2015" withAPIKey:nil region:[RGRegion regionWithRiotRegion:RiotRegionNA] success:^(RankedStats *stats) {
        NSLog(@"Stats: %@", stats);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

- (void)testSummary {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getSummaryStatsForSummonerID:5908 season:@"SEASON2015" withAPIKey:nil region:[RGRegion regionWithRiotRegion:RiotRegionNA] success:^(PlayerStatsSummaryList *stats) {
        NSLog(@"Stats: %@", stats);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

- (void)testSummary2 {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getSummaryStatsForSummonerID:5908 withAPIKey:nil region:[RGRegion regionWithRiotRegion:RiotRegionNA] success:^(PlayerStatsSummaryList *stats) {
        NSLog(@"Stats: %@", stats);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

@end
