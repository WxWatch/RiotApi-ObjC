//
//  StaticChampion.m
//  RiotAPI
//
//  Created by James Glenn on 5/13/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "StaticChampion.h"
#import "NSArray+Utilities.h"

@implementation StaticChampion

- (void)setRecommended:(NSArray *)recommended {
    _recommended = [recommended arrayOfObjectsWithClass:[StaticRecommended class]];
}

- (void)setSkins:(NSArray *)skins {
    _skins = [skins arrayOfObjectsWithClass:[StaticSkin class]];
}

- (void)setSpells:(NSArray *)spells {
    _spells = [spells arrayOfObjectsWithClass:[StaticChampionSpell class]];
}

@end
