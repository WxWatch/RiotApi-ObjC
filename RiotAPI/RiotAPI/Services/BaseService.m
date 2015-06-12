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


// https://na.api.pvp.net/api/lol/na/v1.2/champion?freeToPlay=true&api_key=
// https://na.api.pvp.net - RegionBaseURL
// /api/lol/na/v1.2/ - APIVersionURL
// /champion - EndpointURL
// ?freetoplay=true - Parameters

- (void)fireServiceWithRegion:(RGRegion *)region endpoint:(NSString*)endpoint params:(NSDictionary *)params success:(void (^)(id response))success failure:(void (^)(NSError *error))failure {
    NSString *urlString = [self buildURLStringWithRegion:region endpoint:endpoint];
    
    NSMutableDictionary *paramDict = [NSMutableDictionary dictionary];
    if (params) {
        paramDict = [params mutableCopy];
    }

    [paramDict setObject:@"" forKey:@"api_key"];
    
    NSLog(@"%@", paramDict);
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:urlString parameters:paramDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@", operation.request.URL.absoluteString);
        success(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@", operation.request.URL.absoluteString);
        failure(error);
    }];
}

- (void)fireServiceWithRegion:(RGRegion *)region endpoint:(NSString*)endpoint paramArray:(NSArray *)params success:(void (^)(id response))success failure:(void (^)(NSError *error))failure {
    NSString *urlString = [self buildURLStringWithRegion:region endpoint:endpoint];
    urlString = [self appendArray:params toURLString:urlString];
    
    NSDictionary *paramDict = @{ @"api_key": @"" };
        
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:urlString parameters:paramDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        success(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
    }];
}

- (NSString*)buildURLStringWithRegion:(RGRegion*)region endpoint:(NSString*)endpoint {
    NSString *baseurl = [self isGlobal] ? @"https://global.api.pvp.net" : [region regionBaseURLString];
    if ([self baseURL]) {
        baseurl = [self baseURL];
    }
    
    NSString *versionURL = [NSString stringWithFormat:self.versionURL, region.apiParam];
    
    NSString *requestString = [NSString stringWithFormat:@"%@%@%@", baseurl, versionURL, endpoint];
    
    return requestString;
}

- (NSString*)appendArray:(NSArray*)params toURLString:(NSString*)urlString {
    NSMutableString *string = [NSMutableString string];
    for (NSString *param in params) {
        if (params.lastObject == param) {
            [string appendString:param];
        } else {
            [string appendFormat:@"%@,", param];
        }
    }
    
    return [NSString stringWithFormat:@"%@%@", urlString, string];
}

- (NSString*)commaSeperatedStringForArray:(NSArray*)array {
    NSMutableString *string = [NSMutableString string];
    for (NSString *param in array) {
        if (array.lastObject == param) {
            [string appendString:param];
        } else {
            [string appendFormat:@"%@,", param];
        }
    }
    
    return [NSString stringWithString:string];
}

- (NSString *)sanitizeBoolean:(BOOL)boolean {
    if (boolean) {
        return @"true";
    } else {
        return @"false";
    }
}

- (NSString *)versionURL {
    return @"";
}

- (BOOL)isGlobal {
    return NO;
}

- (NSString *)baseURL {
    return nil;
}

@end
