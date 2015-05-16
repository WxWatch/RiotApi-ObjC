//
//  ChampionTests.m
//  RiotAPI
//
//  Created by James Glenn on 5/16/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MetaChampionList.h"

@interface ChampionTests : XCTestCase
@property (nonatomic, strong) NSDictionary *dict;
@end

@implementation ChampionTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    NSString *path = [[NSBundle bundleForClass:[self class]] pathForResource:@"Champion" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    self.dict = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    MetaChampionList *list = [MetaChampionList new];
    [list setValuesForKeysWithDictionary:self.dict];
    XCTAssert(list);
}

@end
