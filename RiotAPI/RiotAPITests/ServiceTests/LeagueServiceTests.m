//
//  LeagueServiceTests.m
//  RiotAPI
//
//  Created by James Glenn on 6/15/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseServiceTests.h"

@interface LeagueServiceTests : BaseServiceTests

@end

@implementation LeagueServiceTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testLeagueBySummoner {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getLeaguesForSummonerIDs:@[ @(5908) ] region:[RGRegion regionWithRiotRegion:RiotRegionNA] success:^(NSDictionary *leagues) {
        NSLog(@"Leagues: %@", leagues);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

- (void)testLeagueEntriesBySummoner {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getLeagueEntriesForSummonerIDs:@[ @(5908) ] region:[RGRegion regionWithRiotRegion:RiotRegionNA] success:^(NSDictionary *entries) {
        NSLog(@"Entries: %@", entries);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

- (void)testLeagueByTeam {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getLeaguesForTeamIDs:@[ @0 ] region:[RGRegion regionWithRiotRegion:RiotRegionNA] success:^(NSDictionary *leagues) {
        NSLog(@"Leagues: %@", leagues);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

- (void)testLeagueEntriesByTeam {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getLeagueEntriesForTeamIDs:@[ @0 ] region:[RGRegion regionWithRiotRegion:RiotRegionNA] success:^(NSDictionary *entries) {
        NSLog(@"Entries: %@", entries);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

- (void)testChallenger {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getChallengerLeagueWithQueueType:@"RANKED_SOLO_5x5" region:[RGRegion regionWithRiotRegion:RiotRegionNA] success:^(League *challenger) {
        NSLog(@"Challenger: %@", challenger);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

- (void)testMaster {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getMasterLeagueWithQueueType:@"RANKED_SOLO_5x5" region:[RGRegion regionWithRiotRegion:RiotRegionNA] success:^(League *master) {
        NSLog(@"Master: %@", master);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

@end
