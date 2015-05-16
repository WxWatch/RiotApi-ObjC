//
//  SummonerModelTests.m
//  RiotAPI
//
//  Created by James Glenn on 5/15/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Summoner.h"

@interface SummonerModelTests : XCTestCase

@end

@implementation SummonerModelTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    [NSBundle bundleForClass:[self class]];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    Summoner *summoner = [Summoner new];
    
    XCTAssert(summoner);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
