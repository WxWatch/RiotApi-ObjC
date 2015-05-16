//
//  RiotAPITests.m
//  RiotAPITests
//
//  Created by James Glenn on 5/11/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "SummonerMastery.h"
#import "BaseService.h"
#import "Summoner.h"

@interface RiotAPITests : XCTestCase

@end

@implementation RiotAPITests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSummonerMastery {
    NSDictionary *dict = @{ @"id": @123,
                            @"rank": @4 };
    
    SummonerMastery *mastery = [[SummonerMastery alloc] init];
    [mastery setValuesForKeysWithDictionary:dict];
    XCTAssert(mastery);
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testNetwork {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Network Request"];
    [[BaseService new] fireServiceWithCompletion:^(void) {
        [expectation fulfill];
    }];
    [self waitForExpectationsWithTimeout:10.0 handler:nil];
}

@end
