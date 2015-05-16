//
//  SummonerTests.m
//  RiotAPI
//
//  Created by James Glenn on 5/16/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Summoner.h"
#import "MasteryPages.h"
#import "RunePages.h"

@interface SummonerTests : XCTestCase

@end

@implementation SummonerTests

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

- (void)testNames {
    NSDictionary *dict = [self getJSONDict:@"Summoner-Name"];
    NSDictionary *sumDict = dict.allValues.firstObject;
    Summoner *sum = [Summoner new];
    [sum setValuesForKeysWithDictionary:sumDict];
    XCTAssert(sum);
}

- (void)testMasteries {
    NSDictionary *dict = [self getJSONDict:@"Summoner-Masteries"];
    NSDictionary *pagesDict = dict.allValues.firstObject;
    MasteryPages *pages = [MasteryPages new];
    [pages setValuesForKeysWithDictionary:pagesDict];
    XCTAssert(pages);
}

- (void)testRunes {
    NSDictionary *dict = [self getJSONDict:@"Summoner-Runes"].allValues.firstObject;
    RunePages *pages = [RunePages new];
    [pages setValuesForKeysWithDictionary:dict];
    XCTAssert(pages);
}

@end
