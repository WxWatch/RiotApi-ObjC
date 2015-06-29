//
//  ParticipantStats.h
//  RiotAPI
//
//  Created by James Glenn on 5/12/15.
//  Copyright (c) 2015 James Glenn. All rights reserved.
//

#import "BaseObject.h"

@interface ParticipantStats : BaseObject

@property (nonatomic, assign) long assists;
@property (nonatomic, assign) long champLevel;
@property (nonatomic, assign) long combatPlayerScore;
@property (nonatomic, assign) long deaths;
@property (nonatomic, assign) long doubleKills;
@property (nonatomic, assign) BOOL firstBloodAssist;
@property (nonatomic, assign) BOOL firstBloodKill;
@property (nonatomic, assign) BOOL firstInhibitorAssist;
@property (nonatomic, assign) BOOL firstInhibitorKill;
@property (nonatomic, assign) BOOL firstTowerAssist;
@property (nonatomic, assign) BOOL firstTowerKill;
@property (nonatomic, assign) long goldEarned;
@property (nonatomic, assign) long goldSpent;
@property (nonatomic, assign) long inhibitorKills;
@property (nonatomic, assign) long item0;
@property (nonatomic, assign) long item1;
@property (nonatomic, assign) long item2;
@property (nonatomic, assign) long item3;
@property (nonatomic, assign) long item4;
@property (nonatomic, assign) long item5;
@property (nonatomic, assign) long item6;
@property (nonatomic, assign) long killingSprees;
@property (nonatomic, assign) long kills;
@property (nonatomic, assign) long largestCriticalStrike;
@property (nonatomic, assign) long largestKillingSpree;
@property (nonatomic, assign) long largestMultiKill;
@property (nonatomic, assign) long magicDamageDealt;
@property (nonatomic, assign) long magicDamageDealtToChampions;
@property (nonatomic, assign) long magicDamageTaken;
@property (nonatomic, assign) long minionsKilled;
@property (nonatomic, assign) long neutralMinionsKilled;
@property (nonatomic, assign) long neutralMinionsKilledEnemyJungle;
@property (nonatomic, assign) long neutralMinionsKilledTeamJungle;
@property (nonatomic, assign) long nodeCapture;
@property (nonatomic, assign) long nodeCaptureAssist;
@property (nonatomic, assign) long nodeNeutralize;
@property (nonatomic, assign) long nodeNeutralizeAssist;
@property (nonatomic, assign) long objectivePlayerScore;
@property (nonatomic, assign) long pentaKills;
@property (nonatomic, assign) long physicalDamageDealt;
@property (nonatomic, assign) long physicalDamageDealtToChampions;
@property (nonatomic, assign) long physicalDamageTaken;
@property (nonatomic, assign) long quadraKills;
@property (nonatomic, assign) long sightWardsBoughtInGame;
@property (nonatomic, assign) long teamObjective;
@property (nonatomic, assign) long totalDamageDealt;
@property (nonatomic, assign) long totalDamageDealtToChampions;
@property (nonatomic, assign) long totalDamageTaken;
@property (nonatomic, assign) long totalHeal;
@property (nonatomic, assign) long totalPlayerScore;
@property (nonatomic, assign) long totalScoreRank;
@property (nonatomic, assign) long totalTimeCrowdControlDealt;
@property (nonatomic, assign) long totalUnitsHealed;
@property (nonatomic, assign) long towerKills;
@property (nonatomic, assign) long tripleKills;
@property (nonatomic, assign) long trueDamageDealt;
@property (nonatomic, assign) long trueDamageDealtToChampions;
@property (nonatomic, assign) long trueDamageTaken;
@property (nonatomic, assign) long unrealKills;
@property (nonatomic, assign) long visionWardsBoughtInGame;
@property (nonatomic, assign) long wardsKilled;
@property (nonatomic, assign) long wardsPlaced;
@property (nonatomic, assign) BOOL winner;

@end
