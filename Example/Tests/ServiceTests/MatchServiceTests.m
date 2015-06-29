//
//  MatchServiceTests.m
//  RiotAPI
//
//  Created by James Glenn on 6/18/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseServiceTests.h"

@interface MatchServiceTests : BaseServiceTests

@end

@implementation MatchServiceTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testMatch {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getMatchForMatchID:1858198944 region:[RGRegion regionWithRiotRegion:RiotRegionNA] success:^(MatchDetail *detail) {
        NSLog(@"Match: %@", detail);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

- (void)testMatchTimeline {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getMatchForMatchID:1858198944 includeTimeline:YES region:[RGRegion regionWithRiotRegion:RiotRegionNA] success:^(MatchDetail *detail) {
        NSLog(@"Match: %@", detail);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

@end
