//
//  StaticChampionSpell.m
//  RiotAPI
//
//  Created by James Glenn on 5/13/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "StaticChampionSpell.h"

@implementation StaticChampionSpell

- (void)setAltimages:(NSArray *)altimages {
    _altimages = [altimages arrayOfObjectsWithClass:[StaticImage class]];
}

- (void)setVars:(NSArray *)vars {
    _vars = [vars arrayOfObjectsWithClass:[StaticSpellVars class]];
}

@end
