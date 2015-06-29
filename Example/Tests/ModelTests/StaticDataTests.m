//
//  StaticDataTests.m
//  RiotAPI
//
//  Created by James Glenn on 5/16/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "StaticChampionList.h"
#import "StaticItemList.h"
#import "StaticMapData.h"
#import "StaticMasteryList.h"
#import "StaticRealm.h"
#import "StaticRuneList.h"
#import "StaticSummonerSpellList.h"

@interface StaticDataTests : XCTestCase

@end

@implementation StaticDataTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (NSDictionary*)getJSONDict:(NSString*)resourceName {
    NSString *path = [[NSBundle bundleForClass:[self class]] pathForResource:resourceName ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    
    return dict;
}

- (void)testChampion {
    NSDictionary *dict = [self getJSONDict:@"Static-Champion"];
    StaticChampionList *list = [StaticChampionList new];
    [list setValuesForKeysWithDictionary:dict];
    XCTAssert(list);
}

- (void)testItem {
    NSDictionary *dict = [self getJSONDict:@"Static-Item"];
    StaticItemList *list = [StaticItemList new];
    [list setValuesForKeysWithDictionary:dict];
    XCTAssert(list);
}

- (void)testMap {
    NSDictionary *dict = [self getJSONDict:@"Static-Map"];
    StaticMapData *map = [StaticMapData new];
    [map setValuesForKeysWithDictionary:dict];
    XCTAssert(map);
}

- (void)testMastery {
    NSDictionary *dict = [self getJSONDict:@"Static-Mastery"];
    StaticMasteryList *list = [StaticMasteryList new];
    [list setValuesForKeysWithDictionary:dict];
    XCTAssert(list);
}

- (void)testRealm {
    NSDictionary *dict = [self getJSONDict:@"Static-Realm"];
    StaticRealm *realm = [StaticRealm new];
    [realm setValuesForKeysWithDictionary:dict];
    XCTAssert(realm);
}

- (void)testRune {
    NSDictionary *dict = [self getJSONDict:@"Static-Rune"];
    StaticRuneList *list = [StaticRuneList new];
    [list setValuesForKeysWithDictionary:dict];
    XCTAssert(list);
}

- (void)testSummonerSpell {
    NSDictionary *dict = [self getJSONDict:@"Static-SummonerSpell"];
    StaticSummonerSpellList *list = [StaticSummonerSpellList new];
    [list setValuesForKeysWithDictionary:dict];
    XCTAssert(list);
}

@end
