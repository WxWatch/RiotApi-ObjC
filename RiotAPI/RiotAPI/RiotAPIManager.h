//
//  RiotAPIManager.h
//  RiotAPI
//
//  Created by James Glenn on 4/29/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

@import Foundation;

@interface RiotAPIManager : NSObject

+ (RiotAPIManager*)sharedInstance;

/**
 *  Performs necessary setup for using the RiotAPI without a Middle-Tier server
 *
 *  @param apiKey Your Riot Games developer API key
 *  @warning This method exposes your API key and is not recommended for any projects intended for public distribution. <br/> The <code>-setupWithMiddleTierBaseURL:</code> method is recommended.
 */
- (void)setupWithAPIKey:(NSString*)apiKey;

/**
 *  Performs necessary setup for using the RiotAPI with a Middle-Tier server
 *
 *  @param baseURL The base URL for your middle-tier API (e.g. https://myserver.com/riotapi/)
 */
- (void)setupWithMiddleTierBaseURL:(NSURL*)baseURL;

@end
