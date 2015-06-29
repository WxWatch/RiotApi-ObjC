//
//  BaseServiceTests.m
//  RiotAPI
//
//  Created by James Glenn on 6/15/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseServiceTests.h"

@implementation BaseServiceTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    [[RiotAPIController sharedController] initializeWithAPIKey:@"81decb1a-dbcd-44d0-8e82-f6eee7d917a8"];
    self.controller = [RiotAPIController sharedController];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    self.controller = nil;
    [super tearDown];
}

@end
