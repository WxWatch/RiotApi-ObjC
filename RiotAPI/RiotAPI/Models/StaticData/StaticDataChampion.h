//
//  StaticDataChampion.h
//  RiotAPI
//
//  Created by James Glenn on 4/30/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import <Realm/Realm.h>
#import "Shared.h"

/**
 *  This object contains champion spell data.
 */
@interface ChampionSpell : RLMObject
@end

/**
 *  This object contains champion information.
 */
@interface Info : RLMObject
@end
RLM_ARRAY_TYPE(Info)

/**
 *  This object contains champion passive data.
 */
@interface Passive : RLMObject
@end
RLM_ARRAY_TYPE(Passive)

/**
 *  This object contains champion recommended data.
 */
@interface Recommended : RLMObject
@end

/**
 *  This object contains champion skin data.
 */
@interface Skin : RLMObject
@end
RLM_ARRAY_TYPE(Skin)

/**
 *  This object contains champion stats data.
 */
@interface Stats : RLMObject
@end
RLM_ARRAY_TYPE(Stats)

/**
 *  This object contains champion level tip data.
 */
@interface LevelTip : RLMObject
@end
RLM_ARRAY_TYPE(LevelTip)

/**
 *  This object contains spell vars data.
 */
@interface SpellVars : RLMObject
@end
RLM_ARRAY_TYPE(SpellVars)

/**
 *  This object contains champion recommended block data.
 */
@interface Block : RLMObject
@end
RLM_ARRAY_TYPE(Block)

/**
 *  This object contains champion recommended block item data.
 */
@interface BlockItem : RLMObject
@end
RLM_ARRAY_TYPE(BlockItem)

/**
 *  This object contains champion list data.
 */
@interface ChampionList : RLMObject
@property NSDictionary *data;
@property NSString *format;
@property NSDictionary *keys;
@property NSString *type;
@property NSString *version;
@end
RLM_ARRAY_TYPE(ChampionList)

RLM_ARRAY_TYPE(Recommended)
RLM_ARRAY_TYPE(ChampionSpell)

/**
 *  This object contains champion data.
 */
@interface Champion : RLMObject
@property NSArray *allytips;
@property NSString *blurb;
@property NSArray *enemytips;
@property NSInteger id;
@property Image *image;
@property Info *info;
@property NSString *key;
@property NSString *lore;
@property NSString *name;
@property NSString *partype;
@property Passive *passive;
@property RLMArray<Recommended> *recommended;
@property RLMArray<Skin> *skins;
@property RLMArray<ChampionSpell> *spells;
@property Stats *stats;
@property NSArray *tags;
@property NSString *title;
@end
RLM_ARRAY_TYPE(Champion)
