//
//  TeamServiceTests.m
//  RiotAPI
//
//  Created by James Glenn on 6/19/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseServiceTests.h"

@interface TeamServiceTests : BaseServiceTests

@end

@implementation TeamServiceTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testTeamsFromSummoners {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getTeamsForSummonerIDs:@[ @5908 ] withAPIKey:nil region:[RGRegion regionWithRiotRegion:RiotRegionNA] success:^(NSDictionary *teams) {
        NSLog(@"Teams: %@", teams);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

- (void)testTeamsFromTeam {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getTeamsForTeamIDs:@[ @"TEAM-8fc55200-89cd-11e1-b3f5-782bcb4d0bb2" ] withAPIKey:nil region:[RGRegion regionWithRiotRegion:RiotRegionNA] success:^(NSDictionary *teams) {
        NSLog(@"Teams: %@", teams);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

@end
