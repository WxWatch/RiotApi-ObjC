//
//  StatsTests.m
//  RiotAPI
//
//  Created by James Glenn on 5/16/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "RankedStats.h"
#import "PlayerStatsSummaryList.h"

@interface StatsTests : XCTestCase

@end

@implementation StatsTests

- (NSDictionary*)getJSONDict:(NSString*)resourceName {
    NSString *path = [[NSBundle bundleForClass:[self class]] pathForResource:resourceName ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    
    return dict;
}

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testRanked {
    NSDictionary *dict = [self getJSONDict:@"Stats-Ranked"];
    RankedStats *stats = [RankedStats new];
    [stats setValuesForKeysWithDictionary:dict];
    XCTAssert(stats);
}

- (void)testSummary {
    NSDictionary *dict = [self getJSONDict:@"Stats-Summary"];
    PlayerStatsSummaryList *list = [PlayerStatsSummaryList new];
    [list setValuesForKeysWithDictionary:dict];
    XCTAssert(list);
}

@end
