//
//  BaseService.m
//  RiotAPI
//
//  Created by James Glenn on 5/15/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseService.h"
#import "MasteryPages.h"

@implementation BaseService

- (void)fireServiceWithEndpoint:(Endpoint *)endpoint success:(void (^)())success failure:(void (^)(NSError *))error {

}

- (void)fireServiceWithCompletion:(void (^)())completion {
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];

    [manager GET:@"localhost" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"Response: %@", responseObject);
        for (NSString *key in responseObject) {
            NSDictionary *dict = responseObject[key];
            MasteryPages *summoner = [MasteryPages new];
            [summoner setValuesForKeysWithDictionary:dict];
            
            for (MasteryPage *page in summoner.pages) {
                NSLog(@"Page: %@", page.name);
            }
        }
        completion();
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"FAILURE");
        completion();
    }];
}

@end
