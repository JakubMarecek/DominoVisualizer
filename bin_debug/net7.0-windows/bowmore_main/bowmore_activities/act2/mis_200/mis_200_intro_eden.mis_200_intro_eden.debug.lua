LUACj -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act2/mis_200/mis_200_intro_eden.domino
-- User graph: MIS_200_INTRO_EDEN
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1561948217.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2982078759.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3763027159.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200_INTRO_Eden.MIS_200_INTRO_EDEN.debug.lua")] = {
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
                name = "InCAIndex",
                type = "int",
            },
            [2] = {
                name = "UserFilter",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "OutCAIndex",
                type = "int",
            },
            [1] = {
                name = "User",
                type = "entity",
            },
        },
        dataOutCount = 2,
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
                name = "ContextualActionIndex",
                type = "int",
            },
            [2] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 3,
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
                name = "othersSpawned",
                type = "list",
            },
            [2] = {
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/Gate_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Close",
            },
            [1] = {
                name = "In",
            },
            [2] = {
                name = "Open",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Closed",
                delayed = false,
            },
            [1] = {
                name = "Opened",
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
                name = "initStateOpen",
                type = "bool",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/HealthModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Damage",
            },
            [1] = {
                name = "Heal",
            },
            [2] = {
                name = "RemoveCritical",
            },
            [3] = {
                name = "Set",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Damaged",
                delayed = false,
            },
            [1] = {
                name = "Healed",
                delayed = false,
            },
            [2] = {
                name = "OnRemoveCritical",
                delayed = false,
            },
            [3] = {
                name = "OnSet",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "damageWithStim",
                type = "int",
            },
            [1] = {
                name = "origin",
                type = "entity",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "value",
                type = "int",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/ParticleSystem_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Clean",
            },
            [1] = {
                name = "Pause",
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
                name = "Cleaned",
                delayed = false,
            },
            [1] = {
                name = "Paused",
                delayed = false,
            },
            [2] = {
                name = "Started",
                delayed = false,
            },
            [3] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "TargetEntities",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/Player/PhoneCallExclusivityModifier.lua")] = {
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/RequestPhoneCall_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Canceled",
                delayed = true,
            },
            [1] = {
                name = "Completed",
                delayed = true,
            },
            [2] = {
                name = "Failed",
                delayed = true,
            },
            [3] = {
                name = "Out",
                delayed = false,
            },
            [4] = {
                name = "Pending",
                delayed = true,
            },
            [5] = {
                name = "Started",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "CustomRingInSound",
                type = "Sound",
            },
            [1] = {
                name = "CustomRingOutSound",
                type = "Sound",
            },
            [2] = {
                name = "Delay",
                type = "float",
            },
            [3] = {
                name = "NoDeadair",
                type = "bool",
            },
            [4] = {
                name = "Pawns",
                type = "group",
            },
            [5] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 6,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_200_INTRO_EDEN";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN";
    self.eLocalPlayer = nil;
    self.MetaSeq_Bar = 0;
    self.LocalPlayer = nil;
    self.MetaSequence_INTRO = 0;
    self.gPlayer = nil;
    self.box_OnceOnly_v3_15 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|143073264");
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
                [0] = self.f_box_OnceOnly_v3_15_Out_0,
            },
            count = 2,
        },
    });
    self.box_SpawnAI_19 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|347573859");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_19_Spawned,
    });
    self.box_OnceOnly_v3_18 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|356772146");
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
                [0] = self.f_box_OnceOnly_v3_18_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|554582549");
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
        [0] = self.f_box_MultipleOR_17_Out,
    });
    self.box_RequestPhoneCall_v2_28 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|596847773");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_28_Completed,
    });
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|750558947");
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
        [0] = self.f_box_MultipleOR_8_Out,
    });
    self.box_PhoneCallExclusivityModifier_30 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|765952889");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_30_Enabled,
    });
    self.box_ContextualActionListener_1 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|788151337");
    l0:SetConnections({
        -- Disabled,
        [1] = self.f_box_ContextualActionListener_1_Disabled,
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_1_Enabled,
        -- Interrupt,
        [4] = self.f_box_ContextualActionListener_1_Interrupt,
    });
    self.box_EntityStatusListener_20 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|868800505");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_20_Loaded,
    });
    self.box_HealthListener_v6_22 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|958072517");
    l0:SetConnections({
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_22_Damaged,
    });
    self.box_Delay_v5_24 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|961122369");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_24_TimeElapsed,
    });
    self.box_ProximityRadiusListener_v3_4 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|1095477082");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_4_SomeoneNear,
    });
    self.box_ActivityInitialized_16 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|1161884136");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_16_Out,
    });
    self.box_ActivityAcknowledgeGate_2 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|1311949072");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_2_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_2_Reloaded,
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|1421191297");
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
        [0] = self.f_box_MultipleOR_14_Out,
    });
    self.box_MultipleOR_26 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|1733580997");
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
        [0] = self.f_box_MultipleOR_26_Out,
    });
    self.box_Gate_v3_12 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|1869413705");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_Gate_v3_12_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_12_Out,
    });
    self.box_PlayDialog_v6_9 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|1975851292");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_9_Started,
    });
    self.box_ProximityRadiusListener_v3_25 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|2108357516");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_25_SomeoneNear,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|1970570603", "1970570603", "MIS_200_INTRO_EDEN", "In", "box_OutputOrder_v2_29.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_15_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_9();
    l0 = self.box_OnceOnly_v3_15;
    l1 = self.box_PlayDialog_v6_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|137698277", "137698277", "MIS_200_INTRO_EDEN", "box_OnceOnly_v3_15.Out", "box_PlayDialog_v6_9.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|1678889100", "1678889100", "MIS_200_INTRO_EDEN", "box_OutputOrder_v2_29.Out", "box_ActivityAcknowledgeGate_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_SpawnAI_19_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_24();
    l0 = self.box_SpawnAI_19;
    l1 = self.box_Delay_v5_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|1598317049", "1598317049", "MIS_200_INTRO_EDEN", "box_SpawnAI_19.Spawned", "box_Delay_v5_24.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_18_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_3();
    l0 = self.box_OnceOnly_v3_18;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|478662911", "478662911", "MIS_200_INTRO_EDEN", "box_OnceOnly_v3_18.Out", "box_ActivityEnd_3.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_17_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_17;
    l1 = self.box_ActivityInitialized_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|988271499", "988271499", "MIS_200_INTRO_EDEN", "box_MultipleOR_17.Out", "box_ActivityInitialized_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_RequestPhoneCall_v2_28_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_7();
    l0 = self.box_RequestPhoneCall_v2_28;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|2107425966", "2107425966", "MIS_200_INTRO_EDEN", "box_RequestPhoneCall_v2_28.Completed", "box_UseContextualActionModifier_v3_7.CallInterrupt", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallInterrupt
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_7_InterruptCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_12();
    l0 = self.box_Gate_v3_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|336014425", "336014425", "MIS_200_INTRO_EDEN", "box_UseContextualActionModifier_v3_7.InterruptCalled", "box_Gate_v3_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_GetLocalPlayer_v2_5_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_5_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|995723485", "995723485", "MIS_200_INTRO_EDEN", "box_GetLocalPlayer_v2_5.Out", "box_OutputOrder_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_8_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_8;
    l1 = self.box_OnceOnly_v3_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|2101516666", "2101516666", "MIS_200_INTRO_EDEN", "box_MultipleOR_8.Out", "box_OnceOnly_v3_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PhoneCallExclusivityModifier_30_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_42();
    l0 = self.box_PhoneCallExclusivityModifier_30;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|703429821", "703429821", "MIS_200_INTRO_EDEN", "box_PhoneCallExclusivityModifier_30.Enabled", "box_GetPlayerGroup_v2_42.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_1_Disabled()
    local l0, l1;
    l0 = self.box_ContextualActionListener_1;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|1689591345", "1689591345", "MIS_200_INTRO_EDEN", "box_ContextualActionListener_1.Disabled", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ContextualActionListener_1_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_25();
    l0 = self.box_ContextualActionListener_1;
    l1 = self.box_ProximityRadiusListener_v3_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|1934411740", "1934411740", "MIS_200_INTRO_EDEN", "box_ContextualActionListener_1.Enabled", "box_ProximityRadiusListener_v3_25.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ContextualActionListener_1_Interrupt()
    local params, l0;
    params = self:OnEnter_box_ContextualActionListener_1();
    l0 = self.box_ContextualActionListener_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|98571614", "98571614", "MIS_200_INTRO_EDEN", "box_ContextualActionListener_1.Interrupt", "box_ContextualActionListener_1.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_20_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = self.box_EntityStatusListener_20;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|1229537149", "1229537149", "MIS_200_INTRO_EDEN", "box_EntityStatusListener_20.Loaded", "box_OutputOrder_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthModifier_v2_6_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_27();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|2058404643", "2058404643", "MIS_200_INTRO_EDEN", "box_HealthModifier_v2_6.Damaged", "box_UseContextualActionModifier_v3_27.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_22_Damaged()
    local l0, l1;
    l0 = self.box_HealthListener_v6_22;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|786178808", "786178808", "MIS_200_INTRO_EDEN", "box_HealthListener_v6_22.Damaged", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_24_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_23();
    l0 = self.box_Delay_v5_24;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|350174915", "350174915", "MIS_200_INTRO_EDEN", "box_Delay_v5_24.TimeElapsed", "box_ParticleSystem_v3_23.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_4_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_28();
    l0 = self.box_ProximityRadiusListener_v3_4;
    l1 = self.box_RequestPhoneCall_v2_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|1402447140", "1402447140", "MIS_200_INTRO_EDEN", "box_ProximityRadiusListener_v3_4.SomeoneNear", "box_RequestPhoneCall_v2_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_27_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|1323611154", "1323611154", "MIS_200_INTRO_EDEN", "box_UseContextualActionModifier_v3_27.Disabled", "box_MultipleOR_8.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityInitialized_16_Out()
    local l0, l1;
    l0 = self.box_ActivityInitialized_16;
    l1 = self.box_PhoneCallExclusivityModifier_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|1787639931", "1787639931", "MIS_200_INTRO_EDEN", "box_ActivityInitialized_16.Out", "box_PhoneCallExclusivityModifier_30.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_ActivityAcknowledgeGate_2_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|453908797", "453908797", "MIS_200_INTRO_EDEN", "box_ActivityAcknowledgeGate_2.Acknowledged", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_2_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|251871214", "251871214", "MIS_200_INTRO_EDEN", "box_ActivityAcknowledgeGate_2.Reloaded", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_6();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|1009978487", "1009978487", "MIS_200_INTRO_EDEN", "box_OutputOrder_v2_13.Out", "box_HealthModifier_v2_6.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_12();
    l0 = self.box_Gate_v3_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|419525749", "419525749", "MIS_200_INTRO_EDEN", "box_OutputOrder_v2_13.Out", "box_Gate_v3_12.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_14_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_14;
    l1 = self.box_OnceOnly_v3_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|108122938", "108122938", "MIS_200_INTRO_EDEN", "box_MultipleOR_14.Out", "box_OnceOnly_v3_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_20();
    l0 = self.box_EntityStatusListener_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|1133557384", "1133557384", "MIS_200_INTRO_EDEN", "box_OutputOrder_v2_21.Out", "box_EntityStatusListener_20.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_19();
    l0 = self.box_SpawnAI_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|2114452940", "2114452940", "MIS_200_INTRO_EDEN", "box_OutputOrder_v2_21.Out", "box_SpawnAI_19.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_MultipleOR_26;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|1660567286", "1660567286", "MIS_200_INTRO_EDEN", "box_MultipleOR_26.Out", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_22();
    l0 = self.box_HealthListener_v6_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|2091701470", "2091701470", "MIS_200_INTRO_EDEN", "box_OutputOrder_v2_10.Out", "box_HealthListener_v6_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_1();
    l0 = self.box_ContextualActionListener_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|1464168993", "1464168993", "MIS_200_INTRO_EDEN", "box_OutputOrder_v2_10.Out", "box_ContextualActionListener_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_4();
    l0 = self.box_ProximityRadiusListener_v3_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|1375280161", "1375280161", "MIS_200_INTRO_EDEN", "box_OutputOrder_v2_10.Out", "box_ProximityRadiusListener_v3_4.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_12_Opened()
    local l0, l1;
    l0 = self.box_Gate_v3_12;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|233689523", "233689523", "MIS_200_INTRO_EDEN", "box_Gate_v3_12.Opened", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Gate_v3_12_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_12;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|1011140271", "1011140271", "MIS_200_INTRO_EDEN", "box_Gate_v3_12.Out", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_9_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_9;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|1449273007", "1449273007", "MIS_200_INTRO_EDEN", "box_PlayDialog_v6_9.Started", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPlayerGroup_v2_42_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_42_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|923714870", "923714870", "MIS_200_INTRO_EDEN", "box_GetPlayerGroup_v2_42.Out", "box_GetLocalPlayer_v2_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_25_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_25;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|1928398448", "1928398448", "MIS_200_INTRO_EDEN", "box_ProximityRadiusListener_v3_25.SomeoneNear", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_ActivityEnd_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|81095117");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|263138629");
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
                [0] = self.f_box_OutputOrder_v2_29_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_19()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108321782680263616",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_28()
    local params;
    params = {
        -- CustomRingInSound,
        [0] = "3763027159",
        -- CustomRingOutSound,
        [1] = "3763027159",
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1561948217",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|617733539");
    l0:SetConnections({
        -- InterruptCalled,
        [3] = self.f_box_UseContextualActionModifier_v3_7_InterruptCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108322575999310915",
        -- Entity,
        [2] = "2108322000385612798",
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|656617742");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_5_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_1()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2108322575999310915",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_20()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108322000385612798",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|920733896");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_6_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = "2108322000385612798",
        -- pawns,
        [2] = "2108322000385612798",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_22()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2108322000385612798",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_24()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_4()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = "2108322575999310915",
        -- nearZone,
        [4] = 15,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|1141089731");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_27_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108322575999310915",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|1397683454");
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|1484929275");
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
                [0] = self.f_box_OutputOrder_v2_21_Out_0,
                [1] = self.f_box_OutputOrder_v2_21_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|1528300069");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109940764751433476",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|1761497917");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
                [2] = self.f_box_OutputOrder_v2_10_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_12()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_9()
    local params;
    params = {
        -- Group,
        [0] = "2108322000385612798",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2982078759",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200_INTRO_Eden.domino|@MIS_200_INTRO_EDEN|2069198737");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_42_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_25()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayer,
        -- id2,
        [3] = "2108322575999310915",
        -- nearZone,
        [4] = 6,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnExit_box_GetLocalPlayer_v2_5_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.eLocalPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_42_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayer = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
