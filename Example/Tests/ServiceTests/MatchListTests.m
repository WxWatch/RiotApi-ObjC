//
//  MatchListTests.m
//  RiotApi
//
//  Created by James Glenn on 7/28/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseServiceTests.h"

@interface MatchListTests : BaseServiceTests

@end

@implementation MatchListTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testMatchList {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getMatchListForSummonerID:5908 region:[RGRegion regionWithRiotRegion:RiotRegionNA] success:^(MatchList *matchList) {
        NSLog(@"List: %@", matchList);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

@end
