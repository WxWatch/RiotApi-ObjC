//
//  CurrentGameServiceTests.m
//  RiotAPI
//
//  Created by James Glenn on 6/15/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BaseServiceTests.h"

@interface FeaturedGamesServiceTests : BaseServiceTests
@end

@implementation FeaturedGamesServiceTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testFeaturedGames {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [self.controller getFeaturedGamesWithAPIKey:nil region:[RGRegion regionWithRiotRegion:RiotRegionNA] success:^(FeaturedGames *games) {
        NSLog(@"Featured: %@", games);
        [expectation fulfill];
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}


@end
