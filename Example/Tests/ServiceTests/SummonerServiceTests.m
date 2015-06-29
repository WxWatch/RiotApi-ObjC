//
//  SummonerServiceTests.m
//  RiotAPI
//
//  Created by James Glenn on 6/18/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseServiceTests.h"

@interface SummonerServiceTests : BaseServiceTests

@end

@implementation SummonerServiceTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSummonerNames {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getSummonersForSummonerNames:@[ @"Dyrus", @"Bjergsen", @"WxWatch", @"Wild Turtle" ] region:[RGRegion regionWithRiotRegion:RiotRegionNA] success:^(NSDictionary *summoners) {
        NSLog(@"Summoners: %@", summoners);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

- (void)testSummonerIDs {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getSummonersForSummonerIDs:@[ @22511038, @5908, @51575588 ] region:[RGRegion regionWithRiotRegion:RiotRegionNA] success:^(NSDictionary *summoners) {
        NSLog(@"Summoners: %@", [summoners.allValues.firstObject class]);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

- (void)testMasteries {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getSummonerMasteriesForSummonerIDs:@[ @22511038, @5908, @51575588 ] region:[RGRegion regionWithRiotRegion:RiotRegionNA] success:^(NSDictionary *masteries) {
        NSLog(@"Masteries: %@", masteries);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

- (void)testNames {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getSummonerNamesForSummonerIDs:@[ @22511038, @5908, @51575588 ] region:[RGRegion regionWithRiotRegion:RiotRegionNA] success:^(NSDictionary *names) {
        NSLog(@"Names: %@", names);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

@end
