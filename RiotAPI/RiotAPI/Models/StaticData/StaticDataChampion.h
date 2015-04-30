//
//  StaticDataChampion.h
//  RiotAPI
//
//  Created by James Glenn on 4/30/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import <Realm/Realm.h>

/**
 *  This object contains champion list data.
 */
@interface ChampionList : RLMObject
@end
RLM_ARRAY_TYPE(ChampionList)

/**
 *  This object contains champion data.
 */
@interface Champion : RLMObject
@end
RLM_ARRAY_TYPE(Champion)

/**
 *  This object contains champion spell data.
 */
@interface ChampionSpell : RLMObject
@end
RLM_ARRAY_TYPE(ChampionSpell)

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
RLM_ARRAY_TYPE(Recommended)

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
