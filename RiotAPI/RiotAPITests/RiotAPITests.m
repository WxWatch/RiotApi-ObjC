//
//  RiotAPITests.m
//  RiotAPITests
//
//  Created by James Glenn on 4/29/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "StaticDataChampion.h"

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

- (void)testExample {
    // This is an example of a functional test case.
    NSString *json = @"{\"id\":266,\"title\":\"the Darkin Blade\",\"name\":\"Aatrox\",\"allytips\":[\"Avoid engaging in a fight with low health unless your Blood Well is full so that you regain enough health to continue fighting.\",\"Building Life Steal can be very potent on Aatrox to help compensate for his health costs.\",\"Massacre is great at turning the tide of a battle. Make sure to use it at the right moment to maximize its benefits.\"],\"key\":\"Aatrox\"}";
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:0 error:nil];
    
    RLMRealm *realm = [RLMRealm defaultRealm];
    [realm beginWriteTransaction];
    Champion *champ = [Champion createInDefaultRealmWithObject:jsonDict];
    [champ setAllytips:jsonDict[@"allytips"]];
    [realm commitWriteTransaction];
    
    NSLog(@"%@", champ.allytips);
    
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
