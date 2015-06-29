//
//  BaseService.m
//  RiotAPI
//
//  Created by James Glenn on 5/15/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseService.h"
#import "MasteryPages.h"
#import "NSUserDefaults+RiotAPI.h"
#import <Lockbox/Lockbox.h>

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

    BOOL usesCustomURL = [NSUserDefaults usesCustomURL];
    if (!usesCustomURL) {
        [paramDict setObject:[Lockbox stringForKey:@"com.wxwatch.riotapi.apikey"] forKey:@"api_key"];
    }
    
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
    
    NSDictionary *paramDict = nil;
    BOOL usesCustomURL = [NSUserDefaults usesCustomURL];
    if (!usesCustomURL) {
        paramDict = @{ @"api_key": [Lockbox stringForKey:@"com.wxwatch.riotapi.apikey"] };
    }
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:urlString parameters:paramDict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        success(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
    }];
}

- (NSString*)buildURLStringWithRegion:(RGRegion*)region endpoint:(NSString*)endpoint {
    NSString *baseurl = [self buildBaseURLFromRegion:region];
    
    NSString *versionURL = [NSString stringWithFormat:self.versionURL, region.apiParam];
    
    NSString *requestString = [NSString stringWithFormat:@"%@%@%@", baseurl, versionURL, endpoint];
    
    return requestString;
}

- (NSString*)buildBaseURLFromRegion:(RGRegion*)region {
    NSString *baseURL = nil;
    
    BOOL usesCustomURL = [NSUserDefaults usesCustomURL];
    if (usesCustomURL) {
        baseURL = [NSUserDefaults customURLString];
    } else if ([self baseURL]) {
        baseURL = [self baseURL];
    } else {
        baseURL = [self isGlobal] ? @"https://global.api.pvp.net" : [region regionBaseURLString];
    }
    
    return baseURL;
}

- (NSString*)appendArray:(NSArray*)params toURLString:(NSString*)urlString {
    NSMutableString *string = [NSMutableString string];
    for (NSNumber *param in params) {
        if (params.lastObject == param) {
            [string appendString:[param stringValue]];
        } else {
            [string appendFormat:@"%@,", [param stringValue]];
        }
    }
    
    return [NSString stringWithFormat:@"%@%@", urlString, string];
}

- (NSString*)commaSeperatedStringForArray:(NSArray*)array {
    NSMutableString *string = [NSMutableString string];
    for (id param in array) {
        NSString *paramString;
        if ([param isKindOfClass:[NSNumber class]]) {
            paramString = [param stringValue];
        } else {
            paramString = param;
        }

        if (array.lastObject == param) {
            [string appendString:paramString];
        } else {
            [string appendFormat:@"%@,", paramString];
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
