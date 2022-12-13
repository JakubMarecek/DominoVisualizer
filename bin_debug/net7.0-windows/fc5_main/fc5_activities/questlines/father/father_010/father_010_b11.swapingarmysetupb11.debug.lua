LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/father/father_010/father_010_b11.domino
-- User graph: SwapingArmySetupB11
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection /> 
]]--
-- *** END OF SCRIPT INPUT REFLECTION ***


export = {
};


function export:LuaDependencies()
    local luaDepTable = {
    };
    return luaDepTable;
end;

function export:Create(cboxRes)
    if (cboxRes:ShouldLoadResources() == true) then
        -- External box dependencies
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/NoWeaponMode_v3.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PawnInvincibleState_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/TaggingModifier_v3.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B11.AllyAICanRevivePlayerB11.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B11.FatherRespawnSetupB11.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B11.SwapingArmyMoveB11.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3840929043.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4021279947.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2332147828.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1371954593.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2545313881.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2515946790.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1312296801.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B11.SwapingArmySetupB11.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Disabled",
                delayed = false,
            },
            [1] = {
                name = "Enabled",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "CharacterId",
                type = "genericdb",
            },
            [1] = {
                name = "Marker",
                type = "entity",
            },
            [2] = {
                name = "ObjectiveId",
                type = "oasis",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "CompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "TargetGroup",
                type = "group",
            },
            [3] = {
                name = "Time",
                type = "float",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [1] = {
                name = "Success",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [1] = {
                name = "Progress",
                type = "int",
            },
            [2] = {
                name = "ProgressId",
                type = "int",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/SetContextualStrategy.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetContextualStrategy",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "ContextualStrategy",
                type = "entity",
            },
            [1] = {
                name = "Group",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/SpawnAI.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "Spawn",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Fail",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Spawned",
                delayed = true,
            },
            [3] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "EntitySpawner",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "mercsSpawned",
                type = "list",
            },
            [1] = {
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 2,
    };
    metadataTable[GetPathID("Domino/System/CompareIntegers.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_eq_B",
                delayed = false,
            },
            [1] = {
                name = "A_ge_B",
                delayed = false,
            },
            [2] = {
                name = "A_gt_B",
                delayed = false,
            },
            [3] = {
                name = "A_le_B",
                delayed = false,
            },
            [4] = {
                name = "A_lt_B",
                delayed = false,
            },
            [5] = {
                name = "A_ne_B",
                delayed = false,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "A",
                type = "int",
            },
            [1] = {
                name = "B",
                type = "int",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Delay_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Pause",
            },
            [1] = {
                name = "Resume",
            },
            [2] = {
                name = "Start",
            },
            [3] = {
                name = "Stop",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "LoopingEnded",
                delayed = true,
            },
            [1] = {
                name = "Paused",
                delayed = false,
            },
            [2] = {
                name = "Resumed",
                delayed = false,
            },
            [3] = {
                name = "Started",
                delayed = false,
            },
            [4] = {
                name = "Stopped",
                delayed = false,
            },
            [5] = {
                name = "TimeElapsed",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "loop",
                type = "bool",
            },
            [1] = {
                name = "nbLoop",
                type = "int",
            },
            [2] = {
                name = "seconds",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "currentLoop",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/GroupSizeListener_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Disabled",
                delayed = false,
            },
            [1] = {
                name = "Enabled",
                delayed = false,
            },
            [2] = {
                name = "MemberAdded",
                delayed = true,
            },
            [3] = {
                name = "MemberRemoved",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "group",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "memberCount",
                type = "int",
            },
        },
        dataOutCount = 2,
    };
    metadataTable[GetPathID("Domino/System/HealthListener_v6.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Critical",
                delayed = true,
            },
            [1] = {
                name = "Damaged",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Downed",
                delayed = true,
            },
            [4] = {
                name = "Enabled",
                delayed = false,
            },
            [5] = {
                name = "Healed",
                delayed = true,
            },
            [6] = {
                name = "Killed",
                delayed = true,
            },
            [7] = {
                name = "Revived",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "AutoDisable",
                type = "bool",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "current",
                type = "float",
            },
            [1] = {
                name = "delta",
                type = "float",
            },
            [2] = {
                name = "emitterName",
                type = "string",
            },
            [3] = {
                name = "hitLocation",
                type = "string",
            },
            [4] = {
                name = "instigator",
                type = "entity",
            },
            [5] = {
                name = "sourceType",
                type = "string",
            },
            [6] = {
                name = "victim",
                type = "entity",
            },
        },
        dataOutCount = 7,
    };
    metadataTable[GetPathID("Domino/System/IntegerArithmetics_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Abs",
            },
            [1] = {
                name = "Add",
            },
            [2] = {
                name = "Div",
            },
            [3] = {
                name = "Exp",
            },
            [4] = {
                name = "Max",
            },
            [5] = {
                name = "Min",
            },
            [6] = {
                name = "Mod",
            },
            [7] = {
                name = "Mul",
            },
            [8] = {
                name = "Sub",
            },
        },
        controlInCount = 9,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "A",
                type = "int",
            },
            [1] = {
                name = "B",
                type = "int",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/MultipleAND_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Condition",
                dynamicType = 1,
            },
            [1] = {
                name = "Reset",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "AutoReset",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/NoWeaponMode_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Off",
            },
            [1] = {
                name = "On",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnEnter",
                delayed = false,
            },
            [1] = {
                name = "OnLeave",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "pawns",
                type = "group",
            },
            [1] = {
                name = "useAnims",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/OnceOnly_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
                dynamicType = 1,
            },
            [1] = {
                name = "Reset",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Out",
                dynamicType = 1,
                delayed = false,
            },
            [1] = {
                name = "ResetOut",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/OutputOrder_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Out",
                dynamicType = 1,
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PawnInvincibleState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetInvincible",
            },
            [1] = {
                name = "UnsetInvincible",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSet",
                delayed = false,
            },
            [1] = {
                name = "OnUnSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PlayDialog_v6.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CancelQueued",
            },
            [1] = {
                name = "PlayDialog",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "FinishedInterrupted",
                delayed = true,
            },
            [2] = {
                name = "QueueCancelled",
                delayed = false,
            },
            [3] = {
                name = "Queued",
                delayed = true,
            },
            [4] = {
                name = "Started",
                delayed = true,
            },
            [5] = {
                name = "StartedPriorityFailed",
                delayed = true,
            },
            [6] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "RelevancyTime",
                type = "float",
            },
            [2] = {
                name = "ReplayIfInterrupted",
                type = "bool",
            },
            [3] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/SimpleNode.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/SoundModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Play",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Pawns",
                type = "group",
            },
            [1] = {
                name = "SoundId",
                type = "Sound",
            },
            [2] = {
                name = "SoundType",
                type = "SoundType",
            },
            [3] = {
                name = "StopFadeOut",
                type = "float",
            },
            [4] = {
                name = "UseSubtitles",
                type = "bool",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/TaggingModifier_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "TagEntity",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Disabled",
                delayed = false,
            },
            [1] = {
                name = "Enabled",
                delayed = false,
            },
            [2] = {
                name = "Tagged",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "Pawns",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B11.AllyAICanRevivePlayerB11.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B11.FatherRespawnSetupB11.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableListener",
            },
            [1] = {
                name = "NormalStart",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "FatherKilled",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B11.SwapingArmyMoveB11.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Play_the_Father_Revive_Dialog",
                delayed = false,
            },
            [1] = {
                name = "Play_the_Player_Revive_Dialog",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "BlissRiverBanks",
                type = "entity",
            },
            [1] = {
                name = "CStoUseForGreenGFH",
                type = "entity",
            },
            [2] = {
                name = "CStoUseForRedGFH",
                type = "entity",
            },
            [3] = {
                name = "GFH",
                type = "entity",
            },
            [4] = {
                name = "MarkerWhenRevive",
                type = "entity",
            },
            [5] = {
                name = "ParticleWhenConverted",
                type = "entity",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "SwapingArmySetupB11";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11";
    self.Out = DummyFunction;
    self.FriendsLeftToBringBackB11 = 0;
    self.box_OnceOnly_v3_43 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|63772596");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = {
            connections = {
                [0] = self.f_box_OnceOnly_v3_43_Out_0,
            },
            count = 1,
        },
    });
    self.box_Delay_v5_20 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|198355481");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_20_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_20_TimeElapsed,
    });
    self.box_NoWeaponMode_v3_48 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|266161048");
    l0:SetConnections({
        -- OnLeave,
        [1] = self.f_box_NoWeaponMode_v3_48_OnLeave,
    });
    self.box_Delay_v5_17 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|367306139");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_17_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_17_TimeElapsed,
    });
    self.box_Delay_v5_53 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|418678529");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_53_TimeElapsed,
    });
    self.box_SwapingArmyMoveB11_11 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B11.SwapingArmyMoveB11.debug.lua");
    l0 = self.box_SwapingArmyMoveB11_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SwapingArmyMoveB11_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|488549392");
    l0:SetConnections({
        -- Play the Player Revive Dialog,
        [1] = self.f_box_SwapingArmyMoveB11_11_Play_the_Player_Revive_Dialog,
    });
    self.box_PlayDialog_v6_40 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|513974864");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_32 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|564516468");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_41 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|606981300");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = {
            connections = {
                [0] = self.f_box_OnceOnly_v3_41_Out_0,
            },
            count = 1,
        },
    });
    self.box_PlayDialog_v6_38 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|656258288");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_33 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|681463533");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = {
            connections = {
                [0] = self.f_box_OnceOnly_v3_33_Out_0,
            },
            count = 1,
        },
    });
    self.box_PlayDialog_v6_42 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|756690515");
    l0:SetConnections({
    });
    self.box_Delay_v5_21 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|761561664");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_21_TimeElapsed,
    });
    self.box_Delay_v5_52 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|868782363");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_52_TimeElapsed,
    });
    self.box_PlayDialog_v6_34 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1112544209");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_35 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1139691667");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = {
            connections = {
                [0] = self.f_box_OnceOnly_v3_35_Out_0,
            },
            count = 1,
        },
    });
    self.box_SwapingArmyMoveB11_1 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B11.SwapingArmyMoveB11.debug.lua");
    l0 = self.box_SwapingArmyMoveB11_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SwapingArmyMoveB11_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1194104794");
    l0:SetConnections({
        -- Play the Father Revive Dialog,
        [0] = self.f_box_SwapingArmyMoveB11_1_Play_the_Father_Revive_Dialog,
        -- Play the Player Revive Dialog,
        [1] = self.f_box_SwapingArmyMoveB11_1_Play_the_Player_Revive_Dialog,
    });
    self.box_Delay_v5_56 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1250530646");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_56_TimeElapsed,
    });
    self.box_HealthListener_v6_47 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1275882644");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_47_Killed,
    });
    self.box_OnceOnly_v3_39 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1550831587");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = {
            connections = {
                [0] = self.f_box_OnceOnly_v3_39_Out_0,
            },
            count = 1,
        },
    });
    self.box_PlayDialog_v6_31 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1618736029");
    l0:SetConnections({
    });
    self.box_AllyAICanRevivePlayerB11_6 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B11.AllyAICanRevivePlayerB11.debug.lua");
    l0 = self.box_AllyAICanRevivePlayerB11_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AllyAICanRevivePlayerB11_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1725627632");
    l0:SetConnections({
    });
    self.box_SwapingArmyMoveB11_2 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B11.SwapingArmyMoveB11.debug.lua");
    l0 = self.box_SwapingArmyMoveB11_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SwapingArmyMoveB11_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1837562677");
    l0:SetConnections({
        -- Play the Father Revive Dialog,
        [0] = self.f_box_SwapingArmyMoveB11_2_Play_the_Father_Revive_Dialog,
        -- Play the Player Revive Dialog,
        [1] = self.f_box_SwapingArmyMoveB11_2_Play_the_Player_Revive_Dialog,
    });
    self.box_Delay_v5_44 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1841256147");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_44_TimeElapsed,
    });
    self.box_FatherRespawnSetupB11_16 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B11.FatherRespawnSetupB11.debug.lua");
    l0 = self.box_FatherRespawnSetupB11_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FatherRespawnSetupB11_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1849583118");
    l0:SetConnections({
        -- FatherKilled,
        [0] = self.f_box_FatherRespawnSetupB11_16_FatherKilled,
    });
    self.box_SpawnAI_19 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1860918032");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_19_Spawned,
    });
    self.box_GroupSizeListener_v5_12 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1909177247");
    l0:SetConnections({
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_12_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_12_MemberRemoved,
    });
    self.box_Delay_v5_28 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|2041719595");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_28_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_28_TimeElapsed,
    });
    self.box_SoundModifier_v2_55 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|2052295471");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_14 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|2102552191");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
        },
        controlOut = {
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MultipleAND_v2_14_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1529121755", "1529121755", "SwapingArmySetupB11", "In", "box_OutputOrder_v2_10.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_18_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SwapingArmyMoveB11_2();
    l0 = self.box_SwapingArmyMoveB11_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|553501158", "553501158", "SwapingArmySetupB11", "box_Simple_Node_18.Out", "box_SwapingArmyMoveB11_2.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0 = self.box_FatherRespawnSetupB11_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|924785369", "924785369", "SwapingArmySetupB11", "box_Simple_Node_18.Out", "box_FatherRespawnSetupB11_16.DisableListener", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableListener
    l0:Exec(0, {
    });
    params = self:OnEnter_box_SwapingArmyMoveB11_11();
    l0 = self.box_SwapingArmyMoveB11_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1405815136", "1405815136", "SwapingArmySetupB11", "box_Simple_Node_18.Out", "box_SwapingArmyMoveB11_11.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_SwapingArmyMoveB11_1();
    l0 = self.box_SwapingArmyMoveB11_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|957856865", "957856865", "SwapingArmySetupB11", "box_Simple_Node_18.Out", "box_SwapingArmyMoveB11_1.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_GroupSizeListener_v5_12();
    l0 = self.box_GroupSizeListener_v5_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1275994822", "1275994822", "SwapingArmySetupB11", "box_Simple_Node_18.Out", "box_GroupSizeListener_v5_12.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_MultipleAND_v2_14();
    l0 = self.box_MultipleAND_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|2085379595", "2085379595", "SwapingArmySetupB11", "box_Simple_Node_18.Out", "box_MultipleAND_v2_14.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_Simple_Node_29_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_14();
    l0 = self.box_MultipleAND_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|447774144", "447774144", "SwapingArmySetupB11", "box_Simple_Node_29.Out", "box_MultipleAND_v2_14.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_SetContextualStrategy_4_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SwapingArmyMoveB11_1();
    l0 = self.box_SwapingArmyMoveB11_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1452320884", "1452320884", "SwapingArmySetupB11", "box_SetContextualStrategy_4.Out", "box_SwapingArmyMoveB11_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_43_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_40();
    l0 = self.box_OnceOnly_v3_43;
    l1 = self.box_PlayDialog_v6_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|154239229", "154239229", "SwapingArmySetupB11", "box_OnceOnly_v3_43.Out", "box_PlayDialog_v6_40.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_4();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|744770788", "744770788", "SwapingArmySetupB11", "box_OutputOrder_v2_3.Out", "box_SetContextualStrategy_4.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_9();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1501284963", "1501284963", "SwapingArmySetupB11", "box_OutputOrder_v2_3.Out", "box_SetContextualStrategy_9.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_17();
    l0 = self.box_Delay_v5_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1861654600", "1861654600", "SwapingArmySetupB11", "box_OutputOrder_v2_3.Out", "box_Delay_v5_17.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_20_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_27();
    l0 = self.box_Delay_v5_20;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|317715031", "317715031", "SwapingArmySetupB11", "box_Delay_v5_20.Started", "box_SetContextualStrategy_27.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_20_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_19();
    l0 = self.box_Delay_v5_20;
    l1 = self.box_SpawnAI_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1601222200", "1601222200", "SwapingArmySetupB11", "box_Delay_v5_20.TimeElapsed", "box_SpawnAI_19.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_NoWeaponMode_v3_48_OnLeave()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = self.box_NoWeaponMode_v3_48;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1991333287", "1991333287", "SwapingArmySetupB11", "box_NoWeaponMode_v3_48.OnLeave", "box_OutputOrder_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_21();
    l0 = self.box_Delay_v5_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|451476357", "451476357", "SwapingArmySetupB11", "box_OutputOrder_v2_10.Out", "box_Delay_v5_21.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_AllyAICanRevivePlayerB11_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|170726136", "170726136", "SwapingArmySetupB11", "box_OutputOrder_v2_10.Out", "box_AllyAICanRevivePlayerB11_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_10_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_FatherRespawnSetupB11_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|613338231", "613338231", "SwapingArmySetupB11", "box_OutputOrder_v2_10.Out", "box_FatherRespawnSetupB11_16.NormalStart", clone:GetLuaBox(), l0:GetLuaBox());
    -- NormalStart
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_10_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_12();
    l0 = self.box_GroupSizeListener_v5_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1040039965", "1040039965", "SwapingArmySetupB11", "box_OutputOrder_v2_10.Out", "box_GroupSizeListener_v5_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_17_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SwapingArmyMoveB11_2();
    l0 = self.box_Delay_v5_17;
    l1 = self.box_SwapingArmyMoveB11_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1686280093", "1686280093", "SwapingArmySetupB11", "box_Delay_v5_17.Started", "box_SwapingArmyMoveB11_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_17_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_23();
    l0 = self.box_Delay_v5_17;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|744897321", "744897321", "SwapingArmySetupB11", "box_Delay_v5_17.TimeElapsed", "box_SetContextualStrategy_23.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_53_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_5();
    l0 = self.box_Delay_v5_53;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|2016076048", "2016076048", "SwapingArmySetupB11", "box_Delay_v5_53.TimeElapsed", "box_SetActivityObjectiveProgress_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SwapingArmyMoveB11_11_Play_the_Player_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB11_11;
    l1 = self.box_OnceOnly_v3_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|767199870", "767199870", "SwapingArmySetupB11", "box_SwapingArmyMoveB11_11.Play the Player Revive Dialog", "box_OnceOnly_v3_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetActivityObjectiveProgress_v2_5_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_15();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|993763417", "993763417", "SwapingArmySetupB11", "box_SetActivityObjectiveProgress_v2_5.Out", "box_Compare_Integers_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_41_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_42();
    l0 = self.box_OnceOnly_v3_41;
    l1 = self.box_PlayDialog_v6_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|871867516", "871867516", "SwapingArmySetupB11", "box_OnceOnly_v3_41.Out", "box_PlayDialog_v6_42.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_IntegerArithmetics_v2_13_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_13_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_53();
    l0 = self.box_Delay_v5_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|915280915", "915280915", "SwapingArmySetupB11", "box_IntegerArithmetics_v2_13.Out", "box_Delay_v5_53.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_33_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_32();
    l0 = self.box_OnceOnly_v3_33;
    l1 = self.box_PlayDialog_v6_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|645071961", "645071961", "SwapingArmySetupB11", "box_OnceOnly_v3_33.Out", "box_PlayDialog_v6_32.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_9_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SwapingArmyMoveB11_11();
    l0 = self.box_SwapingArmyMoveB11_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|2108958508", "2108958508", "SwapingArmySetupB11", "box_SetContextualStrategy_9.Out", "box_SwapingArmyMoveB11_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_21_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_46();
    l0 = self.box_Delay_v5_21;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|521999886", "521999886", "SwapingArmySetupB11", "box_Delay_v5_21.TimeElapsed", "box_SetContextualStrategy_46.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_52_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_NoWeaponMode_v3_48();
    l0 = self.box_Delay_v5_52;
    l1 = self.box_NoWeaponMode_v3_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|166116384", "166116384", "SwapingArmySetupB11", "box_Delay_v5_52.TimeElapsed", "box_NoWeaponMode_v3_48.Off", l0:GetLuaBox(), l1:GetLuaBox());
    -- Off
    l1:Exec(0, params);
end;

function export:f_box_SetContextualStrategy_46_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_50();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1280917218", "1280917218", "SwapingArmySetupB11", "box_SetContextualStrategy_46.Out", "box_TaggingModifier_v3_50.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_37_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_25();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1231204385", "1231204385", "SwapingArmySetupB11", "box_AddActivityObjective_v2_37.Out", "box_ActivityObjectiveMarkerModifier_v3_25.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_49_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnInvincibleState_v2_26();
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|227419403", "227419403", "SwapingArmySetupB11", "box_OutputOrder_v2_49.Out", "box_PawnInvincibleState_v2_26.SetInvincible", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetInvincible
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_49_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_37();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|71929846", "71929846", "SwapingArmySetupB11", "box_OutputOrder_v2_49.Out", "box_AddActivityObjective_v2_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_35_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_34();
    l0 = self.box_OnceOnly_v3_35;
    l1 = self.box_PlayDialog_v6_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|695346874", "695346874", "SwapingArmySetupB11", "box_OnceOnly_v3_35.Out", "box_PlayDialog_v6_34.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_EndActivityObjective_v2_24_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|392002311", "392002311", "SwapingArmySetupB11", "box_EndActivityObjective_v2_24.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_SwapingArmyMoveB11_1_Play_the_Father_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB11_1;
    l1 = self.box_OnceOnly_v3_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|115353341", "115353341", "SwapingArmySetupB11", "box_SwapingArmyMoveB11_1.Play the Father Revive Dialog", "box_OnceOnly_v3_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SwapingArmyMoveB11_1_Play_the_Player_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB11_1;
    l1 = self.box_OnceOnly_v3_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1698595012", "1698595012", "SwapingArmySetupB11", "box_SwapingArmyMoveB11_1.Play the Player Revive Dialog", "box_OnceOnly_v3_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetContextualStrategy_27_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_55();
    l0 = self.box_SoundModifier_v2_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|128163079", "128163079", "SwapingArmySetupB11", "box_SetContextualStrategy_27.Out", "box_SoundModifier_v2_55.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_56_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PawnInvincibleState_v2_57();
    l0 = self.box_Delay_v5_56;
    l1 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|703302439", "703302439", "SwapingArmySetupB11", "box_Delay_v5_56.TimeElapsed", "box_PawnInvincibleState_v2_57.UnsetInvincible", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnsetInvincible
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_47_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_25();
    l0 = self.box_HealthListener_v6_47;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1913363975", "1913363975", "SwapingArmySetupB11", "box_HealthListener_v6_47.Killed", "box_ActivityObjectiveMarkerModifier_v3_25.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_36_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_18();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|224843583", "224843583", "SwapingArmySetupB11", "box_EndActivityObjective_v2_36.Out", "box_Simple_Node_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_39_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_38();
    l0 = self.box_OnceOnly_v3_39;
    l1 = self.box_PlayDialog_v6_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|832706784", "832706784", "SwapingArmySetupB11", "box_OnceOnly_v3_39.Out", "box_PlayDialog_v6_38.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_25_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_24();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1350123577", "1350123577", "SwapingArmySetupB11", "box_ActivityObjectiveMarkerModifier_v3_25.Disabled", "box_EndActivityObjective_v2_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_25_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_47();
    l0 = self.box_HealthListener_v6_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|49131847", "49131847", "SwapingArmySetupB11", "box_ActivityObjectiveMarkerModifier_v3_25.Enabled", "box_HealthListener_v6_47.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IntegerArithmetics_v2_7_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_7_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_8();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|660653137", "660653137", "SwapingArmySetupB11", "box_IntegerArithmetics_v2_7.Out", "box_SetActivityObjectiveProgress_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_15_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_28();
    l0 = self.box_Delay_v5_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|759029508", "759029508", "SwapingArmySetupB11", "box_Compare_Integers_15.A_ge_B", "box_Delay_v5_28.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_TaggingModifier_v3_50_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_50();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|344242090", "344242090", "SwapingArmySetupB11", "box_TaggingModifier_v3_50.Enabled", "box_TaggingModifier_v3_50.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TaggingModifier_v3_50_Tagged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_52();
    l0 = self.box_Delay_v5_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|445106663", "445106663", "SwapingArmySetupB11", "box_TaggingModifier_v3_50.Tagged", "box_Delay_v5_52.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SwapingArmyMoveB11_2_Play_the_Father_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB11_2;
    l1 = self.box_OnceOnly_v3_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|901259314", "901259314", "SwapingArmySetupB11", "box_SwapingArmyMoveB11_2.Play the Father Revive Dialog", "box_OnceOnly_v3_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SwapingArmyMoveB11_2_Play_the_Player_Revive_Dialog()
    local l0, l1;
    l0 = self.box_SwapingArmyMoveB11_2;
    l1 = self.box_OnceOnly_v3_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1406304167", "1406304167", "SwapingArmySetupB11", "box_SwapingArmyMoveB11_2.Play the Player Revive Dialog", "box_OnceOnly_v3_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_44_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_31();
    l0 = self.box_Delay_v5_44;
    l1 = self.box_PlayDialog_v6_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|745603554", "745603554", "SwapingArmySetupB11", "box_Delay_v5_44.TimeElapsed", "box_PlayDialog_v6_31.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_FatherRespawnSetupB11_16_FatherKilled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_29();
    l0 = self.box_FatherRespawnSetupB11_16;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1604288063", "1604288063", "SwapingArmySetupB11", "box_FatherRespawnSetupB11_16.FatherKilled", "box_Simple_Node_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_19_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_49();
    l0 = self.box_SpawnAI_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|168965921", "168965921", "SwapingArmySetupB11", "box_SpawnAI_19.Spawned", "box_OutputOrder_v2_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_12_MemberAdded()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_13();
    l0 = self.box_GroupSizeListener_v5_12;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|245387335", "245387335", "SwapingArmySetupB11", "box_GroupSizeListener_v5_12.MemberAdded", "box_IntegerArithmetics_v2_13.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_12_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_7();
    l0 = self.box_GroupSizeListener_v5_12;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|142484750", "142484750", "SwapingArmySetupB11", "box_GroupSizeListener_v5_12.MemberRemoved", "box_IntegerArithmetics_v2_7.Sub", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sub
    l1:Exec(8, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PawnInvincibleState_v2_26_OnSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_56();
    l0 = self.box_Delay_v5_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1438425277", "1438425277", "SwapingArmySetupB11", "box_PawnInvincibleState_v2_26.OnSet", "box_Delay_v5_56.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_28_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_44();
    l0 = self.box_Delay_v5_28;
    l1 = self.box_Delay_v5_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1373136031", "1373136031", "SwapingArmySetupB11", "box_Delay_v5_28.Started", "box_Delay_v5_44.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_28_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_36();
    l0 = self.box_Delay_v5_28;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1143853541", "1143853541", "SwapingArmySetupB11", "box_Delay_v5_28.TimeElapsed", "box_EndActivityObjective_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_20();
    l0 = self.box_MultipleAND_v2_14;
    l1 = self.box_Delay_v5_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1427964199", "1427964199", "SwapingArmySetupB11", "box_MultipleAND_v2_14.Out", "box_Delay_v5_20.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:OnEnter_box_Simple_Node_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|@DisableListener");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_18_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|@SpawnOneLastTimeB11");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_29_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_4()
    local params, l0;
    DrawTextToScreen("Comment: CS that set the AI aggressive to the player in order to start the action", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SetContextualStrategy')-- Comment: CS that set the AI aggressive to the player in order to start the action");
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|44059072");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_4_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103762668734191203",
        -- Group,
        [1] = "2101853840574790732",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|99495114");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 3,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = {
            connections = {
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
                [2] = self.f_box_OutputOrder_v2_3_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_20()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4.5,
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_48()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- useAnims,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|288940696");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 4,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = {
            connections = {
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
                [2] = self.f_box_OutputOrder_v2_10_Out_2,
                [3] = self.f_box_OutputOrder_v2_10_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_17()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_53()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SwapingArmyMoveB11_11()
    local params;
    DrawTextToScreen("Comment: Sheriff Pistolero - Uni50", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SwapingArmyMoveB11')-- Comment: Sheriff Pistolero - Uni50");
    params = {
        -- BlissRiverBanks,
        [0] = "2104080156451691828",
        -- CStoUseForGreenGFH,
        [1] = "2102016921760178122",
        -- CStoUseForRedGFH,
        [2] = "2103762668428007007",
        -- GFH,
        [3] = "2101853837819132937",
        -- MarkerWhenRevive,
        [4] = "2102034304539300344",
        -- ParticleWhenConverted,
        [5] = "2103843130326413331",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_40()
    local params;
    DrawTextToScreen("Comment: Stacy Pratt (brainwashed) Going to fuck you up, rookie.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Stacy Pratt (brainwashed) Going to fuck you up, rookie.");
    params = {
        -- Group,
        [0] = "2101853841111661705",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2332147828",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_32()
    local params;
    DrawTextToScreen("Comment: Joey Hudson - Fucking hell. Thanks, Rook. Let's get this bastard.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Joey Hudson - Fucking hell. Thanks, Rook. Let's get this bastard.");
    params = {
        -- Group,
        [0] = "2101853840574790732",
        -- RelevancyTime,
        [1] = 4,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1371954593",
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|596891233");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_5_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "FATHER_010_B10_ReviveYourFriend",
            id = "688650",
        },
        -- Progress,
        [1] = self.FriendsLeftToBringBackB11,
        -- ProgressId,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_38()
    local params;
    DrawTextToScreen("Comment: Stacy Pratt - Jesus fucking Christ! You saved my ass.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Stacy Pratt - Jesus fucking Christ! You saved my ass.");
    params = {
        -- Group,
        [0] = "2101853841111661705",
        -- RelevancyTime,
        [1] = 4,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4021279947",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|656467341");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103580942732897674",
        -- Group,
        [1] = "2101853841111661705",
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|677754568");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_13_Out,
    });
    params = {
        -- A,
        [0] = self.FriendsLeftToBringBackB11,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|687913524");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_9_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103762668428007007",
        -- Group,
        [1] = "2101853837819132937",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_42()
    local params;
    DrawTextToScreen("Comment: Joey Hudson (Brainwashed) - For the Father!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Joey Hudson (Brainwashed) - For the Father!");
    params = {
        -- Group,
        [0] = "2101853840574790732",
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2515946790",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_21()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_52()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|930870844");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_46_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103499232771095672",
        -- Group,
        [1] = "2103569162489054120",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|932861472");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_37_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "FATHER_010_B10_FightFatherJoseph",
            id = "685113",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_34()
    local params;
    DrawTextToScreen("Comment: Whitehorse - Goddamn, Rook. You pulled my fat out of the fire.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Whitehorse - Goddamn, Rook. You pulled my fat out of the fire.");
    params = {
        -- Group,
        [0] = "2101853837819132937",
        -- RelevancyTime,
        [1] = 4,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2545313881",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1112886166");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 2,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [0] = {
            connections = {
                [0] = self.f_box_OutputOrder_v2_49_Out_0,
                [1] = self.f_box_OutputOrder_v2_49_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1191460102");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_24_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "FATHER_010_B10_FightFatherJoseph",
            id = "685113",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SwapingArmyMoveB11_1()
    local params;
    DrawTextToScreen("Comment: Joey Hudson, THE GIRL, Shotgun - Uni40", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SwapingArmyMoveB11')-- Comment: Joey Hudson, THE GIRL, Shotgun - Uni40");
    params = {
        -- BlissRiverBanks,
        [0] = "2104080143396920615",
        -- CStoUseForGreenGFH,
        [1] = "2102016921760178122",
        -- CStoUseForRedGFH,
        [2] = "2103762668734191203",
        -- GFH,
        [3] = "2101853840574790732",
        -- MarkerWhenRevive,
        [4] = "2102034302452634100",
        -- ParticleWhenConverted,
        [5] = "2103843129223311377",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_27()
    local params, l0;
    DrawTextToScreen("Comment: This makes our revived Ally invincible to enemy (father) fire. That would bring no fun to have father take down our friend once he's vulnerable", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SetContextualStrategy')-- Comment: This makes our revived Ally invincible to enemy (father) fire. That would bring no fun to have father take down our friend once he's vulnerable");
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1242512780");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_27_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103801430616891270",
        -- Group,
        [1] = "#0382900D",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_56()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2.5,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_47()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2104052018686615634",
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1342032131");
    l0:SetConnections({
    });
    params = {
        -- Pawn,
        [0] = "2104052018686615634",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1413058866");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_36_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "FATHER_010_B10_ReviveYourFriend",
            id = "688650",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1597180487");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_25_Disabled,
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_25_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2101909443949137361",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "FATHER_010_B10_FightFatherJoseph",
            id = "685113",
        },
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1615718912");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_7_Out,
    });
    params = {
        -- A,
        [0] = self.FriendsLeftToBringBackB11,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1617623247");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_15_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.FriendsLeftToBringBackB11,
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_31()
    local params;
    DrawTextToScreen("Comment: Whitehorse - Rook, time to get your man!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Whitehorse - Rook, time to get your man!");
    params = {
        -- Group,
        [0] = "2101853837819132937",
        -- RelevancyTime,
        [1] = 4,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3840929043",
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_50()
    local params, l0;
    DrawTextToScreen("Comment: Tag the Father only when he becomes aggressive", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'TaggingModifier_v3')-- Comment: Tag the Father only when he becomes aggressive");
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1775571595");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TaggingModifier_v3_50_Enabled,
        -- Tagged,
        [2] = self.f_box_TaggingModifier_v3_50_Tagged,
    });
    params = {
        -- Entity,
        [0] = "2103569162489054120",
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SwapingArmyMoveB11_2()
    local params;
    DrawTextToScreen("Comment: Stacey Pratt, THE DUDE, Shotgun - Uni44", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SwapingArmyMoveB11')-- Comment: Stacey Pratt, THE DUDE, Shotgun - Uni44");
    params = {
        -- BlissRiverBanks,
        [0] = "2104080153614245170",
        -- CStoUseForGreenGFH,
        [1] = "2102016921760178122",
        -- CStoUseForRedGFH,
        [2] = "2103580942732897674",
        -- GFH,
        [3] = "2101853841111661705",
        -- MarkerWhenRevive,
        [4] = "2102034299871039984",
        -- ParticleWhenConverted,
        [5] = "2103843130643083285",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_44()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2.5,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_19()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104052018682421324",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_12()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#0382900D",
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|1989358072");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "FATHER_010_B10_ReviveYourFriend",
            id = "688650",
        },
        -- Progress,
        [1] = self.FriendsLeftToBringBackB11,
        -- ProgressId,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@SwapingArmySetupB11|2014790987");
    l0:SetConnections({
        -- OnSet,
        [0] = self.f_box_PawnInvincibleState_v2_26_OnSet,
    });
    params = {
        -- Pawn,
        [0] = "2104052018686615634",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_28()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_55()
    local params;
    DrawTextToScreen("Comment: Father comments - Should be Sound and Ethereal - It will be sweeter now when you all fall.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: Father comments - Should be Sound and Ethereal - It will be sweeter now when you all fall.");
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "1312296801",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = true,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_14()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnExit_box_IntegerArithmetics_v2_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.FriendsLeftToBringBackB11 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_7_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.FriendsLeftToBringBackB11 = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
