//
//  StaticDataServiceTests.m
//  RiotAPI
//
//  Created by James Glenn on 6/20/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseServiceTests.h"

@interface StaticDataServiceTests : BaseServiceTests

@end

@implementation StaticDataServiceTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testChampions {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getStaticChampionsForRegion:[RGRegion regionWithRiotRegion:RiotRegionNA] success:^(StaticChampionList *list) {
        NSLog(@"Champions: %@", list);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

- (void)testChampions2 {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getStaticChampionsWithLocale:nil version:nil dataById:NO champData:@"all" region:[RGRegion regionWithRiotRegion:RiotRegionNA] success:^(StaticChampionList *list) {
        NSLog(@"Champions: %@", list);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

@end
