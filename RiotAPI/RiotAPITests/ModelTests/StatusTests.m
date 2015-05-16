//
//  StatusTests.m
//  RiotAPI
//
//  Created by James Glenn on 5/16/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Shard.h"
#import "ShardStatus.h"

@interface StatusTests : XCTestCase

@end

@implementation StatusTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (NSDictionary*)getJSONDict:(NSString*)resourceName {
    NSString *path = [[NSBundle bundleForClass:[self class]] pathForResource:resourceName ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    
    return dict;
}

- (void)testShards {
    NSString *path = [[NSBundle bundleForClass:[self class]] pathForResource:@"Status-Shards" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    NSArray *array = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    NSDictionary *dict = array[0];
    
    Shard *shard = [Shard new];
    [shard setValuesForKeysWithDictionary:dict];
    
    XCTAssert(shard);
    
}

- (void)testRegionShards {
    NSDictionary *dict = [self getJSONDict:@"Status-Shard-Region"];
    ShardStatus *status = [ShardStatus new];
    [status setValuesForKeysWithDictionary:dict];
    XCTAssert(status);
}

@end
