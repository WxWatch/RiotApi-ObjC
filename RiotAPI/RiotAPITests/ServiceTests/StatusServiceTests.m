//
//  StatusServiceTests.m
//  RiotAPI
//
//  Created by James Glenn on 6/18/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BaseServiceTests.h"

@interface StatusServiceTests : BaseServiceTests

@end

@implementation StatusServiceTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testShards {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getShardsWithSuccess:^(NSArray *shards) {
        NSLog(@"Shards: %@", shards);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

- (void)testRegionShards {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getShardsForRegion:[RGRegion regionWithRiotRegion:RiotRegionNA] success:^(ShardStatus *shardStatus) {
        NSLog(@"Shard Status: %@", shardStatus);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

@end
