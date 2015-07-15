//
//  ChampionServiceTests.m
//  RiotAPI
//
//  Created by James Glenn on 6/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BaseServiceTests.h"

@interface ChampionServiceTests : BaseServiceTests
@end

@implementation ChampionServiceTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testGetChampions {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getChampionsForRegion:[RGRegion regionWithRiotRegion:RiotRegionNA] success:^(MetaChampionList *list) {
        NSLog(@"List: %@", list);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

- (void)testGetChampionByID {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getChampionByID:103 region:[RGRegion regionWithRiotRegion:RiotRegionNA] success:^(MetaChampion *champion) {
        NSLog(@"Champion: %@", champion);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

- (void)testGetChampionFTP {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getChampionsFreeToPlay:YES region:[RGRegion regionWithRiotRegion:RiotRegionNA] success:^(MetaChampionList *list) {
        NSLog(@"List: %@", list);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

@end
