LUACt! -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni35/uni35_001/uni35_001_b10.domino
-- User graph: UNI35_001_B10
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Free_Hostages_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Secure_Area.Brick_Secure_Area_v5.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.UIMode.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityNotifyStatus.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/AI/StateListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/AllPlayers/GodMode_v3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DiplayTextModifier_v6.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundMusicTrigger.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI35/UNI35_001/UNI35_001_B10.UNI35_001_B10_PlaneRadio.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI35/UNI35_001/UNI35_001_B10.UNI35_001_B10_STPSwitch.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3791004776.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4085948327.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3317130228.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4013606668.bnk]], "CSoundResource");
        cboxRes:LoadResource([[416594196.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4024180144.bnk]], "CSoundResource");
        cboxRes:LoadResource([[398540980.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3370378143.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3687698008.bnk]], "CSoundResource");
        cboxRes:LoadResource([[897503212.bnk]], "CSoundResource");
        cboxRes:LoadResource([[236193250.bnk]], "CSoundResource");
        cboxRes:LoadResource([[782701856.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2102059229.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2290165745.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.UNI35_001_B10 = nil;
    Globals.UNI35_001_B10 = {
        bIsStageDemo = false,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI35/UNI35_001/UNI35_001_B10.UNI35_001_B10.debug.lua")] = {
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
        },
        controlOutCount = 0,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "FadeIn",
            },
            [1] = {
                name = "FadeOut",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "FadedIn",
                delayed = false,
            },
            [1] = {
                name = "FadedOut",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "HUD",
                type = "string",
            },
            [1] = {
                name = "PostFX",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "BasicSetup",
            },
            [1] = {
                name = "HolsterWeapon",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Holstered",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Enable_Blackbars",
                type = "bool",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Secure_Area.Brick_Secure_Area_v5.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Started",
                delayed = false,
            },
            [1] = {
                name = "Success",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [2] = {
                name = "eMarkerObjectiveArea",
                type = "entity",
            },
            [3] = {
                name = "gEnemyGroup",
                type = "group",
            },
            [4] = {
                name = "Objective",
                type = "oasis",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.UIMode.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CinematicMode",
            },
            [1] = {
                name = "NormalMode",
            },
            [2] = {
                name = "OutpostMode",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "OnCinematicMode",
                delayed = false,
            },
            [1] = {
                name = "OnNormalMode",
                delayed = false,
            },
            [2] = {
                name = "OnOutpostMode",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua")] = {
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
                name = "Detected",
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
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "group",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityNotifyStatus.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetAlarmTriggered",
            },
            [1] = {
                name = "SetPlayerDetected",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSetAlarmTriggered",
                delayed = false,
            },
            [1] = {
                name = "OnSetPlayerDetected",
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
    metadataTable[GetPathID("Domino/System/BroadcastMessage.lua")] = {
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
                name = "Message",
                type = "string",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CompareBoolean.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_and_B",
                delayed = false,
            },
            [1] = {
                name = "A_is_False",
                delayed = false,
            },
            [2] = {
                name = "A_is_True",
                delayed = false,
            },
            [3] = {
                name = "A_or_B",
                delayed = false,
            },
            [4] = {
                name = "A_xor_B",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "A",
                type = "bool",
            },
            [1] = {
                name = "B",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/Coop/AllPlayers/GodMode_v3.lua")] = {
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
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "disableAfterBeat",
                type = "bool",
            },
            [1] = {
                name = "Mode",
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
    metadataTable[GetPathID("Domino/System/DiplayTextModifier_v6.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "ClearText",
            },
            [1] = {
                name = "DisplayText",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "TextCleared",
                delayed = false,
            },
            [1] = {
                name = "TextDisplayed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "displayOverCinematic",
                type = "bool",
            },
            [1] = {
                name = "displayTimer",
                type = "float",
            },
            [2] = {
                name = "forceInstantDisplay",
                type = "bool",
            },
            [3] = {
                name = "isKarmaEvent",
                type = "bool",
            },
            [4] = {
                name = "textId",
                type = "oasis",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")] = {
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
            [0] = {
                name = "LocalPlayer",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Print_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "ToAll",
            },
            [1] = {
                name = "ToConsole",
            },
            [2] = {
                name = "ToFile",
            },
            [3] = {
                name = "ToScreen",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Error",
                delayed = false,
            },
            [1] = {
                name = "PrintedToConsole",
                delayed = false,
            },
            [2] = {
                name = "PrintedToFile",
                delayed = false,
            },
            [3] = {
                name = "PrintedToScreen",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "bool",
                type = "bool",
            },
            [1] = {
                name = "color",
                type = "string",
            },
            [2] = {
                name = "db",
                type = "genericdb",
            },
            [3] = {
                name = "duration",
                type = "float",
            },
            [4] = {
                name = "float",
                type = "float",
            },
            [5] = {
                name = "id",
                type = "entity",
            },
            [6] = {
                name = "int",
                type = "int",
            },
            [7] = {
                name = "path",
                type = "string",
            },
            [8] = {
                name = "str",
                type = "string",
            },
            [9] = {
                name = "useTimeTag",
                type = "bool",
            },
        },
        dataInCount = 10,
        dataOut = {
            [0] = {
                name = "errorMsg",
                type = "string",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/ProximityTrigger_v2.lua")] = {
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
                name = "Enter",
                delayed = true,
            },
            [3] = {
                name = "Leave",
                delayed = true,
            },
            [4] = {
                name = "OnEmpty",
                delayed = true,
            },
            [5] = {
                name = "OnOccupied",
                delayed = true,
            },
            [6] = {
                name = "Use",
                delayed = true,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "colliderFilterId",
                type = "group",
            },
            [2] = {
                name = "listenToGroupSizeChange",
                type = "bool",
            },
            [3] = {
                name = "triggerId",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "colliderId",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/RemoveEntity_v2.lua")] = {
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
            [0] = {
                name = "Group",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/SetBoolean_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "False",
            },
            [1] = {
                name = "FromBool",
            },
            [2] = {
                name = "Toggle",
            },
            [3] = {
                name = "True",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Bool",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "bool",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/SoundMusicTrigger.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Skipped",
                delayed = false,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
            [2] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "EntityId",
                type = "entity",
            },
            [1] = {
                name = "FadeOutType",
                type = "int",
            },
            [2] = {
                name = "Priority",
                type = "int",
            },
            [3] = {
                name = "SoundType",
                type = "SoundType",
            },
            [4] = {
                name = "Stackable",
                type = "bool",
            },
            [5] = {
                name = "StartEvent",
                type = "Sound",
            },
            [6] = {
                name = "StopEvent",
                type = "Sound",
            },
            [7] = {
                name = "StopFadeOut",
                type = "float",
            },
            [8] = {
                name = "WaitUntilMusicEndMarker",
                type = "bool",
            },
            [9] = {
                name = "WaitUntilNotInVehicle",
                type = "bool",
            },
        },
        dataInCount = 10,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/StartCelebration.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Ended",
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
                name = "Preset",
                type = "genericdb",
            },
            [1] = {
                name = "TextId",
                type = "oasis",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Switch.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "Reset",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "None",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Output",
                dynamicType = 1,
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AutoReset",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "OutputNb",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/TeleportPawns.lua")] = {
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
            [0] = {
                name = "ClientDestinationEntity",
                type = "entity",
            },
            [1] = {
                name = "Destination",
                type = "entity",
            },
            [2] = {
                name = "LoadingScreen",
                type = "bool",
            },
            [3] = {
                name = "LoadSynch",
                type = "bool",
            },
            [4] = {
                name = "Pawns",
                type = "group",
            },
            [5] = {
                name = "UseBlackScreen",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/VehicleDamageListener_v2.lua")] = {
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
                name = "BoxDisabled",
                delayed = false,
            },
            [1] = {
                name = "Broken",
                delayed = true,
            },
            [2] = {
                name = "Destroyed",
                delayed = true,
            },
            [3] = {
                name = "Disabled",
                delayed = true,
            },
            [4] = {
                name = "Enabled",
                delayed = false,
            },
            [5] = {
                name = "MajorDamage",
                delayed = true,
            },
            [6] = {
                name = "MinorDamage",
                delayed = true,
            },
            [7] = {
                name = "Mint",
                delayed = true,
            },
            [8] = {
                name = "OnFire",
                delayed = true,
            },
            [9] = {
                name = "Perfect",
                delayed = true,
            },
            [10] = {
                name = "StateChange",
                delayed = true,
            },
        },
        controlOutCount = 11,
        dataIn = {
            [0] = {
                name = "Vehicle",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "StateID",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI35/UNI35_001/UNI35_001_B10.UNI35_001_B10_PlaneRadio.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "PlaneDown",
            },
        },
        controlInCount = 2,
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI35/UNI35_001/UNI35_001_B10.UNI35_001_B10_STPSwitch.debug.lua")] = {
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
            [1] = {
                name = "SwitchDone",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "bInterrupt",
                type = "bool",
            },
            [1] = {
                name = "NPC",
                type = "entity",
            },
            [2] = {
                name = "STP_01",
                type = "entity",
            },
            [3] = {
                name = "STP_02",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI35_001_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10";
    self.Players = nil;
    self.Player = nil;
    self.driver02 = nil;
    self.driver01 = nil;
    self.Grace = nil;
    self.Dog = nil;
    self.fallsend_cultists = 0;
    self.NickRye = nil;
    self.bSkipE3Init = false;
    self.Disband = 0;
    self.e_MaryMay = nil;
    self.e_PastorJerome = nil;
    self.i_plane = 0;
    self.b_PlaneRespawned = false;
    self.box_SpawnAI_47 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|86823975");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_47_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_47_Spawned,
    });
    self.box_StateListener_v2_133 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|102962244");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_133_StateStart,
        -- StateStop,
        [4] = self.f_box_StateListener_v2_133_StateStop,
    });
    self.box_MultipleOR_94 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|109027665");
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
        [0] = self.f_box_MultipleOR_94_Out,
    });
    self.box_MultipleOR_140 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|110827481");
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
        [0] = self.f_box_MultipleOR_140_Out,
    });
    self.box_PlayDialog_v6_93 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|111702271");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_93_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_93_FinishedInterrupted,
    });
    self.box_StateListener_v2_90 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|217041452");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_90_StateStart,
    });
    self.box_UNI35_001_B10_STPSwitch_279 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI35/UNI35_001/UNI35_001_B10.UNI35_001_B10_STPSwitch.debug.lua");
    l0 = self.box_UNI35_001_B10_STPSwitch_279;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI35_001_B10_STPSwitch_279");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|227200834");
    l0:SetConnections({
    });
    self.box_ContextualActionListener_275 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_275;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_275");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|227390092");
    l0:SetConnections({
        -- End,
        [3] = self.f_box_ContextualActionListener_275_End,
    });
    self.box_SpawnAI_49 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|261398425");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_49_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_49_Spawned,
    });
    self.box_OnceOnly_v3_70 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|292694136");
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
                [0] = self.f_box_OnceOnly_v3_70_Out_0,
            },
            count = 1,
        },
    });
    self.box_VehicleDamageListener_v2_60 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|301467349");
    l0:SetConnections({
        -- Broken,
        [1] = self.f_box_VehicleDamageListener_v2_60_Broken,
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_60_Destroyed,
        -- MajorDamage,
        [5] = self.f_box_VehicleDamageListener_v2_60_MajorDamage,
    });
    self.box_Delay_v5_57 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|308165863");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_57_TimeElapsed,
    });
    self.box_SoundModifier_v2_11 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|376978007");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_11_Started,
    });
    self.box_GodMode_v3_108 = cbox:CreateBox("Domino/System/Coop/AllPlayers/GodMode_v3.lua");
    l0 = self.box_GodMode_v3_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GodMode_v3_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|412478177");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_GodMode_v3_108_Enabled,
    });
    self.box_MultipleOR_92 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|427208735");
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
        [0] = self.f_box_MultipleOR_92_Out,
    });
    self.box_ProximityTrigger_v2_86 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|455449960");
    l0:SetConnections({
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_86_OnOccupied,
    });
    self.box_NarrativeFade_261 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_261;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_261");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|499688297");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_261_FadedOut,
    });
    self.box_SoundModifier_v2_272 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_272;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_272");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|525925941");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_281 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_281;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_281");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|531789444");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_281_Out_0,
            },
            count = 2,
        },
    });
    self.box_GodMode_v3_83 = cbox:CreateBox("Domino/System/Coop/AllPlayers/GodMode_v3.lua");
    l0 = self.box_GodMode_v3_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GodMode_v3_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|538387527");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_GodMode_v3_83_Enabled,
    });
    self.box_CharacterLoadedIdListener_44 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|540566452");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_44_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_44_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_44_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_44_LoadedIdReceived,
    });
    self.box_MultipleOR_127 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|604496262");
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
        [0] = self.f_box_MultipleOR_127_Out,
    });
    self.box_ContextualActionListener_71 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|610782101");
    l0:SetConnections({
        -- Select,
        [7] = self.f_box_ContextualActionListener_71_Select,
    });
    self.box_MultipleOR_56 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|614141214");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 3,
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
        [0] = self.f_box_MultipleOR_56_Out,
    });
    self.box_MultipleOR_197 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_197");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|621299582");
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
        [0] = self.f_box_MultipleOR_197_Out,
    });
    self.box_ContextualActionListener_30 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|623210770");
    l0:SetConnections({
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_30_Enabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_30_End,
    });
    self.box_Brick_Hostage_Setup_v2_9 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
    l0 = self.box_Brick_Hostage_Setup_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Hostage_Setup_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|643590470");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_186 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_186");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|680684533");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_186_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_186_FinishedInterrupted,
    });
    self.box_MultipleOR_196 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_196;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_196");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|689936869");
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
        [0] = self.f_box_MultipleOR_196_Out,
    });
    self.box_PlayDialog_v6_210 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_210;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_210");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|801691495");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_210_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_210_FinishedInterrupted,
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|806681659");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_MultipleOR_205 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_205;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_205");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|812905682");
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
        [0] = self.f_box_MultipleOR_205_Out,
    });
    self.box_UNI35_001_B10_STPSwitch_53 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI35/UNI35_001/UNI35_001_B10.UNI35_001_B10_STPSwitch.debug.lua");
    l0 = self.box_UNI35_001_B10_STPSwitch_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI35_001_B10_STPSwitch_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|815210035");
    l0:SetConnections({
        -- SwitchDone,
        [1] = self.f_box_UNI35_001_B10_STPSwitch_53_SwitchDone,
    });
    self.box_OnceOnly_v3_131 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|848900418");
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
                [0] = self.f_box_OnceOnly_v3_131_Out_0,
            },
            count = 1,
        },
    });
    self.box_Brick_Hostage_Setup_v2_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
    l0 = self.box_Brick_Hostage_Setup_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Hostage_Setup_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|855710300");
    l0:SetConnections({
        -- NextHostage,
        [1] = self.f_box_Brick_Hostage_Setup_v2_3_NextHostage,
    });
    self.box_UNI35_001_B10_STPSwitch_285 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI35/UNI35_001/UNI35_001_B10.UNI35_001_B10_STPSwitch.debug.lua");
    l0 = self.box_UNI35_001_B10_STPSwitch_285;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI35_001_B10_STPSwitch_285");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|877429270");
    l0:SetConnections({
    });
    self.box_ContextualActionListener_36 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|884029333");
    l0:SetConnections({
        -- Start,
        [8] = self.f_box_ContextualActionListener_36_Start,
    });
    self.box_GroupSizeListener_v5_45 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|886366489");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_45_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_45_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_45_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_45_MemberRemoved,
    });
    self.box_PlayDialog_v6_89 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|899878838");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_89_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_89_FinishedInterrupted,
    });
    self.box_TeleportPawns_132 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|909408050");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_132_Out,
    });
    self.box_GroupSizeListener_v5_112 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|918301902");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_112_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_112_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_112_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_112_MemberRemoved,
    });
    self.box_PlayerFullyDetected_14 = cbox:CreateBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
    l0 = self.box_PlayerFullyDetected_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerFullyDetected_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|929202090");
    l0:SetConnections({
        -- Detected,
        [0] = self.f_box_PlayerFullyDetected_14_Detected,
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|940382296");
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
        [0] = self.f_box_MultipleOR_25_Out,
    });
    self.box_Delay_v5_139 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1010168576");
    l0:SetConnections({
    });
    self.box_MultipleOR_115 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1056536194");
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
        [0] = self.f_box_MultipleOR_115_Out,
    });
    self.box_NarrativeSceneSetup_22 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1073063554");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_NarrativeSceneSetup_22_Out,
    });
    self.box_Delay_v5_96 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1099251957");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_96_TimeElapsed,
    });
    self.box_SoundModifier_v2_126 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1125166691");
    l0:SetConnections({
    });
    self.box_StartCelebration_125 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1150957943");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_125_Ended,
        -- Started,
        [1] = self.f_box_StartCelebration_125_Started,
    });
    self.box_OnceOnly_v3_72 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1152025210");
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
                [0] = self.f_box_OnceOnly_v3_72_Out_0,
            },
            count = 1,
        },
    });
    self.box_StateListener_v2_124 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1161401891");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_124_StateStart,
        -- StateStop,
        [4] = self.f_box_StateListener_v2_124_StateStop,
    });
    self.box_SoundMusicTriggerBox_34 = cbox:CreateBox("Domino/System/SoundMusicTrigger.lua");
    l0 = self.box_SoundMusicTriggerBox_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMusicTriggerBox_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1233889262");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundMusicTriggerBox_34_Started,
    });
    self.box_CharacterLoadedIdListener_18 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1262406589");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_18_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_18_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_18_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_18_LoadedIdReceived,
    });
    self.box_PlayDialog_v6_198 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_198");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1308039833");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_198_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_198_FinishedInterrupted,
    });
    self.box_Delay_v5_121 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1316408616");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_121_TimeElapsed,
    });
    self.box_UIMode_55 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.UIMode.debug.lua");
    l0 = self.box_UIMode_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UIMode_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1340961415");
    l0:SetConnections({
    });
    self.box_UNI35_001_B10_PlaneRadio_109 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI35/UNI35_001/UNI35_001_B10.UNI35_001_B10_PlaneRadio.debug.lua");
    l0 = self.box_UNI35_001_B10_PlaneRadio_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI35_001_B10_PlaneRadio_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1388412542");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_151 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1390365894");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_151_Enter,
    });
    self.box_Delay_v5_19 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1450005568");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_19_TimeElapsed,
    });
    self.box_PlayDialog_v6_203 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_203;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_203");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1455175933");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_203_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_203_FinishedInterrupted,
    });
    self.box_Delay_v5_20 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1482835556");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_20_TimeElapsed,
    });
    self.box_UNI35_001_B10_STPSwitch_31 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI35/UNI35_001/UNI35_001_B10.UNI35_001_B10_STPSwitch.debug.lua");
    l0 = self.box_UNI35_001_B10_STPSwitch_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI35_001_B10_STPSwitch_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1507355303");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_UNI35_001_B10_STPSwitch_31_Out,
    });
    self.box_SoundModifier_v2_10 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1511133503");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_84 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1520519205");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_84_Loaded,
    });
    self.box_MultipleOR_194 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_194;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_194");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1555070163");
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
        [0] = self.f_box_MultipleOR_194_Out,
    });
    self.box_MultipleOR_202 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_202;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_202");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1561232017");
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
        [0] = self.f_box_MultipleOR_202_Out,
    });
    self.box_MultipleOR_104 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1575100032");
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
        [0] = self.f_box_MultipleOR_104_Out,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1623161998");
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
        [0] = self.f_box_MultipleOR_5_Out,
    });
    self.box_Delay_v5_280 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_280;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_280");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1651340352");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_280_TimeElapsed,
    });
    self.box_ActivityInitialized_7 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1679022508");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_7_Out,
    });
    self.box_Delay_v5_287 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_287;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_287");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1685440018");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_287_TimeElapsed,
    });
    self.box_PlayDialog_v6_192 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_192;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_192");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1697863942");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_192_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_192_FinishedInterrupted,
    });
    self.box_OnceOnly_v3_116 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1702856090");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_116_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_107 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1712026169");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_107_TimeElapsed,
    });
    self.box_UNI35_001_B10_STPSwitch_119 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI35/UNI35_001/UNI35_001_B10.UNI35_001_B10_STPSwitch.debug.lua");
    l0 = self.box_UNI35_001_B10_STPSwitch_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI35_001_B10_STPSwitch_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1728263666");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_UNI35_001_B10_STPSwitch_119_Out,
    });
    self.box_PlayDialog_v6_207 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_207;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_207");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1770411292");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_207_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_207_FinishedInterrupted,
    });
    self.box_OnceOnly_v3_135 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1775997203");
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
                [0] = self.f_box_OnceOnly_v3_135_Out_0,
            },
            count = 1,
        },
    });
    self.box_Brick_Hostage_Setup_v2_37 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
    l0 = self.box_Brick_Hostage_Setup_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Hostage_Setup_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1776633850");
    l0:SetConnections({
        -- NextHostage,
        [1] = self.f_box_Brick_Hostage_Setup_v2_37_NextHostage,
    });
    self.box_Brick_Secure_Area_v5_23 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Secure_Area.Brick_Secure_Area_v5.debug.lua");
    l0 = self.box_Brick_Secure_Area_v5_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Secure_Area_v5_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1778370450");
    l0:SetConnections({
        -- Started,
        [0] = self.f_box_Brick_Secure_Area_v5_23_Started,
        -- Success,
        [1] = self.f_box_Brick_Secure_Area_v5_23_Success,
    });
    self.box_ContextualActionListener_286 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_286;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_286");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1785771333");
    l0:SetConnections({
        -- Start,
        [8] = self.f_box_ContextualActionListener_286_Start,
    });
    self.box_UNI35_001_B10_STPSwitch_26 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI35/UNI35_001/UNI35_001_B10.UNI35_001_B10_STPSwitch.debug.lua");
    l0 = self.box_UNI35_001_B10_STPSwitch_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI35_001_B10_STPSwitch_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1807558258");
    l0:SetConnections({
        -- SwitchDone,
        [1] = self.f_box_UNI35_001_B10_STPSwitch_26_SwitchDone,
    });
    self.box_MultipleOR_85 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1810035594");
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
        [0] = self.f_box_MultipleOR_85_Out,
    });
    self.box_UNI35_001_B10_STPSwitch_28 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI35/UNI35_001/UNI35_001_B10.UNI35_001_B10_STPSwitch.debug.lua");
    l0 = self.box_UNI35_001_B10_STPSwitch_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI35_001_B10_STPSwitch_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1884500268");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_UNI35_001_B10_STPSwitch_28_Out,
    });
    self.box_UNI35_001_B10_STPSwitch_120 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI35/UNI35_001/UNI35_001_B10.UNI35_001_B10_STPSwitch.debug.lua");
    l0 = self.box_UNI35_001_B10_STPSwitch_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UNI35_001_B10_STPSwitch_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1898128216");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_UNI35_001_B10_STPSwitch_120_Out,
    });
    self.box_RemoveEntity_v2_97 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1915443786");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_97_Out,
    });
    self.box_MultipleOR_189 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_189");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1923634481");
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
        [0] = self.f_box_MultipleOR_189_Out,
    });
    self.box_GodMode_v3_52 = cbox:CreateBox("Domino/System/Coop/AllPlayers/GodMode_v3.lua");
    l0 = self.box_GodMode_v3_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GodMode_v3_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1942870192");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GodMode_v3_52_Disabled,
    });
    self.box_Brick_Free_Hostages_v2_40 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Free_Hostages_v2.debug.lua");
    l0 = self.box_Brick_Free_Hostages_v2_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Free_Hostages_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1965669427");
    l0:SetConnections({
    });
    self.box_MultipleOR_122 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|2018934710");
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
        [0] = self.f_box_MultipleOR_122_Out,
    });
    self.box_TeleportPawns_130 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|2025766258");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_130_Out,
    });
    self.box_Switch_91 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|2032662146");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 7,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_91_Output_0,
                [1] = self.f_box_Switch_91_Output_1,
                [2] = self.f_box_Switch_91_Output_2,
                [3] = self.f_box_Switch_91_Output_3,
                [4] = self.f_box_Switch_91_Output_4,
                [5] = self.f_box_Switch_91_Output_5,
                [6] = self.f_box_Switch_91_Output_6,
            },
            count = 7,
        },
    });
    self.box_MultipleOR_106 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|2082530796");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 3,
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
        [0] = self.f_box_MultipleOR_106_Out,
    });
    self.box_MultipleAND_v2_128 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|2111874470");
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
        [0] = self.f_box_MultipleAND_v2_128_Out,
    });
    self.box_Delay_v5_88 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|2114601722");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_88_TimeElapsed,
    });
    self.box_MultipleAND_v2_76 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|2114974512");
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
        [0] = self.f_box_MultipleAND_v2_76_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1068889585", "1068889585", "UNI35_001_B10", "In", "box_OutputOrder_v2_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_98();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1094488232", "1094488232", "UNI35_001_B10", "OnLeaveZone", "box_OutputOrder_v2_98.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_80_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_76();
    l0 = self.box_MultipleAND_v2_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1716793824", "1716793824", "UNI35_001_B10", "box_Simple_Node_80.Out", "box_MultipleAND_v2_76.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Simple_Node_95_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_88();
    l0 = self.box_Delay_v5_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|235661267", "235661267", "UNI35_001_B10", "box_Simple_Node_95.Out", "box_Delay_v5_88.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_61_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayTextModifier_v6_87();
    l0 = Boxes[GetPathID("Domino/System/DiplayTextModifier_v6.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1428260742", "1428260742", "UNI35_001_B10", "box_Simple_Node_61.Out", "box_DisplayTextModifier_v6_87.DisplayText", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisplayText
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Delay_v5_57();
    l0 = self.box_Delay_v5_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|589923753", "589923753", "UNI35_001_B10", "box_Simple_Node_61.Out", "box_Delay_v5_57.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_VehicleDamageListener_v2_60();
    l0 = self.box_VehicleDamageListener_v2_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|426500476", "426500476", "UNI35_001_B10", "box_Simple_Node_61.Out", "box_VehicleDamageListener_v2_60.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_143_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1293943342", "1293943342", "UNI35_001_B10", "box_Simple_Node_143.Out", "box_OutputOrder_v2_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_105_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_101();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|192436442", "192436442", "UNI35_001_B10", "box_Simple_Node_105.Out", "box_OutputOrder_v2_101.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_137_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI35_001_B10_STPSwitch_120();
    l0 = self.box_UNI35_001_B10_STPSwitch_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|804675385", "804675385", "UNI35_001_B10", "box_Simple_Node_137.Out", "box_UNI35_001_B10_STPSwitch_120.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_150_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_198();
    l0 = self.box_PlayDialog_v6_198;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|2060351209", "2060351209", "UNI35_001_B10", "box_Simple_Node_150.Out", "box_PlayDialog_v6_198.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_210();
    l0 = self.box_PlayDialog_v6_210;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|453949013", "453949013", "UNI35_001_B10", "box_Simple_Node_150.Out", "box_PlayDialog_v6_210.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_186();
    l0 = self.box_PlayDialog_v6_186;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|950613158", "950613158", "UNI35_001_B10", "box_Simple_Node_150.Out", "box_PlayDialog_v6_186.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_93();
    l0 = self.box_PlayDialog_v6_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|773428805", "773428805", "UNI35_001_B10", "box_Simple_Node_150.Out", "box_PlayDialog_v6_93.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_89();
    l0 = self.box_PlayDialog_v6_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1548456454", "1548456454", "UNI35_001_B10", "box_Simple_Node_150.Out", "box_PlayDialog_v6_89.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_Delay_v5_88();
    l0 = self.box_Delay_v5_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|2137779151", "2137779151", "UNI35_001_B10", "box_Simple_Node_150.Out", "box_Delay_v5_88.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_PlayDialog_v6_203();
    l0 = self.box_PlayDialog_v6_203;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|378819964", "378819964", "UNI35_001_B10", "box_Simple_Node_150.Out", "box_PlayDialog_v6_203.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_ProximityTrigger_v2_86();
    l0 = self.box_ProximityTrigger_v2_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1994902238", "1994902238", "UNI35_001_B10", "box_Simple_Node_150.Out", "box_ProximityTrigger_v2_86.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_PlayDialog_v6_192();
    l0 = self.box_PlayDialog_v6_192;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1203529931", "1203529931", "UNI35_001_B10", "box_Simple_Node_150.Out", "box_PlayDialog_v6_192.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
    params = self:OnEnter_box_PlayDialog_v6_207();
    l0 = self.box_PlayDialog_v6_207;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|505652911", "505652911", "UNI35_001_B10", "box_Simple_Node_150.Out", "box_PlayDialog_v6_207.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_99_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|293528431", "293528431", "UNI35_001_B10", "box_Simple_Node_99.Out", "box_OnceOnly_v3_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_110_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|218138063", "218138063", "UNI35_001_B10", "box_Simple_Node_110.Out", "box_OnceOnly_v3_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_112();
    l0 = self.box_GroupSizeListener_v5_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1882820707", "1882820707", "UNI35_001_B10", "box_OutputOrder_v2_24.Out", "box_GroupSizeListener_v5_112.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_105();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1332279568", "1332279568", "UNI35_001_B10", "box_OutputOrder_v2_24.Out", "box_Simple_Node_105.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_47_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_51();
    l0 = self.box_SpawnAI_47;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|816414052", "816414052", "UNI35_001_B10", "box_SpawnAI_47.Out", "box_SetBoolean_v2_51.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_47_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_110();
    l0 = self.box_SpawnAI_47;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|961671104", "961671104", "UNI35_001_B10", "box_SpawnAI_47.Spawned", "box_Simple_Node_110.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_6();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1393087046", "1393087046", "UNI35_001_B10", "box_OutputOrder_v2_2.Out", "box_Print_v2_6.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|354731223", "354731223", "UNI35_001_B10", "box_OutputOrder_v2_2.Out", "box_ActivityAcknowledgeGate_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_StateListener_v2_133_StateStart()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_134();
    l0 = self.box_StateListener_v2_133;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|344064113", "344064113", "UNI35_001_B10", "box_StateListener_v2_133.StateStart", "box_SetContextualStrategy_134.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StateListener_v2_133_StateStop()
    local l0, l1;
    l0 = self.box_StateListener_v2_133;
    l1 = self.box_MultipleOR_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1341788548", "1341788548", "UNI35_001_B10", "box_StateListener_v2_133.StateStop", "box_MultipleOR_140.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_94_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_95();
    l0 = self.box_MultipleOR_94;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1317761172", "1317761172", "UNI35_001_B10", "box_MultipleOR_94.Out", "box_Simple_Node_95.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_140_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_140;
    l1 = self.box_OnceOnly_v3_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|766700948", "766700948", "UNI35_001_B10", "box_MultipleOR_140.Out", "box_OnceOnly_v3_135.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_93_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_93;
    l1 = self.box_MultipleOR_194;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|695569449", "695569449", "UNI35_001_B10", "box_PlayDialog_v6_93.Finished", "box_MultipleOR_194.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_93_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_93;
    l1 = self.box_MultipleOR_194;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|65027204", "65027204", "UNI35_001_B10", "box_PlayDialog_v6_93.FinishedInterrupted", "box_MultipleOR_194.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetLocalPlayer_v2_8_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_8_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_1();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|2020095346", "2020095346", "UNI35_001_B10", "box_GetLocalPlayer_v2_8.Out", "box_GetPlayerGroup_v2_1.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StateListener_v2_90_StateStart()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_150();
    l0 = self.box_StateListener_v2_90;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|323569355", "323569355", "UNI35_001_B10", "box_StateListener_v2_90.StateStart", "box_Simple_Node_150.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_275_End()
    local params, l0, l1;
    params = self:OnEnter_box_UNI35_001_B10_STPSwitch_119();
    l0 = self.box_ContextualActionListener_275;
    l1 = self.box_UNI35_001_B10_STPSwitch_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|2080634501", "2080634501", "UNI35_001_B10", "box_ContextualActionListener_275.End", "box_UNI35_001_B10_STPSwitch_119.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_49_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_61();
    l0 = self.box_SpawnAI_49;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1241873601", "1241873601", "UNI35_001_B10", "box_SpawnAI_49.Out", "box_Simple_Node_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_49_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_84();
    l0 = self.box_SpawnAI_49;
    l1 = self.box_EntityStatusListener_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|2038226277", "2038226277", "UNI35_001_B10", "box_SpawnAI_49.Spawned", "box_EntityStatusListener_84.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_70_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_70;
    l1 = self.box_UNI35_001_B10_PlaneRadio_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|829908240", "829908240", "UNI35_001_B10", "box_OnceOnly_v3_70.Out", "box_UNI35_001_B10_PlaneRadio_109.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_VehicleDamageListener_v2_60_Broken()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_60;
    l1 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|298022135", "298022135", "UNI35_001_B10", "box_VehicleDamageListener_v2_60.Broken", "box_MultipleOR_106.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleDamageListener_v2_60_Destroyed()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_60;
    l1 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1124731114", "1124731114", "UNI35_001_B10", "box_VehicleDamageListener_v2_60.Destroyed", "box_MultipleOR_106.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleDamageListener_v2_60_MajorDamage()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_60;
    l1 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|2106038639", "2106038639", "UNI35_001_B10", "box_VehicleDamageListener_v2_60.MajorDamage", "box_MultipleOR_106.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_57_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_47();
    l0 = self.box_Delay_v5_57;
    l1 = self.box_SpawnAI_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|892163452", "892163452", "UNI35_001_B10", "box_Delay_v5_57.TimeElapsed", "box_SpawnAI_47.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_79_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|771930254", "771930254", "UNI35_001_B10", "box_OutputOrder_v2_79.Out", "box_OnceOnly_v3_116.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_79_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_80();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|59627164", "59627164", "UNI35_001_B10", "box_OutputOrder_v2_79.Out", "box_Simple_Node_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_11_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_10();
    l0 = self.box_SoundModifier_v2_11;
    l1 = self.box_SoundModifier_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1399853245", "1399853245", "UNI35_001_B10", "box_SoundModifier_v2_11.Started", "box_SoundModifier_v2_10.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Compare_Integers_113_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_79();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|567005282", "567005282", "UNI35_001_B10", "box_Compare_Integers_113.A_le_B", "box_OutputOrder_v2_79.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|370477014", "370477014", "UNI35_001_B10", "box_OutputOrder_v2_29.Out", "box_OutputOrder_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_151();
    l0 = self.box_ProximityTrigger_v2_151;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1989464465", "1989464465", "UNI35_001_B10", "box_OutputOrder_v2_29.Out", "box_ProximityTrigger_v2_151.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_29_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_59();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1393894224", "1393894224", "UNI35_001_B10", "box_OutputOrder_v2_29.Out", "box_SetBoolean_v2_59.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerFullyDetected_14();
    l0 = self.box_PlayerFullyDetected_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1791629163", "1791629163", "UNI35_001_B10", "box_OutputOrder_v2_29.Out", "box_PlayerFullyDetected_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_29_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_78();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1034792010", "1034792010", "UNI35_001_B10", "box_OutputOrder_v2_29.Out", "box_OutputOrder_v2_78.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GodMode_v3_108_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_129();
    l0 = self.box_GodMode_v3_108;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|143332025", "143332025", "UNI35_001_B10", "box_GodMode_v3_108.Enabled", "box_ActivityEnd_129.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_92_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_91();
    l0 = self.box_MultipleOR_92;
    l1 = self.box_Switch_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|567611930", "567611930", "UNI35_001_B10", "box_MultipleOR_92.Out", "box_Switch_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_86_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_86;
    l1 = self.box_MultipleOR_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1663755692", "1663755692", "UNI35_001_B10", "box_ProximityTrigger_v2_86.OnOccupied", "box_MultipleOR_92.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetBoolean_v2_59_Out()
    self:OnExit_box_SetBoolean_v2_59_Out();
end;

function export:f_box_NarrativeFade_261_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_22();
    l0 = self.box_NarrativeFade_261;
    l1 = self.box_NarrativeSceneSetup_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|736841", "736841", "UNI35_001_B10", "box_NarrativeFade_261.FadedOut", "box_NarrativeSceneSetup_22.BasicSetup", l0:GetLuaBox(), l1:GetLuaBox());
    -- BasicSetup
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_281_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UNI35_001_B10_STPSwitch_53();
    l0 = self.box_OnceOnly_v3_281;
    l1 = self.box_UNI35_001_B10_STPSwitch_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1424208137", "1424208137", "UNI35_001_B10", "box_OnceOnly_v3_281.Out", "box_UNI35_001_B10_STPSwitch_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GodMode_v3_83_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_107();
    l0 = self.box_GodMode_v3_83;
    l1 = self.box_Delay_v5_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|534035977", "534035977", "UNI35_001_B10", "box_GodMode_v3_83.Enabled", "box_Delay_v5_107.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_CharacterLoadedIdListener_44_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_44_LoadedIdReceived();
    params = self:OnEnter_box_TeleportPawns_132();
    l0 = self.box_CharacterLoadedIdListener_44;
    l1 = self.box_TeleportPawns_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1732020560", "1732020560", "UNI35_001_B10", "box_CharacterLoadedIdListener_44.LoadedIdReceived", "box_TeleportPawns_132.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_41_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_71();
    l0 = self.box_ContextualActionListener_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1217378005", "1217378005", "UNI35_001_B10", "box_UseContextualActionModifier_v3_41.Disabled", "box_ContextualActionListener_71.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UNI35_001_B10_STPSwitch_26();
    l0 = self.box_UNI35_001_B10_STPSwitch_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|208109131", "208109131", "UNI35_001_B10", "box_OutputOrder_v2_15.Out", "box_UNI35_001_B10_STPSwitch_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_19();
    l0 = self.box_Delay_v5_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1755236541", "1755236541", "UNI35_001_B10", "box_OutputOrder_v2_15.Out", "box_Delay_v5_19.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetBoolean_v2_51_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_51_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_61();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|316052194", "316052194", "UNI35_001_B10", "box_SetBoolean_v2_51.Out", "box_Simple_Node_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_134_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1788972091", "1788972091", "UNI35_001_B10", "box_SetContextualStrategy_134.Out", "box_MultipleOR_140.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_127_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_127;
    l1 = self.box_OnceOnly_v3_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|207354188", "207354188", "UNI35_001_B10", "box_MultipleOR_127.Out", "box_OnceOnly_v3_131.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ContextualActionListener_71_Select()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_162();
    l0 = self.box_ContextualActionListener_71;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1775632707", "1775632707", "UNI35_001_B10", "box_ContextualActionListener_71.Select", "box_UseContextualActionModifier_v3_162.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_56_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_96();
    l0 = self.box_MultipleOR_56;
    l1 = self.box_Delay_v5_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1193738093", "1193738093", "UNI35_001_B10", "box_MultipleOR_56.Out", "box_Delay_v5_96.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_197_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_95();
    l0 = self.box_MultipleOR_197;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1441636327", "1441636327", "UNI35_001_B10", "box_MultipleOR_197.Out", "box_Simple_Node_95.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_30_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_121();
    l0 = self.box_ContextualActionListener_30;
    l1 = self.box_Delay_v5_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|400404589", "400404589", "UNI35_001_B10", "box_ContextualActionListener_30.Enabled", "box_Delay_v5_121.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ContextualActionListener_30_End()
    local l0, l1;
    l0 = self.box_ContextualActionListener_30;
    l1 = self.box_MultipleOR_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|429341623", "429341623", "UNI35_001_B10", "box_ContextualActionListener_30.End", "box_MultipleOR_122.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_186_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_186;
    l1 = self.box_MultipleOR_205;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|421683820", "421683820", "UNI35_001_B10", "box_PlayDialog_v6_186.Finished", "box_MultipleOR_205.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_186_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_186;
    l1 = self.box_MultipleOR_205;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|619579099", "619579099", "UNI35_001_B10", "box_PlayDialog_v6_186.FinishedInterrupted", "box_MultipleOR_205.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_111_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_125();
    l0 = self.box_StartCelebration_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|74849715", "74849715", "UNI35_001_B10", "box_OutputOrder_v2_111.Out", "box_StartCelebration_125.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_111_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_126();
    l0 = self.box_SoundModifier_v2_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|776478855", "776478855", "UNI35_001_B10", "box_OutputOrder_v2_111.Out", "box_SoundModifier_v2_126.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_111_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_272();
    l0 = self.box_SoundModifier_v2_272;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|472901066", "472901066", "UNI35_001_B10", "box_OutputOrder_v2_111.Out", "box_SoundModifier_v2_272.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_196_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_95();
    l0 = self.box_MultipleOR_196;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1252380183", "1252380183", "UNI35_001_B10", "box_MultipleOR_196.Out", "box_Simple_Node_95.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_74_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|534877915", "534877915", "UNI35_001_B10", "box_OutputOrder_v2_74.Out", "box_MultipleOR_56.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_74_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_110();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1413374310", "1413374310", "UNI35_001_B10", "box_OutputOrder_v2_74.Out", "box_Simple_Node_110.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_210_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_210;
    l1 = self.box_MultipleOR_189;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|531168889", "531168889", "UNI35_001_B10", "box_PlayDialog_v6_210.Finished", "box_MultipleOR_189.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_210_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_210;
    l1 = self.box_MultipleOR_189;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1449017681", "1449017681", "UNI35_001_B10", "box_PlayDialog_v6_210.FinishedInterrupted", "box_MultipleOR_189.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1366823157", "1366823157", "UNI35_001_B10", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1352827262", "1352827262", "UNI35_001_B10", "box_ActivityAcknowledgeGate_4.Reloaded", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_205_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_95();
    l0 = self.box_MultipleOR_205;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|353038670", "353038670", "UNI35_001_B10", "box_MultipleOR_205.Out", "box_Simple_Node_95.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI35_001_B10_STPSwitch_53_SwitchDone()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_286();
    l0 = self.box_UNI35_001_B10_STPSwitch_53;
    l1 = self.box_ContextualActionListener_286;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1666451838", "1666451838", "UNI35_001_B10", "box_UNI35_001_B10_STPSwitch_53.SwitchDone", "box_ContextualActionListener_286.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_131_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_3();
    l0 = self.box_OnceOnly_v3_131;
    l1 = self.box_Brick_Hostage_Setup_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|561129236", "561129236", "UNI35_001_B10", "box_OnceOnly_v3_131.Out", "box_Brick_Hostage_Setup_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Brick_Hostage_Setup_v2_3_NextHostage()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_128();
    l0 = self.box_Brick_Hostage_Setup_v2_3;
    l1 = self.box_MultipleAND_v2_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|706891245", "706891245", "UNI35_001_B10", "box_Brick_Hostage_Setup_v2_3.NextHostage", "box_MultipleAND_v2_128.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_ContextualActionListener_36_Start()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_20();
    l0 = self.box_ContextualActionListener_36;
    l1 = self.box_Delay_v5_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1230014700", "1230014700", "UNI35_001_B10", "box_ContextualActionListener_36.Start", "box_Delay_v5_20.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GroupSizeListener_v5_45_Enabled()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_45_Enabled();
    l0 = self.box_GroupSizeListener_v5_45;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1706390561", "1706390561", "UNI35_001_B10", "box_GroupSizeListener_v5_45.Enabled", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_45_MemberAdded()
    self:OnExit_box_GroupSizeListener_v5_45_MemberAdded();
end;

function export:f_box_GroupSizeListener_v5_45_MemberRemoved()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v5_45_MemberRemoved();
    params = self:OnEnter_box_OutputOrder_v2_102();
    l0 = self.box_GroupSizeListener_v5_45;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1446692505", "1446692505", "UNI35_001_B10", "box_GroupSizeListener_v5_45.MemberRemoved", "box_OutputOrder_v2_102.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_89_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_89;
    l1 = self.box_MultipleOR_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1569364182", "1569364182", "UNI35_001_B10", "box_PlayDialog_v6_89.Finished", "box_MultipleOR_85.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_89_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_89;
    l1 = self.box_MultipleOR_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|516297467", "516297467", "UNI35_001_B10", "box_PlayDialog_v6_89.FinishedInterrupted", "box_MultipleOR_85.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_TeleportPawns_132_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StateListener_v2_133();
    l0 = self.box_TeleportPawns_132;
    l1 = self.box_StateListener_v2_133;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|408990338", "408990338", "UNI35_001_B10", "box_TeleportPawns_132.Out", "box_StateListener_v2_133.Idle_RelaxCautious", l0:GetLuaBox(), l1:GetLuaBox());
    -- Idle_RelaxCautious
    l1:Exec(4, params);
end;

function export:f_box_GroupSizeListener_v5_112_Enabled()
    self:OnExit_box_GroupSizeListener_v5_112_Enabled();
end;

function export:f_box_GroupSizeListener_v5_112_MemberAdded()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_112_MemberAdded();
    l0 = self.box_GroupSizeListener_v5_112;
    l1 = self.box_MultipleOR_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1475692231", "1475692231", "UNI35_001_B10", "box_GroupSizeListener_v5_112.MemberAdded", "box_MultipleOR_115.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_112_MemberRemoved()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_112_MemberRemoved();
    l0 = self.box_GroupSizeListener_v5_112;
    l1 = self.box_MultipleOR_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|2101560892", "2101560892", "UNI35_001_B10", "box_GroupSizeListener_v5_112.MemberRemoved", "box_MultipleOR_115.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayerFullyDetected_14_Detected()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityNotifyStatus_21();
    l0 = self.box_PlayerFullyDetected_14;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityNotifyStatus.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1501554577", "1501554577", "UNI35_001_B10", "box_PlayerFullyDetected_14.Detected", "box_ActivityNotifyStatus_21.SetPlayerDetected", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetPlayerDetected
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_43();
    l0 = self.box_MultipleOR_25;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1390722117", "1390722117", "UNI35_001_B10", "box_MultipleOR_25.Out", "box_Compare_Integers_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_17();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1375345626", "1375345626", "UNI35_001_B10", "box_OutputOrder_v2_50.Out", "box_Print_v2_17.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_58();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1495376294", "1495376294", "UNI35_001_B10", "box_OutputOrder_v2_50.Out", "box_Compare_Boolean_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_123_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1023652299", "1023652299", "UNI35_001_B10", "box_SetContextualStrategy_123.Out", "box_MultipleOR_127.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_54_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_49();
    l0 = self.box_SpawnAI_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|183323047", "183323047", "UNI35_001_B10", "box_Compare_Boolean_54.A_is_False", "box_SpawnAI_49.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_54_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1957950419", "1957950419", "UNI35_001_B10", "box_Compare_Boolean_54.A_is_True", "box_MultipleOR_56.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_DisplayTextModifier_v6_87_TextDisplayed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DiplayTextModifier_v6.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_142();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|556907286", "556907286", "UNI35_001_B10", "box_DisplayTextModifier_v6_87.TextDisplayed", "box_AddActivityObjective_v2_142.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Secure_Area_v5_23();
    l0 = self.box_Brick_Secure_Area_v5_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1555370362", "1555370362", "UNI35_001_B10", "box_OutputOrder_v2_13.Out", "box_Brick_Secure_Area_v5_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_9();
    l0 = self.box_Brick_Hostage_Setup_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|524731279", "524731279", "UNI35_001_B10", "box_OutputOrder_v2_13.Out", "box_Brick_Hostage_Setup_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_18();
    l0 = self.box_CharacterLoadedIdListener_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|802325710", "802325710", "UNI35_001_B10", "box_OutputOrder_v2_13.Out", "box_CharacterLoadedIdListener_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_44();
    l0 = self.box_CharacterLoadedIdListener_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|945204808", "945204808", "UNI35_001_B10", "box_OutputOrder_v2_13.Out", "box_CharacterLoadedIdListener_44.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_115_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_235();
    l0 = self.box_MultipleOR_115;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1331698071", "1331698071", "UNI35_001_B10", "box_MultipleOR_115.Out", "box_OutputOrder_v2_235.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneSetup_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_82();
    l0 = self.box_NarrativeSceneSetup_22;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|568810007", "568810007", "UNI35_001_B10", "box_NarrativeSceneSetup_22.Out", "box_BroadcastMessage_82.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_96_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_45();
    l0 = self.box_Delay_v5_96;
    l1 = self.box_GroupSizeListener_v5_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|2147018112", "2147018112", "UNI35_001_B10", "box_Delay_v5_96.TimeElapsed", "box_GroupSizeListener_v5_45.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StartCelebration_125_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_261();
    l0 = self.box_StartCelebration_125;
    l1 = self.box_NarrativeFade_261;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|892300503", "892300503", "UNI35_001_B10", "box_StartCelebration_125.Ended", "box_NarrativeFade_261.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_StartCelebration_125_Started()
    local l0, l1;
    l0 = self.box_StartCelebration_125;
    l1 = self.box_UIMode_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1125216895", "1125216895", "UNI35_001_B10", "box_StartCelebration_125.Started", "box_UIMode_55.OutpostMode", l0:GetLuaBox(), l1:GetLuaBox());
    -- OutpostMode
    l1:Exec(2, {
    });
end;

function export:f_box_OnceOnly_v3_72_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_72;
    l1 = self.box_UNI35_001_B10_PlaneRadio_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1986628985", "1986628985", "UNI35_001_B10", "box_OnceOnly_v3_72.Out", "box_UNI35_001_B10_PlaneRadio_109.PlaneDown", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlaneDown
    l1:Exec(1, {
    });
end;

function export:f_box_StateListener_v2_124_StateStart()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_123();
    l0 = self.box_StateListener_v2_124;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|906281197", "906281197", "UNI35_001_B10", "box_StateListener_v2_124.StateStart", "box_SetContextualStrategy_123.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StateListener_v2_124_StateStop()
    local l0, l1;
    l0 = self.box_StateListener_v2_124;
    l1 = self.box_MultipleOR_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1045143165", "1045143165", "UNI35_001_B10", "box_StateListener_v2_124.StateStop", "box_MultipleOR_127.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SoundMusicTriggerBox_34_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_11();
    l0 = self.box_SoundMusicTriggerBox_34;
    l1 = self.box_SoundModifier_v2_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1526263673", "1526263673", "UNI35_001_B10", "box_SoundMusicTriggerBox_34.Started", "box_SoundModifier_v2_11.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_ActivityNotifyStatus_21_OnSetPlayerDetected()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityNotifyStatus.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_76();
    l0 = self.box_MultipleAND_v2_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1423880102", "1423880102", "UNI35_001_B10", "box_ActivityNotifyStatus_21.OnSetPlayerDetected", "box_MultipleAND_v2_76.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_Compare_Integers_43_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_GodMode_v3_83();
    l0 = self.box_GodMode_v3_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|960114834", "960114834", "UNI35_001_B10", "box_Compare_Integers_43.A_le_B", "box_GodMode_v3_83.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_18_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_18_LoadedIdReceived();
    params = self:OnEnter_box_TeleportPawns_130();
    l0 = self.box_CharacterLoadedIdListener_18;
    l1 = self.box_TeleportPawns_130;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|33175309", "33175309", "UNI35_001_B10", "box_CharacterLoadedIdListener_18.LoadedIdReceived", "box_TeleportPawns_130.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_198_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_198;
    l1 = self.box_MultipleOR_196;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1187588099", "1187588099", "UNI35_001_B10", "box_PlayDialog_v6_198.Finished", "box_MultipleOR_196.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_198_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_198;
    l1 = self.box_MultipleOR_196;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|997277971", "997277971", "UNI35_001_B10", "box_PlayDialog_v6_198.FinishedInterrupted", "box_MultipleOR_196.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_121_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_121;
    l1 = self.box_MultipleOR_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|555752051", "555752051", "UNI35_001_B10", "box_Delay_v5_121.TimeElapsed", "box_MultipleOR_122.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_151_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = self.box_ProximityTrigger_v2_151;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1129235632", "1129235632", "UNI35_001_B10", "box_ProximityTrigger_v2_151.Enter", "box_OutputOrder_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMusicTriggerBox_34();
    l0 = self.box_SoundMusicTriggerBox_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|476869600", "476869600", "UNI35_001_B10", "box_OutputOrder_v2_42.Out", "box_SoundMusicTriggerBox_34.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_35();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|623165993", "623165993", "UNI35_001_B10", "box_OutputOrder_v2_42.Out", "box_Print_v2_35.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_19_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_41();
    l0 = self.box_Delay_v5_19;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1008419329", "1008419329", "UNI35_001_B10", "box_Delay_v5_19.TimeElapsed", "box_UseContextualActionModifier_v3_41.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_203_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_203;
    l1 = self.box_MultipleOR_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1528212065", "1528212065", "UNI35_001_B10", "box_PlayDialog_v6_203.Finished", "box_MultipleOR_94.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_203_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_203;
    l1 = self.box_MultipleOR_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|682431773", "682431773", "UNI35_001_B10", "box_PlayDialog_v6_203.FinishedInterrupted", "box_MultipleOR_94.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_AddActivityObjective_v2_142_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_141();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|849821008", "849821008", "UNI35_001_B10", "box_AddActivityObjective_v2_142.Out", "box_ActivityObjectiveMarkerModifier_v3_141.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_20_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_137();
    l0 = self.box_Delay_v5_20;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|827443686", "827443686", "UNI35_001_B10", "box_Delay_v5_20.TimeElapsed", "box_Simple_Node_137.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI35_001_B10_STPSwitch_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = self.box_UNI35_001_B10_STPSwitch_31;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1392232938", "1392232938", "UNI35_001_B10", "box_UNI35_001_B10_STPSwitch_31.Out", "box_OutputOrder_v2_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_84_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_74();
    l0 = self.box_EntityStatusListener_84;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|513755444", "513755444", "UNI35_001_B10", "box_EntityStatusListener_84.Loaded", "box_OutputOrder_v2_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_194_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_210();
    l0 = self.box_MultipleOR_194;
    l1 = self.box_PlayDialog_v6_210;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|64200996", "64200996", "UNI35_001_B10", "box_MultipleOR_194.Out", "box_PlayDialog_v6_210.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_202_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_95();
    l0 = self.box_MultipleOR_202;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1422819039", "1422819039", "UNI35_001_B10", "box_MultipleOR_202.Out", "box_Simple_Node_95.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_104_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = self.box_MultipleOR_104;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1216749741", "1216749741", "UNI35_001_B10", "box_MultipleOR_104.Out", "box_OutputOrder_v2_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_98_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_143();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|987400674", "987400674", "UNI35_001_B10", "box_OutputOrder_v2_98.Out", "box_Simple_Node_143.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_98_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GodMode_v3_52();
    l0 = self.box_GodMode_v3_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|496047572", "496047572", "UNI35_001_B10", "box_OutputOrder_v2_98.Out", "box_GodMode_v3_52.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_8();
    l0 = self.box_MultipleOR_5;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1622861263", "1622861263", "UNI35_001_B10", "box_MultipleOR_5.Out", "box_GetLocalPlayer_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_280_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UNI35_001_B10_STPSwitch_279();
    l0 = self.box_Delay_v5_280;
    l1 = self.box_UNI35_001_B10_STPSwitch_279;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1925552545", "1925552545", "UNI35_001_B10", "box_Delay_v5_280.TimeElapsed", "box_UNI35_001_B10_STPSwitch_279.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ActivityInitialized_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = self.box_ActivityInitialized_7;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|759131341", "759131341", "UNI35_001_B10", "box_ActivityInitialized_7.Out", "box_OutputOrder_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_287_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UNI35_001_B10_STPSwitch_285();
    l0 = self.box_Delay_v5_287;
    l1 = self.box_UNI35_001_B10_STPSwitch_285;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|2121051741", "2121051741", "UNI35_001_B10", "box_Delay_v5_287.TimeElapsed", "box_UNI35_001_B10_STPSwitch_285.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_38_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMusicTriggerBox_34();
    l0 = self.box_SoundMusicTriggerBox_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|312307144", "312307144", "UNI35_001_B10", "box_OutputOrder_v2_38.Out", "box_SoundMusicTriggerBox_34.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_38_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_39();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|424216814", "424216814", "UNI35_001_B10", "box_OutputOrder_v2_38.Out", "box_Print_v2_39.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_192_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_192;
    l1 = self.box_MultipleOR_202;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|287024930", "287024930", "UNI35_001_B10", "box_PlayDialog_v6_192.Finished", "box_MultipleOR_202.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_192_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_192;
    l1 = self.box_MultipleOR_202;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1402172948", "1402172948", "UNI35_001_B10", "box_PlayDialog_v6_192.FinishedInterrupted", "box_MultipleOR_202.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_116_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_114();
    l0 = self.box_OnceOnly_v3_116;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1336244080", "1336244080", "UNI35_001_B10", "box_OnceOnly_v3_116.Out", "box_SetContextualStrategy_114.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_107_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_111();
    l0 = self.box_Delay_v5_107;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|576028939", "576028939", "UNI35_001_B10", "box_Delay_v5_107.TimeElapsed", "box_OutputOrder_v2_111.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UNI35_001_B10_STPSwitch_119_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_280();
    l0 = self.box_UNI35_001_B10_STPSwitch_119;
    l1 = self.box_Delay_v5_280;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1930072208", "1930072208", "UNI35_001_B10", "box_UNI35_001_B10_STPSwitch_119.Out", "box_Delay_v5_280.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_207_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_207;
    l1 = self.box_MultipleOR_197;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|406966835", "406966835", "UNI35_001_B10", "box_PlayDialog_v6_207.Finished", "box_MultipleOR_197.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_207_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_207;
    l1 = self.box_MultipleOR_197;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|2057690737", "2057690737", "UNI35_001_B10", "box_PlayDialog_v6_207.FinishedInterrupted", "box_MultipleOR_197.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_135_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_37();
    l0 = self.box_OnceOnly_v3_135;
    l1 = self.box_Brick_Hostage_Setup_v2_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|508489677", "508489677", "UNI35_001_B10", "box_OnceOnly_v3_135.Out", "box_Brick_Hostage_Setup_v2_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Brick_Hostage_Setup_v2_37_NextHostage()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_128();
    l0 = self.box_Brick_Hostage_Setup_v2_37;
    l1 = self.box_MultipleAND_v2_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1388362228", "1388362228", "UNI35_001_B10", "box_Brick_Hostage_Setup_v2_37.NextHostage", "box_MultipleAND_v2_128.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_Brick_Secure_Area_v5_23_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = self.box_Brick_Secure_Area_v5_23;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1168041828", "1168041828", "UNI35_001_B10", "box_Brick_Secure_Area_v5_23.Started", "box_OutputOrder_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Secure_Area_v5_23_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_54();
    l0 = self.box_Brick_Secure_Area_v5_23;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1140601157", "1140601157", "UNI35_001_B10", "box_Brick_Secure_Area_v5_23.Success", "box_Compare_Boolean_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_286_Start()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_287();
    l0 = self.box_ContextualActionListener_286;
    l1 = self.box_Delay_v5_287;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|2106999212", "2106999212", "UNI35_001_B10", "box_ContextualActionListener_286.Start", "box_Delay_v5_287.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UNI35_001_B10_STPSwitch_26_SwitchDone()
    local params, l0, l1;
    params = self:OnEnter_box_UNI35_001_B10_STPSwitch_28();
    l0 = self.box_UNI35_001_B10_STPSwitch_26;
    l1 = self.box_UNI35_001_B10_STPSwitch_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1467984464", "1467984464", "UNI35_001_B10", "box_UNI35_001_B10_STPSwitch_26.SwitchDone", "box_UNI35_001_B10_STPSwitch_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_85_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_95();
    l0 = self.box_MultipleOR_85;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1491187286", "1491187286", "UNI35_001_B10", "box_MultipleOR_85.Out", "box_Simple_Node_95.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_102_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|110356574", "110356574", "UNI35_001_B10", "box_OutputOrder_v2_102.Out", "box_MultipleOR_25.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_102_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_99();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1086712278", "1086712278", "UNI35_001_B10", "box_OutputOrder_v2_102.Out", "box_Simple_Node_99.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_36();
    l0 = self.box_ContextualActionListener_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1503821526", "1503821526", "UNI35_001_B10", "box_OutputOrder_v2_27.Out", "box_ContextualActionListener_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_30();
    l0 = self.box_ContextualActionListener_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|802066075", "802066075", "UNI35_001_B10", "box_OutputOrder_v2_27.Out", "box_ContextualActionListener_30.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_27_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_139();
    l0 = self.box_Delay_v5_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1275551041", "1275551041", "UNI35_001_B10", "box_OutputOrder_v2_27.Out", "box_Delay_v5_139.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_235_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_113();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1930416509", "1930416509", "UNI35_001_B10", "box_OutputOrder_v2_235.Out", "box_Compare_Integers_113.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_235_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_260();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|502073413", "502073413", "UNI35_001_B10", "box_OutputOrder_v2_235.Out", "box_Simple_Node_260.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UNI35_001_B10_STPSwitch_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UNI35_001_B10_STPSwitch_31();
    l0 = self.box_UNI35_001_B10_STPSwitch_28;
    l1 = self.box_UNI35_001_B10_STPSwitch_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1593237489", "1593237489", "UNI35_001_B10", "box_UNI35_001_B10_STPSwitch_28.Out", "box_UNI35_001_B10_STPSwitch_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_UNI35_001_B10_STPSwitch_120_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_275();
    l0 = self.box_UNI35_001_B10_STPSwitch_120;
    l1 = self.box_ContextualActionListener_275;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1082910066", "1082910066", "UNI35_001_B10", "box_UNI35_001_B10_STPSwitch_120.Out", "box_ContextualActionListener_275.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_78_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_90();
    l0 = self.box_StateListener_v2_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|70735455", "70735455", "UNI35_001_B10", "box_OutputOrder_v2_78.Out", "box_StateListener_v2_90.Alert", clone:GetLuaBox(), l0:GetLuaBox());
    -- Alert
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_78_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_86();
    l0 = self.box_ProximityTrigger_v2_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1840238027", "1840238027", "UNI35_001_B10", "box_OutputOrder_v2_78.Out", "box_ProximityTrigger_v2_86.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_97_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GodMode_v3_108();
    l0 = self.box_RemoveEntity_v2_97;
    l1 = self.box_GodMode_v3_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1115145460", "1115145460", "UNI35_001_B10", "box_RemoveEntity_v2_97.Out", "box_GodMode_v3_108.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_189_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_95();
    l0 = self.box_MultipleOR_189;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1357892814", "1357892814", "UNI35_001_B10", "box_MultipleOR_189.Out", "box_Simple_Node_95.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GodMode_v3_52_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_117();
    l0 = self.box_GodMode_v3_52;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|629105963", "629105963", "UNI35_001_B10", "box_GodMode_v3_52.Disabled", "box_ActivityRetry_117.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_101_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1416310548", "1416310548", "UNI35_001_B10", "box_OutputOrder_v2_101.Out", "box_MultipleOR_104.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPlayerGroup_v2_1_Out()
    local l0;
    self:OnExit_box_GetPlayerGroup_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityInitialized_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|2012135322", "2012135322", "UNI35_001_B10", "box_GetPlayerGroup_v2_1.Out", "box_ActivityInitialized_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_MultipleOR_122_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_122;
    l1 = self.box_OnceOnly_v3_281;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|780090637", "780090637", "UNI35_001_B10", "box_MultipleOR_122.Out", "box_OnceOnly_v3_281.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_TeleportPawns_130_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StateListener_v2_124();
    l0 = self.box_TeleportPawns_130;
    l1 = self.box_StateListener_v2_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|490762470", "490762470", "UNI35_001_B10", "box_TeleportPawns_130.Out", "box_StateListener_v2_124.Idle_RelaxCautious", l0:GetLuaBox(), l1:GetLuaBox());
    -- Idle_RelaxCautious
    l1:Exec(4, params);
end;

function export:f_box_Switch_91_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_203();
    l0 = self.box_Switch_91;
    l1 = self.box_PlayDialog_v6_203;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1188522399", "1188522399", "UNI35_001_B10", "box_Switch_91.Output", "box_PlayDialog_v6_203.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_91_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_186();
    l0 = self.box_Switch_91;
    l1 = self.box_PlayDialog_v6_186;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|797286114", "797286114", "UNI35_001_B10", "box_Switch_91.Output", "box_PlayDialog_v6_186.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_91_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_89();
    l0 = self.box_Switch_91;
    l1 = self.box_PlayDialog_v6_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|250541112", "250541112", "UNI35_001_B10", "box_Switch_91.Output", "box_PlayDialog_v6_89.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_91_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_198();
    l0 = self.box_Switch_91;
    l1 = self.box_PlayDialog_v6_198;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1510382083", "1510382083", "UNI35_001_B10", "box_Switch_91.Output", "box_PlayDialog_v6_198.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_91_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_207();
    l0 = self.box_Switch_91;
    l1 = self.box_PlayDialog_v6_207;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|276950589", "276950589", "UNI35_001_B10", "box_Switch_91.Output", "box_PlayDialog_v6_207.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_91_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_93();
    l0 = self.box_Switch_91;
    l1 = self.box_PlayDialog_v6_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|265756355", "265756355", "UNI35_001_B10", "box_Switch_91.Output", "box_PlayDialog_v6_93.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_91_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_192();
    l0 = self.box_Switch_91;
    l1 = self.box_PlayDialog_v6_192;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1672812360", "1672812360", "UNI35_001_B10", "box_Switch_91.Output", "box_PlayDialog_v6_192.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_BroadcastMessage_82_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_97();
    l0 = self.box_RemoveEntity_v2_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1842995190", "1842995190", "UNI35_001_B10", "box_BroadcastMessage_82.Out", "box_RemoveEntity_v2_97.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_106_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_99();
    l0 = self.box_MultipleOR_106;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|730562619", "730562619", "UNI35_001_B10", "box_MultipleOR_106.Out", "box_Simple_Node_99.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_128_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Free_Hostages_v2_40();
    l0 = self.box_MultipleAND_v2_128;
    l1 = self.box_Brick_Free_Hostages_v2_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|702371582", "702371582", "UNI35_001_B10", "box_MultipleAND_v2_128.Out", "box_Brick_Free_Hostages_v2_40.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_88_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_88;
    l1 = self.box_MultipleOR_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|384151405", "384151405", "UNI35_001_B10", "box_Delay_v5_88.TimeElapsed", "box_MultipleOR_92.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleAND_v2_76_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = self.box_MultipleAND_v2_76;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1501326451", "1501326451", "UNI35_001_B10", "box_MultipleAND_v2_76.Out", "box_OutputOrder_v2_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_58_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_57();
    l0 = self.box_Delay_v5_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|2117861230", "2117861230", "UNI35_001_B10", "box_Compare_Boolean_58.A_is_False", "box_Delay_v5_57.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:OnEnter_box_Simple_Node_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|@5_Cultists_Left");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_80_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|@DialogDone_03");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_95_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|@n_CancelPlane");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_61_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_143()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|@n_OnLeaveZone");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_143_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|@n_Secure_Started");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_105_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|@NChurchSetup_Done");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_137_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_150()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|@nCultistAlert");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_150_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_260()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_260");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|@nProgressionBarks");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|@PlaneDown");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_99_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|@PlaneRadio_In");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_110_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|19886607");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2105349414754217834",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "UNI35_001_B10_SECURE",
            id = "875377",
        },
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|43601827");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2102335109049904955",
        -- Group,
        [1] = "#95374E7C",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|58875163");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "red",
        -- duration,
        [3] = 10,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "PLAYER UNDETECTED FALSE",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|86708951");
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
                [0] = self.f_box_OutputOrder_v2_24_Out_0,
                [1] = self.f_box_OutputOrder_v2_24_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_47()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102417458127204331",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|96881384");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_133()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = self.e_PastorJerome,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_93()
    local params;
    params = {
        -- Group,
        [0] = "2100982042782105719",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3317130228",
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|136681081");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_8_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|184207643");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 3,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "UNI35_001_B10 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_90()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "2100982042782105719",
    };
    return params;
end;

function export:OnEnter_box_UNI35_001_B10_STPSwitch_279()
    local params;
    params = {
        -- bInterrupt,
        [0] = false,
        -- NPC,
        [1] = "2100997136792453525",
        -- STP_01,
        [2] = "2102238380004743016",
        -- STP_02,
        [3] = "2102444799543066075",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_275()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2102806966016436620",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_49()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102417458127204331",
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_60()
    local params;
    params = {
        -- Vehicle,
        [0] = "2102417463349112860",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_57()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|352774217");
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
                [0] = self.f_box_OutputOrder_v2_79_Out_0,
                [1] = self.f_box_OutputOrder_v2_79_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_11()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "4024180144",
        -- SoundType,
        [2] = 17,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|387141370");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_113_A_le_B,
    });
    params = {
        -- A,
        [0] = self.fallsend_cultists,
        -- B,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|398255753");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 8,
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
                [0] = self.f_box_OutputOrder_v2_29_Out_0,
                [1] = self.f_box_OutputOrder_v2_29_Out_1,
                [2] = self.f_box_OutputOrder_v2_29_Out_2,
                [3] = self.f_box_OutputOrder_v2_29_Out_3,
                [5] = self.f_box_OutputOrder_v2_29_Out_5,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GodMode_v3_108()
    local params;
    params = {
        -- disableAfterBeat,
        [0] = false,
        -- Mode,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_86()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Players,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2102130036753611746",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|470590104");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_59_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_261()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_272()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "398540980",
        -- SoundType,
        [2] = 26,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_GodMode_v3_83()
    local params;
    params = {
        -- disableAfterBeat,
        [0] = false,
        -- Mode,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_44()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015202430234855",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|548492828");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_41_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2101631397136440275",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|559481022");
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|572464409");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_51_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|587558202");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Stop MU UNI35_001",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|600031048");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_134_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104231408533777086",
        -- Group,
        [1] = self.e_PastorJerome,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_71()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2101730232240198711",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_30()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2102444884937005526",
    };
    return params;
end;

function export:OnEnter_box_Brick_Hostage_Setup_v2_9()
    local params;
    params = {
        -- Hostage,
        [0] = "2101717363758995862",
        -- STP_Tied,
        [1] = "2102806966016436619",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_186()
    local params;
    params = {
        -- Group,
        [0] = "2100982042782105719",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "897503212",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|681277506");
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
                [0] = self.f_box_OutputOrder_v2_111_Out_0,
                [1] = self.f_box_OutputOrder_v2_111_Out_1,
                [2] = self.f_box_OutputOrder_v2_111_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|722149669");
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
                [0] = self.f_box_OutputOrder_v2_74_Out_0,
                [1] = self.f_box_OutputOrder_v2_74_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_210()
    local params;
    params = {
        -- Group,
        [0] = "2100982042782105719",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3791004776",
    };
    return params;
end;

function export:OnEnter_box_UNI35_001_B10_STPSwitch_53()
    local params;
    params = {
        -- bInterrupt,
        [0] = false,
        -- NPC,
        [1] = "2101717177456421485",
        -- STP_01,
        [2] = "2102444884937005526",
        -- STP_02,
        [3] = "2101717244374444898",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|820799338");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_Hostage_Setup_v2_3()
    local params;
    params = {
        -- Hostage,
        [0] = self.e_MaryMay,
        -- STP_Tied,
        [1] = "2104135861116361172",
    };
    return params;
end;

function export:OnEnter_box_UNI35_001_B10_STPSwitch_285()
    local params;
    params = {
        -- bInterrupt,
        [0] = false,
        -- NPC,
        [1] = "2101717177456421485",
        -- STP_01,
        [2] = "2101717244374444898",
        -- STP_02,
        [3] = "2102157425376320714",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_36()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2102238380004743016",
        -- UserFilter,
        [1] = "2100997136792453525",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_45()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#468C508D",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_89()
    local params;
    params = {
        -- Group,
        [0] = "2100982042782105719",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "416594196",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_132()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2104145364004121791",
        -- LoadingScreen,
        [2] = false,
        -- LoadSynch,
        [3] = false,
        -- Pawns,
        [4] = self.e_PastorJerome,
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_112()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#95374E7C",
    };
    return params;
end;

function export:OnEnter_box_PlayerFullyDetected_14()
    local params;
    params = {
        -- group,
        [0] = "#95374E7C",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|956189589");
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
                [0] = self.f_box_OutputOrder_v2_50_Out_0,
                [1] = self.f_box_OutputOrder_v2_50_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|964119452");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_123_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104135951291810652",
        -- Group,
        [1] = self.e_MaryMay,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_139()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1014257537");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_54_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_54_A_is_True,
    });
    params = {
        -- A,
        [0] = self.b_PlaneRespawned,
    };
    return params;
end;

function export:OnEnter_box_DisplayTextModifier_v6_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DiplayTextModifier_v6.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayTextModifier_v6_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1040509690");
    l0:SetConnections({
        -- TextDisplayed,
        [1] = self.f_box_DisplayTextModifier_v6_87_TextDisplayed,
    });
    params = {
        -- displayOverCinematic,
        [0] = false,
        -- displayTimer,
        [1] = 12,
        -- forceInstantDisplay,
        [2] = false,
        -- isKarmaEvent,
        [3] = false,
        -- textId,
        [4] = {
            section = "Objectives",
            item = "UNI35_001_B10_HINT",
            id = "618730",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1047814135");
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
                [2] = self.f_box_OutputOrder_v2_13_Out_2,
                [3] = self.f_box_OutputOrder_v2_13_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_22()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_96()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_126()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "2102059229",
        -- SoundType,
        [2] = 17,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_125()
    local params;
    params = {
        -- Preset,
        [0] = "9015206464378271",
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_124()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = self.e_MaryMay,
    };
    return params;
end;

function export:OnEnter_box_SoundMusicTriggerBox_34()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- Priority,
        [2] = 0,
        -- SoundType,
        [3] = 17,
        -- Stackable,
        [4] = false,
        -- StartEvent,
        [5] = "236193250",
        -- StopEvent,
        [6] = "3370378143",
        -- StopFadeOut,
        [7] = 5,
        -- WaitUntilMusicEndMarker,
        [8] = true,
        -- WaitUntilNotInVehicle,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityNotifyStatus_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityNotifyStatus.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityNotifyStatus_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1245252923");
    l0:SetConnections({
        -- OnSetPlayerDetected,
        [1] = self.f_box_ActivityNotifyStatus_21_OnSetPlayerDetected,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1257013211");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_43_A_le_B,
    });
    params = {
        -- A,
        [0] = self.i_plane,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_18()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015184053969608",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1262977117");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Start MU UNI35_001",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_198()
    local params;
    params = {
        -- Group,
        [0] = "2100982042782105719",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2290165745",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_121()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 40,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_151()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2101274296891481720",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1434669282");
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
                [0] = self.f_box_OutputOrder_v2_42_Out_0,
                [1] = self.f_box_OutputOrder_v2_42_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_19()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_203()
    local params;
    params = {
        -- Group,
        [0] = "2100982042782105719",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4085948327",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1471159595");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_142_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "UNI35_001_B10_SECURE",
            id = "875377",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_20()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_UNI35_001_B10_STPSwitch_31()
    local params;
    params = {
        -- bInterrupt,
        [0] = false,
        -- NPC,
        [1] = "2101717177456421485",
        -- STP_01,
        [2] = "2101717204008463041",
        -- STP_02,
        [3] = "2102444884937005526",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_10()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "4013606668",
        -- SoundType,
        [2] = 17,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_84()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102417463349112860",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1593828465");
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
                [0] = self.f_box_OutputOrder_v2_98_Out_0,
                [1] = self.f_box_OutputOrder_v2_98_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_280()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_287()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1689262863");
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
                [0] = self.f_box_OutputOrder_v2_38_Out_0,
                [1] = self.f_box_OutputOrder_v2_38_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_192()
    local params;
    params = {
        -- Group,
        [0] = "2100982042782105719",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "782701856",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_107()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_UNI35_001_B10_STPSwitch_119()
    local params;
    params = {
        -- bInterrupt,
        [0] = false,
        -- NPC,
        [1] = "2101717171322251805",
        -- STP_01,
        [2] = "2102806966016436620",
        -- STP_02,
        [3] = "2101841516153543122",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_207()
    local params;
    params = {
        -- Group,
        [0] = "2100982042782105719",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3687698008",
    };
    return params;
end;

function export:OnEnter_box_Brick_Hostage_Setup_v2_37()
    local params;
    params = {
        -- Hostage,
        [0] = self.e_PastorJerome,
        -- STP_Tied,
        [1] = "2104145364004121791",
    };
    return params;
end;

function export:OnEnter_box_Brick_Secure_Area_v5_23()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bRequiresObjective,
        [1] = false,
        -- gEnemyGroup,
        [3] = "#95374E7C",
        -- Objective,
        [4] = {
            section = "LD Gameplay Bricks",
            item = "BRICK_Secure_Area",
            id = "376594",
        },
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_286()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2101717244374444898",
    };
    return params;
end;

function export:OnEnter_box_UNI35_001_B10_STPSwitch_26()
    local params;
    params = {
        -- bInterrupt,
        [0] = false,
        -- NPC,
        [1] = "2100997136792453525",
        -- STP_01,
        [2] = "2101717203492563647",
        -- STP_02,
        [3] = "2102238380004743016",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1838684184");
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
                [0] = self.f_box_OutputOrder_v2_102_Out_0,
                [1] = self.f_box_OutputOrder_v2_102_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1855193417");
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
                [0] = self.f_box_OutputOrder_v2_27_Out_0,
                [1] = self.f_box_OutputOrder_v2_27_Out_1,
                [2] = self.f_box_OutputOrder_v2_27_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_235()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_235");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1862632363");
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
                [0] = self.f_box_OutputOrder_v2_235_Out_0,
                [1] = self.f_box_OutputOrder_v2_235_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UNI35_001_B10_STPSwitch_28()
    local params;
    params = {
        -- bInterrupt,
        [0] = false,
        -- NPC,
        [1] = "2101717171322251805",
        -- STP_01,
        [2] = "2101717203033287357",
        -- STP_02,
        [3] = "2102806966016436620",
    };
    return params;
end;

function export:OnEnter_box_UNI35_001_B10_STPSwitch_120()
    local params;
    params = {
        -- bInterrupt,
        [0] = false,
        -- NPC,
        [1] = "2101717363752704404",
        -- STP_01,
        [2] = "2101937903453101715",
        -- STP_02,
        [3] = "2101453752331428582",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|1907892670");
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
                [0] = self.f_box_OutputOrder_v2_78_Out_0,
                [1] = self.f_box_OutputOrder_v2_78_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_97()
    local params;
    params = {
        -- Group,
        [0] = "2104587876133029689",
    };
    return params;
end;

function export:OnEnter_box_GodMode_v3_52()
    local params;
    params = {
        -- disableAfterBeat,
        [0] = true,
        -- Mode,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Brick_Free_Hostages_v2_40()
    local params;
    params = {
        -- bCompletePreviousObjectives,
        [0] = false,
        -- bMinimunHostagesCompletion,
        [1] = false,
        -- bShowObjective,
        [2] = false,
        -- Hostage_group,
        [3] = "#B6CFA0B7",
        -- HostagesToSave,
        [4] = 2,
        -- Objective,
        [5] = {
            section = "Description",
            item = "D1_CultLocation_01_QUEST_MAIN",
            id = "589798",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|2000359922");
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
                [0] = self.f_box_OutputOrder_v2_101_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|2002408528");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_1_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_162()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|2021362630");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2101631355346492320",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_130()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2104135861116361172",
        -- LoadingScreen,
        [2] = false,
        -- LoadSynch,
        [3] = false,
        -- Pawns,
        [4] = self.e_MaryMay,
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Switch_91()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|2034766515");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BroadcastMessage_82_Out,
    });
    params = {
        -- Message,
        [0] = "End_UNI35_001_B10_SAVE",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|2037602124");
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

function export:OnEnter_box_MultipleAND_v2_128()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_88()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_76()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_001\\UNI35_001_B10.domino|@UNI35_001_B10|2141953174");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_58_A_is_False,
    });
    params = {
        -- A,
        [0] = self.b_PlaneRespawned,
    };
    return params;
end;

function export:OnExit_box_GetLocalPlayer_v2_8_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.Player = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_59_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_PlaneRespawned = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_44_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_44;
    self.e_PastorJerome = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_51_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.b_PlaneRespawned = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v5_45_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v5_45;
    self.i_plane = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_45_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v5_45;
    self.i_plane = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_45_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v5_45;
    self.i_plane = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_112_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v5_112;
    self.fallsend_cultists = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_112_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v5_112;
    self.fallsend_cultists = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_112_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v5_112;
    self.fallsend_cultists = l0:GetDataOutValue(1);
end;

function export:OnExit_box_CharacterLoadedIdListener_18_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_18;
    self.e_MaryMay = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.Players = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="OnLeaveZone" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
