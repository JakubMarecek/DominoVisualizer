LUAC�N -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/wowencounter/f3_enc_hostage_02_trailers.domino
-- User graph: HOSTAGE_02_Trailers
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Free_Hostages_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Realization_CustomAttractLines.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/StateListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/Coop/GroupSizeTest.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetHealthState.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/RadioModifier_v3.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1208166832.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3493671798.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3936440165.bnk]], "CSoundResource");
        cboxRes:LoadResource([[863178486.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2364937738.bnk]], "CSoundResource");
        cboxRes:LoadResource([[759053.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1985426616.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2655420211.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/WOWEncounter/F3_ENC_HOSTAGE_02_Trailers.HOSTAGE_02_Trailers.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "OnLeaveZone",
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Free_Hostages_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Fail",
                delayed = false,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
            [2] = {
                name = "Success",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjectives",
                type = "bool",
            },
            [1] = {
                name = "bMinimunHostagesCompletion",
                type = "bool",
            },
            [2] = {
                name = "bShowObjective",
                type = "bool",
            },
            [3] = {
                name = "Hostage_group",
                type = "group",
            },
            [4] = {
                name = "HostagesToSave",
                type = "int",
            },
            [5] = {
                name = "Objective",
                type = "oasis",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "HostagesSaved",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ForceRelease",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "HostageReleased",
                delayed = false,
            },
            [1] = {
                name = "NextHostage",
                delayed = false,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Hostage",
                type = "entity",
            },
            [1] = {
                name = "STP_Tied",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Realization_CustomAttractLines.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "LongDelay10_20s",
            },
            [2] = {
                name = "MediumDelay5_8s",
            },
            [3] = {
                name = "ShortDelay2_3s",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Disabled",
                delayed = true,
            },
            [1] = {
                name = "Ended",
                delayed = true,
            },
            [2] = {
                name = "LineID_Updated",
                delayed = true,
            },
            [3] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "eNPC",
                type = "entity",
            },
            [1] = {
                name = "LoopLines",
                type = "bool",
            },
            [2] = {
                name = "RandomLineOrder",
                type = "bool",
            },
            [3] = {
                name = "SoundID_01",
                type = "Sound",
            },
            [4] = {
                name = "SoundID_02",
                type = "Sound",
            },
            [5] = {
                name = "SoundID_03",
                type = "Sound",
            },
            [6] = {
                name = "SoundID_04",
                type = "Sound",
            },
            [7] = {
                name = "SoundID_05",
                type = "Sound",
            },
            [8] = {
                name = "SoundID_06",
                type = "Sound",
            },
            [9] = {
                name = "SoundID_07",
                type = "Sound",
            },
            [10] = {
                name = "SoundID_08",
                type = "Sound",
            },
            [11] = {
                name = "SoundID_09",
                type = "Sound",
            },
        },
        dataInCount = 12,
        dataOut = {
            [0] = {
                name = "LineID",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityAcknowledgeGate.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Acknowledged",
                delayed = true,
            },
            [1] = {
                name = "Reloaded",
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityEnd.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "EndHardSave",
            },
            [1] = {
                name = "EndNoSave",
            },
            [2] = {
                name = "EndSoftSave",
            },
        },
        controlInCount = 3,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "Success",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityInitialized.lua")] = {
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
                delayed = true,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityRetry.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Retry",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "ReasonId",
                type = "oasis",
            },
            [1] = {
                name = "Reload",
                type = "bool",
            },
            [2] = {
                name = "ShowHud",
                type = "bool",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/CharacterLoadedIdListener.lua")] = {
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
                name = "EntityUnloaded",
                delayed = true,
            },
            [3] = {
                name = "LoadedIdReceived",
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
                name = "CharacterId",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "EntityId",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/ContextualActionListener.lua")] = {
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
                name = "Available",
                delayed = true,
            },
            [1] = {
                name = "Disabled",
                delayed = false,
            },
            [2] = {
                name = "Enabled",
                delayed = false,
            },
            [3] = {
                name = "End",
                delayed = true,
            },
            [4] = {
                name = "Interrupt",
                delayed = true,
            },
            [5] = {
                name = "Markup1",
                delayed = true,
            },
            [6] = {
                name = "Markup2",
                delayed = true,
            },
            [7] = {
                name = "Select",
                delayed = true,
            },
            [8] = {
                name = "Start",
                delayed = true,
            },
        },
        controlOutCount = 9,
        dataIn = {
            [0] = {
                name = "ContextualAction",
                type = "entity",
            },
            [1] = {
                name = "UserFilter",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "User",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "CallForceNormalEnd",
            },
            [1] = {
                name = "CallInterrupt",
            },
            [2] = {
                name = "Disable",
            },
            [3] = {
                name = "Enable",
            },
            [4] = {
                name = "Use",
            },
        },
        controlInCount = 5,
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
                name = "ForceNormalEndCalled",
                delayed = false,
            },
            [3] = {
                name = "InterruptCalled",
                delayed = false,
            },
            [4] = {
                name = "UseCalled",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "ContextualAction",
                type = "entity",
            },
            [1] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/StateListener_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Alert",
            },
            [1] = {
                name = "Combat",
            },
            [2] = {
                name = "Dead",
            },
            [3] = {
                name = "Disable",
            },
            [4] = {
                name = "Idle_RelaxCautious",
            },
            [5] = {
                name = "Investigate",
            },
        },
        controlInCount = 6,
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
                name = "MemberInState",
                delayed = true,
            },
            [3] = {
                name = "StateStart",
                delayed = true,
            },
            [4] = {
                name = "StateStop",
                delayed = true,
            },
        },
        controlOutCount = 5,
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
                name = "memberCountInState",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Coop/GroupSizeTest.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Equal",
            },
            [2] = {
                name = "Greater",
            },
            [3] = {
                name = "Less",
            },
        },
        controlInCount = 4,
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
                name = "OnSize",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "PlayerCount",
                type = "bool",
            },
            [2] = {
                name = "Size",
                type = "int",
            },
            [3] = {
                name = "TestAtInit",
                type = "bool",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/EntityStatusListener.lua")] = {
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
                name = "Loaded",
                delayed = true,
            },
            [3] = {
                name = "Unloaded",
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
                name = "checkNow",
                type = "bool",
            },
            [2] = {
                name = "entityId",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/GetHealthState.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Critical",
                delayed = false,
            },
            [1] = {
                name = "Dead",
                delayed = false,
            },
            [2] = {
                name = "Down",
                delayed = false,
            },
            [3] = {
                name = "Healthy",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Health",
                type = "float",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/GetPlayerGroup_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "EnemyPlayers",
            },
            [1] = {
                name = "FriendlyPlayers",
            },
            [2] = {
                name = "In",
            },
        },
        controlInCount = 3,
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
            [0] = {
                name = "PlayerGroup",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/MultipleOR.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Input",
                dynamicType = 1,
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
    metadataTable[GetPathID("Domino/System/ProximityRadiusListener_v3.lua")] = {
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
                name = "AllFar",
                delayed = true,
            },
            [1] = {
                name = "AllNear",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Enabled",
                delayed = false,
            },
            [4] = {
                name = "SomeoneFar",
                delayed = true,
            },
            [5] = {
                name = "SomeoneNear",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "Entities",
                type = "group",
            },
            [2] = {
                name = "farZone",
                type = "float",
            },
            [3] = {
                name = "id2",
                type = "entity",
            },
            [4] = {
                name = "nearZone",
                type = "float",
            },
            [5] = {
                name = "use2d",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "currentEntity",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/RadioModifier_v3.lua")] = {
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
                name = "Enable",
                type = "bool",
            },
            [1] = {
                name = "ImmediateOverride",
                type = "bool",
            },
            [2] = {
                name = "LockOnOff",
                type = "bool",
            },
            [3] = {
                name = "LockStationSwitching",
                type = "bool",
            },
            [4] = {
                name = "StationOverride",
                type = "genericdb",
            },
            [5] = {
                name = "TargetRadio",
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
    self._name = "HOSTAGE_02_Trailers";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers";
    self.Out = DummyFunction;
    self.Statistic = "General_TotalHostagesRescued";
    self.Reward = "9015217323976138";
    self.eQuestGiver = nil;
    self.gFriendlyPlayers = nil;
    self.box_GroupSizeListener_v5_26 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|15787261");
    l0:SetConnections({
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_26_MemberRemoved,
    });
    self.box_StateListener_v2_34 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|61938739");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_34_StateStart,
        -- StateStop,
        [4] = self.f_box_StateListener_v2_34_StateStop,
    });
    self.box_Realization_CustomAttractLines_31 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Realization_CustomAttractLines.debug.lua");
    l0 = self.box_Realization_CustomAttractLines_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Realization_CustomAttractLines_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|135430570");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_4 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|280188129");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_4_Out,
    });
    self.box_EntityStatusListener_28 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|397702641");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_28_Loaded,
    });
    self.box_CharacterLoadedIdListener_11 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|593781611");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_11_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_11_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_11_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_11_LoadedIdReceived,
    });
    self.box_Brick_Free_Hostages_v2_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Free_Hostages_v2.debug.lua");
    l0 = self.box_Brick_Free_Hostages_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Free_Hostages_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|789822315");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_Brick_Free_Hostages_v2_10_Started,
        -- Success,
        [2] = self.f_box_Brick_Free_Hostages_v2_10_Success,
    });
    self.box_MultipleOR_39 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|919969811");
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
        [0] = self.f_box_MultipleOR_39_Out,
    });
    self.box_HealthListener_v6_38 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|923866597");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_38_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_38_Enabled,
    });
    self.box_ContextualActionListener_14 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1000517432");
    l0:SetConnections({
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_14_Enabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_14_End,
        -- Interrupt,
        [4] = self.f_box_ContextualActionListener_14_Interrupt,
    });
    self.box_ProximityRadiusListener_v3_29 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1022575197");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_29_SomeoneNear,
    });
    self.box_Delay_v5_16 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1087234637");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_16_TimeElapsed,
    });
    self.box_GroupSizeTest_25 = cbox:CreateBox("Domino/System/Coop/GroupSizeTest.lua");
    l0 = self.box_GroupSizeTest_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeTest_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1149416214");
    l0:SetConnections({
        -- OnSize,
        [2] = self.f_box_GroupSizeTest_25_OnSize,
    });
    self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1165458132");
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
        [0] = self.f_box_MultipleOR_12_Out,
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1213453894");
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
        [0] = self.f_box_MultipleOR_3_Out,
    });
    self.box_MultipleOR_42 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1590782649");
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
        [0] = self.f_box_MultipleOR_42_Out,
    });
    self.box_MultipleOR_23 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1614434096");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 4,
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
        [0] = self.f_box_MultipleOR_23_Out,
    });
    self.box_Brick_Hostage_Setup_v2_9 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
    l0 = self.box_Brick_Hostage_Setup_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Hostage_Setup_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1635958830");
    l0:SetConnections({
        -- HostageReleased,
        [0] = self.f_box_Brick_Hostage_Setup_v2_9_HostageReleased,
    });
    self.box_ActivityAcknowledgeGate_5 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1754093159");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_5_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_5_Reloaded,
    });
    self.box_Realization_CustomAttractLines_24 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Realization_CustomAttractLines.debug.lua");
    l0 = self.box_Realization_CustomAttractLines_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Realization_CustomAttractLines_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|2145606705");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_35();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|766769575", "766769575", "HOSTAGE_02_Trailers", "In", "box_OutputOrder_v2_35.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_2();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1679692793", "1679692793", "HOSTAGE_02_Trailers", "OnLeaveZone", "box_ActivityRetry_2.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_26_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeTest_25();
    l0 = self.box_GroupSizeListener_v5_26;
    l1 = self.box_GroupSizeTest_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|2128775346", "2128775346", "HOSTAGE_02_Trailers", "box_GroupSizeListener_v5_26.MemberRemoved", "box_GroupSizeTest_25.Equal", l0:GetLuaBox(), l1:GetLuaBox());
    -- Equal
    l1:Exec(1, params);
end;

function export:f_box_StateListener_v2_34_StateStart()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_14();
    l0 = self.box_StateListener_v2_34;
    l1 = self.box_ContextualActionListener_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1613398213", "1613398213", "HOSTAGE_02_Trailers", "box_StateListener_v2_34.StateStart", "box_ContextualActionListener_14.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StateListener_v2_34_StateStop()
    local l0, l1;
    l0 = self.box_StateListener_v2_34;
    l1 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|854935645", "854935645", "HOSTAGE_02_Trailers", "box_StateListener_v2_34.StateStop", "box_MultipleOR_23.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_37_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|580663280", "580663280", "HOSTAGE_02_Trailers", "box_OutputOrder_v2_37.Out", "box_MultipleOR_39.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_37_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_1();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1758139790", "1758139790", "HOSTAGE_02_Trailers", "box_OutputOrder_v2_37.Out", "box_ActivityEnd_1.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_27();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|986842770", "986842770", "HOSTAGE_02_Trailers", "box_OutputOrder_v2_36.Out", "box_RadioModifier_v3_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_28();
    l0 = self.box_EntityStatusListener_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1304501845", "1304501845", "HOSTAGE_02_Trailers", "box_OutputOrder_v2_36.Out", "box_EntityStatusListener_28.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ActivityInitialized_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_ActivityInitialized_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|999189369", "999189369", "HOSTAGE_02_Trailers", "box_ActivityInitialized_4.Out", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_32_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_32_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_11();
    l0 = self.box_CharacterLoadedIdListener_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|362079563", "362079563", "HOSTAGE_02_Trailers", "box_GetPlayerGroup_v2_32.Out", "box_CharacterLoadedIdListener_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_41_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetHealthState_43();
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|798078795", "798078795", "HOSTAGE_02_Trailers", "box_OutputOrder_v2_41.Out", "box_GetHealthState_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_41_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|914540369", "914540369", "HOSTAGE_02_Trailers", "box_OutputOrder_v2_41.Out", "box_MultipleOR_42.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_28_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = self.box_EntityStatusListener_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|720530631", "720530631", "HOSTAGE_02_Trailers", "box_EntityStatusListener_28.Loaded", "box_OutputOrder_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_32();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|256605708", "256605708", "HOSTAGE_02_Trailers", "box_OutputOrder_v2_18.Out", "box_GetPlayerGroup_v2_32.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_29();
    l0 = self.box_ProximityRadiusListener_v3_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|90854628", "90854628", "HOSTAGE_02_Trailers", "box_OutputOrder_v2_30.Out", "box_ProximityRadiusListener_v3_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1190988108", "1190988108", "HOSTAGE_02_Trailers", "box_OutputOrder_v2_30.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_30_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_34();
    l0 = self.box_StateListener_v2_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|508122193", "508122193", "HOSTAGE_02_Trailers", "box_OutputOrder_v2_30.Out", "box_StateListener_v2_34.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(3, params);
end;

function export:f_box_CharacterLoadedIdListener_11_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_11_LoadedIdReceived();
    params = self:OnEnter_box_Brick_Free_Hostages_v2_10();
    l0 = self.box_CharacterLoadedIdListener_11;
    l1 = self.box_Brick_Free_Hostages_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|661202739", "661202739", "HOSTAGE_02_Trailers", "box_CharacterLoadedIdListener_11.LoadedIdReceived", "box_Brick_Free_Hostages_v2_10.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_35_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|252758797", "252758797", "HOSTAGE_02_Trailers", "box_OutputOrder_v2_35.Out", "box_ActivityAcknowledgeGate_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_35_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_28();
    l0 = self.box_EntityStatusListener_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1023286725", "1023286725", "HOSTAGE_02_Trailers", "box_OutputOrder_v2_35.Out", "box_EntityStatusListener_28.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Brick_Free_Hostages_v2_10_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_16();
    l0 = self.box_Brick_Free_Hostages_v2_10;
    l1 = self.box_Delay_v5_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1590927956", "1590927956", "HOSTAGE_02_Trailers", "box_Brick_Free_Hostages_v2_10.Started", "box_Delay_v5_16.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Brick_Free_Hostages_v2_10_Success()
    local l0, l1;
    l0 = self.box_Brick_Free_Hostages_v2_10;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1291213660", "1291213660", "HOSTAGE_02_Trailers", "box_Brick_Free_Hostages_v2_10.Success", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Realization_CustomAttractLines_31();
    l0 = self.box_MultipleOR_39;
    l1 = self.box_Realization_CustomAttractLines_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|2108139340", "2108139340", "HOSTAGE_02_Trailers", "box_MultipleOR_39.Out", "box_Realization_CustomAttractLines_31.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_HealthListener_v6_38_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = self.box_HealthListener_v6_38;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1180922760", "1180922760", "HOSTAGE_02_Trailers", "box_HealthListener_v6_38.Downed", "box_OutputOrder_v2_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_38_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Realization_CustomAttractLines_31();
    l0 = self.box_HealthListener_v6_38;
    l1 = self.box_Realization_CustomAttractLines_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|69424264", "69424264", "HOSTAGE_02_Trailers", "box_HealthListener_v6_38.Enabled", "box_Realization_CustomAttractLines_31.MediumDelay5_8s", l0:GetLuaBox(), l1:GetLuaBox());
    -- MediumDelay5_8s
    l1:Exec(2, params);
end;

function export:f_box_ContextualActionListener_14_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Realization_CustomAttractLines_24();
    l0 = self.box_ContextualActionListener_14;
    l1 = self.box_Realization_CustomAttractLines_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1784214281", "1784214281", "HOSTAGE_02_Trailers", "box_ContextualActionListener_14.Enabled", "box_Realization_CustomAttractLines_24.MediumDelay5_8s", l0:GetLuaBox(), l1:GetLuaBox());
    -- MediumDelay5_8s
    l1:Exec(2, params);
end;

function export:f_box_ContextualActionListener_14_End()
    local l0, l1;
    l0 = self.box_ContextualActionListener_14;
    l1 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1863057154", "1863057154", "HOSTAGE_02_Trailers", "box_ContextualActionListener_14.End", "box_MultipleOR_23.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ContextualActionListener_14_Interrupt()
    local l0, l1;
    l0 = self.box_ContextualActionListener_14;
    l1 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1968531009", "1968531009", "HOSTAGE_02_Trailers", "box_ContextualActionListener_14.Interrupt", "box_MultipleOR_23.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ProximityRadiusListener_v3_29_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_41();
    l0 = self.box_ProximityRadiusListener_v3_29;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1773845278", "1773845278", "HOSTAGE_02_Trailers", "box_ProximityRadiusListener_v3_29.SomeoneNear", "box_OutputOrder_v2_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_16_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = self.box_Delay_v5_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|414056229", "414056229", "HOSTAGE_02_Trailers", "box_Delay_v5_16.TimeElapsed", "box_OutputOrder_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeTest_25_OnSize()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = self.box_GroupSizeTest_25;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|652513088", "652513088", "HOSTAGE_02_Trailers", "box_GroupSizeTest_25.OnSize", "box_OutputOrder_v2_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_37();
    l0 = self.box_MultipleOR_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1189686146", "1189686146", "HOSTAGE_02_Trailers", "box_MultipleOR_12.Out", "box_OutputOrder_v2_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_3_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_3;
    l1 = self.box_ActivityInitialized_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1301140305", "1301140305", "HOSTAGE_02_Trailers", "box_MultipleOR_3.Out", "box_ActivityInitialized_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|434354893", "434354893", "HOSTAGE_02_Trailers", "box_OutputOrder_v2_33.Out", "box_MultipleOR_42.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_15();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|2143345590", "2143345590", "HOSTAGE_02_Trailers", "box_OutputOrder_v2_33.Out", "box_UseContextualActionModifier_v3_15.CallInterrupt", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallInterrupt
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_42_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_29();
    l0 = self.box_MultipleOR_42;
    l1 = self.box_ProximityRadiusListener_v3_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1979954628", "1979954628", "HOSTAGE_02_Trailers", "box_MultipleOR_42.Out", "box_ProximityRadiusListener_v3_29.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Realization_CustomAttractLines_24();
    l0 = self.box_MultipleOR_23;
    l1 = self.box_Realization_CustomAttractLines_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|878225598", "878225598", "HOSTAGE_02_Trailers", "box_MultipleOR_23.Out", "box_Realization_CustomAttractLines_24.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Brick_Hostage_Setup_v2_9_HostageReleased()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = self.box_Brick_Hostage_Setup_v2_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1970798749", "1970798749", "HOSTAGE_02_Trailers", "box_Brick_Hostage_Setup_v2_9.HostageReleased", "box_OutputOrder_v2_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_26();
    l0 = self.box_GroupSizeListener_v5_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1281462722", "1281462722", "HOSTAGE_02_Trailers", "box_OutputOrder_v2_22.Out", "box_GroupSizeListener_v5_26.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_34();
    l0 = self.box_StateListener_v2_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1472519268", "1472519268", "HOSTAGE_02_Trailers", "box_OutputOrder_v2_22.Out", "box_StateListener_v2_34.Idle_RelaxCautious", clone:GetLuaBox(), l0:GetLuaBox());
    -- Idle_RelaxCautious
    l0:Exec(4, params);
end;

function export:f_box_OutputOrder_v2_22_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_9();
    l0 = self.box_Brick_Hostage_Setup_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1258835411", "1258835411", "HOSTAGE_02_Trailers", "box_OutputOrder_v2_22.Out", "box_Brick_Hostage_Setup_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_15_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1515271804", "1515271804", "HOSTAGE_02_Trailers", "box_UseContextualActionModifier_v3_15.Disabled", "box_MultipleOR_12.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_15_InterruptCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_15();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|820146227", "820146227", "HOSTAGE_02_Trailers", "box_UseContextualActionModifier_v3_15.InterruptCalled", "box_UseContextualActionModifier_v3_15.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_5_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|2089810260", "2089810260", "HOSTAGE_02_Trailers", "box_ActivityAcknowledgeGate_5.Acknowledged", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_5_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1253034483", "1253034483", "HOSTAGE_02_Trailers", "box_ActivityAcknowledgeGate_5.Reloaded", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1079975544", "1079975544", "HOSTAGE_02_Trailers", "box_OutputOrder_v2_40.Out", "box_MultipleOR_39.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_38();
    l0 = self.box_HealthListener_v6_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1391520810", "1391520810", "HOSTAGE_02_Trailers", "box_OutputOrder_v2_40.Out", "box_HealthListener_v6_38.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_GetHealthState_43_Healthy()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_38();
    l0 = self.box_HealthListener_v6_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1348787800", "1348787800", "HOSTAGE_02_Trailers", "box_GetHealthState_43.Healthy", "box_HealthListener_v6_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:OnEnter_box_GroupSizeListener_v5_26()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#98C58CB5",
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_34()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#98C58CB5",
    };
    return params;
end;

function export:OnEnter_box_Realization_CustomAttractLines_31()
    local params;
    params = {
        -- eNPC,
        [0] = self.eQuestGiver,
        -- LoopLines,
        [1] = true,
        -- RandomLineOrder,
        [2] = true,
        -- SoundID_01,
        [3] = "2364937738",
        -- SoundID_02,
        [4] = "759053",
        -- SoundID_03,
        [5] = "3493671798",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|181846957");
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
                [0] = self.f_box_OutputOrder_v2_37_Out_0,
                [1] = self.f_box_OutputOrder_v2_37_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|216314842");
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
                [0] = self.f_box_OutputOrder_v2_36_Out_0,
                [1] = self.f_box_OutputOrder_v2_36_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|336168563");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_32_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|351479353");
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
                [0] = self.f_box_OutputOrder_v2_41_Out_0,
                [1] = self.f_box_OutputOrder_v2_41_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_28()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103111611916039851",
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|436107998");
    l0:SetConnections({
    });
    params = {
        -- Enable,
        [0] = true,
        -- ImmediateOverride,
        [1] = true,
        -- LockOnOff,
        [2] = false,
        -- LockStationSwitching,
        [3] = false,
        -- TargetRadio,
        [5] = "2103111611916039851",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|447414692");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|469592372");
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
                [2] = self.f_box_OutputOrder_v2_30_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_11()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015184608221198",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|604130688");
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
                [0] = self.f_box_OutputOrder_v2_35_Out_0,
                [1] = self.f_box_OutputOrder_v2_35_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Free_Hostages_v2_10()
    local params;
    params = {
        -- bCompletePreviousObjectives,
        [0] = false,
        -- bMinimunHostagesCompletion,
        [1] = false,
        -- bShowObjective,
        [2] = true,
        -- Hostage_group,
        [3] = "#C3316BDD",
        -- HostagesToSave,
        [4] = 4,
        -- Objective,
        [5] = {
            section = "Brick_FreeNPC",
            item = "BRICK_FreeNPC_Obj_Main",
            id = "533114",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|905494235");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_38()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eQuestGiver,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_14()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2103651227205123186",
        -- UserFilter,
        [1] = self.eQuestGiver,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_29()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gFriendlyPlayers,
        -- id2,
        [3] = self.eQuestGiver,
        -- nearZone,
        [4] = 10,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_16()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeTest_25()
    local params;
    params = {
        -- Group,
        [0] = "#98C58CB5",
        -- PlayerCount,
        [1] = false,
        -- Size,
        [2] = 0,
        -- TestAtInit,
        [3] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1416807314");
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
                [0] = self.f_box_OutputOrder_v2_33_Out_0,
                [1] = self.f_box_OutputOrder_v2_33_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Hostage_Setup_v2_9()
    local params;
    params = {
        -- Hostage,
        [0] = self.eQuestGiver,
        -- STP_Tied,
        [1] = "2103651227205123186",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1643335361");
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
                [0] = self.f_box_OutputOrder_v2_22_Out_0,
                [1] = self.f_box_OutputOrder_v2_22_Out_1,
                [2] = self.f_box_OutputOrder_v2_22_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1716629819");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_15_Disabled,
        -- InterruptCalled,
        [3] = self.f_box_UseContextualActionModifier_v3_15_InterruptCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103651227205123186",
        -- Entity,
        [1] = self.eQuestGiver,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|1992608101");
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
                [0] = self.f_box_OutputOrder_v2_40_Out_0,
                [1] = self.f_box_OutputOrder_v2_40_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|2068250054");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
        -- ShowHud,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\WOWEncounter\\F3_ENC_HOSTAGE_02_Trailers.domino|@HOSTAGE_02_Trailers|2139797537");
    l0:SetConnections({
        -- Healthy,
        [3] = self.f_box_GetHealthState_43_Healthy,
    });
    params = {
        -- Pawn,
        [0] = self.eQuestGiver,
    };
    return params;
end;

function export:OnEnter_box_Realization_CustomAttractLines_24()
    local params;
    params = {
        -- eNPC,
        [0] = self.eQuestGiver,
        -- LoopLines,
        [1] = true,
        -- RandomLineOrder,
        [2] = true,
        -- SoundID_01,
        [3] = "3936440165",
        -- SoundID_02,
        [4] = "863178486",
        -- SoundID_03,
        [5] = "2655420211",
        -- SoundID_04,
        [6] = "1208166832",
        -- SoundID_05,
        [7] = "1985426616",
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_32_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gFriendlyPlayers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_11_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_11;
    self.eQuestGiver = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="OnLeaveZone" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
