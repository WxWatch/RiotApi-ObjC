//
//  GameTests.m
//  RiotAPI
//
//  Created by James Glenn on 5/16/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "RecentGames.h"

@interface GameTests : XCTestCase
@property (nonatomic, strong) NSDictionary *dict;
@end

@implementation GameTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    NSString *path = [[NSBundle bundleForClass:[self class]] pathForResource:@"Game" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    self.dict = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    RecentGames *games = [RecentGames new];
    [games setValuesForKeysWithDictionary:self.dict];
    XCTAssert(games);
}

@end
