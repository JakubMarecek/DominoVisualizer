LUAC!N -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act2/mis_200/mis_200.domino
-- User graph: MIS_200_PUZZLEHINTS
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Hint_1" Type="Nomad|Sound" />
    <DataIn Name="Hint_2" Type="Nomad|Sound" />
    <DataIn Name="Hint_3" Type="Nomad|Sound" />
    <DataIn Name="gPlayers" Type="Nomad|group" />
    <DataIn Name="FatherGroup" Type="Nomad|group" />
    <DataIn Name="eFatherSpawner01" Type="Nomad|entity{}" />
    <DataIn Name="eFatherSpawner02" Type="Nomad|entity{}" />
</InputReflection> 
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
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsPawnAlive_v3.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/Library/Lib_Brick_DearPhotograph.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3763027159.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.MIS_200 = nil;
    Globals.MIS_200 = {
        MIS_200_B10_FIRE = false,
        MIS_200_B20_FIRE = false,
        MIS_200_B30_FIRE = false,
        MIS_200_B30_WINDMILL = false,
        MIS_200_BRIEF_EDEN_SKIPPED = true,
        isB10Runing = false,
        isB20Runing = false,
        isB30Runing = false,
        isB10Reloaded = true,
        isB20Reloaded = true,
        isB30Reloaded = true,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200.MIS_200_PUZZLEHINTS.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ResetHints",
            },
            [1] = {
                name = "StartHints",
            },
            [2] = {
                name = "StopHints",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "ActivateFinalMarker",
                delayed = false,
            },
            [1] = {
                name = "HintDone",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "eFatherSpawner01",
                type = "entity",
            },
            [1] = {
                name = "eFatherSpawner02",
                type = "entity",
            },
            [2] = {
                name = "FatherGroup",
                type = "group",
            },
            [3] = {
                name = "gPlayers",
                type = "group",
            },
            [4] = {
                name = "Hint_1",
                type = "Sound",
            },
            [5] = {
                name = "Hint_2",
                type = "Sound",
            },
            [6] = {
                name = "Hint_3",
                type = "Sound",
            },
        },
        dataInCount = 7,
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
    metadataTable[GetPathID("Domino/System/GroupSizeListener_v6.lua")] = {
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
                name = "MemberDied",
                delayed = true,
            },
            [4] = {
                name = "MemberRemoved",
                delayed = true,
            },
            [5] = {
                name = "MemberSpawned",
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
    metadataTable[GetPathID("Domino/System/IndexList_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Output",
                dynamicType = 1,
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Index",
                type = "int",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/IsPawnAlive_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Alive",
                delayed = false,
            },
            [1] = {
                name = "DeadOrDown",
                delayed = false,
            },
            [2] = {
                name = "NotLoaded",
                delayed = false,
            },
        },
        controlOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/IsValueNil_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Animation",
            },
            [1] = {
                name = "Archetype",
            },
            [2] = {
                name = "Boolean",
            },
            [3] = {
                name = "Database",
            },
            [4] = {
                name = "Entity",
            },
            [5] = {
                name = "Float",
            },
            [6] = {
                name = "GenericDb",
            },
            [7] = {
                name = "Group",
            },
            [8] = {
                name = "Integer",
            },
            [9] = {
                name = "MissionBlock",
            },
            [10] = {
                name = "MissionBlockLayer",
            },
            [11] = {
                name = "Oasis",
            },
            [12] = {
                name = "Script",
            },
            [13] = {
                name = "Sound",
            },
            [14] = {
                name = "String",
            },
        },
        controlInCount = 15,
        controlOut = {
            [0] = {
                name = "No",
                delayed = false,
            },
            [1] = {
                name = "Yes",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "anim",
                type = "animation",
            },
            [1] = {
                name = "archetypeId",
                type = "archetype",
            },
            [2] = {
                name = "bool",
                type = "bool",
            },
            [3] = {
                name = "databaseId",
                type = "database",
            },
            [4] = {
                name = "ent",
                type = "entity",
            },
            [5] = {
                name = "float",
                type = "float",
            },
            [6] = {
                name = "genericDbId",
                type = "genericdb",
            },
            [7] = {
                name = "group",
                type = "group",
            },
            [8] = {
                name = "int",
                type = "int",
            },
            [9] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [10] = {
                name = "missionBlockLayerId",
                type = "missionblocklayer",
            },
            [11] = {
                name = "oasis",
                type = "oasis",
            },
            [12] = {
                name = "script",
                type = "boxclass",
            },
            [13] = {
                name = "sound",
                type = "Sound",
            },
            [14] = {
                name = "str",
                type = "string",
            },
        },
        dataInCount = 15,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/MessageListener_v3.lua")] = {
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
                name = "Received",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "message",
                type = "string",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/SetEntity_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromEntity",
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
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "entity",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_200_PUZZLEHINTS";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS";
    self.HintDone = DummyFunction;
    self.ActivateFinalMarker = DummyFunction;
    self.CurrentOutputNb = 0;
    self.isVOPlaying = false;
    self.Father = nil;
    self.box_Delay_v5_43 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|6178231");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_43_TimeElapsed,
    });
    self.box_MultipleOR_79 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|45315638");
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
        [0] = self.f_box_MultipleOR_79_Out,
    });
    self.box_ProximityRadiusListener_v3_66 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|89985274");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_66_SomeoneNear,
    });
    self.box_MultipleOR_73 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|253410684");
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
        [0] = self.f_box_MultipleOR_73_Out,
    });
    self.box_MessageListener_v3_82 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|302991267");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_82_Received,
    });
    self.box_Delay_v5_19 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|560202063");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_19_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_19_TimeElapsed,
    });
    self.box_OnceOnly_v3_64 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|651952619");
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
                [0] = self.f_box_OnceOnly_v3_64_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|679593926");
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
        [0] = self.f_box_MultipleOR_6_Out,
    });
    self.box_Delay_v5_76 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|700852178");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_76_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_76_TimeElapsed,
    });
    self.box_MultipleOR_62 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|729916494");
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
        [0] = self.f_box_MultipleOR_62_Out,
    });
    self.box_Delay_v5_41 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|741286780");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_41_TimeElapsed,
    });
    self.box_MultipleOR_80 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|768411892");
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
        [0] = self.f_box_MultipleOR_80_Out,
    });
    self.box_RequestPhoneCall_v2_3 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|774275089");
    l0:SetConnections({
        -- Canceled,
        [0] = self.f_box_RequestPhoneCall_v2_3_Canceled,
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_3_Completed,
        -- Started,
        [5] = self.f_box_RequestPhoneCall_v2_3_Started,
    });
    self.box_OnceOnly_v3_54 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|799123260");
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
                [0] = self.f_box_OnceOnly_v3_54_Out_0,
            },
            count = 2,
        },
    });
    self.box_SpawnAI_20 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|828302979");
    l0:SetConnections({
    });
    self.box_MultipleOR_72 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|845010469");
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
        [0] = self.f_box_MultipleOR_72_Out,
    });
    self.box_MultipleOR_36 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|900916996");
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
        [0] = self.f_box_MultipleOR_36_Out,
    });
    self.box_Delay_v5_42 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|911287674");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_42_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_4 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|917668510");
    l0:SetConnections({
        -- Canceled,
        [0] = self.f_box_RequestPhoneCall_v2_4_Canceled,
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_4_Completed,
        -- Started,
        [5] = self.f_box_RequestPhoneCall_v2_4_Started,
    });
    self.box_HealthListener_v6_40 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|935505292");
    l0:SetConnections({
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_40_Damaged,
    });
    self.box_Delay_v5_23 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1000274240");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_23_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_1 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1049981732");
    l0:SetConnections({
        -- Canceled,
        [0] = self.f_box_RequestPhoneCall_v2_1_Canceled,
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_1_Completed,
        -- Started,
        [5] = self.f_box_RequestPhoneCall_v2_1_Started,
    });
    self.box_Switch_2 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1150009509");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- None,
        [0] = self.f_box_Switch_2_None,
        -- Out,
        [1] = self.f_box_Switch_2_Out,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_2_Output_0,
                [1] = self.f_box_Switch_2_Output_1,
                [2] = self.f_box_Switch_2_Output_2,
            },
            count = 3,
        },
    });
    self.box_OnceOnly_v3_30 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1234587447");
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
                [0] = self.f_box_OnceOnly_v3_30_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityRadiusListener_v3_37 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1251265204");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_37_SomeoneNear,
    });
    self.box_Delay_v5_17 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1275846133");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_17_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_17_TimeElapsed,
    });
    self.box_HealthListener_v6_53 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1372787426");
    l0:SetConnections({
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_53_Damaged,
    });
    self.box_MultipleOR_39 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1379662801");
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
        [0] = self.f_box_MultipleOR_39_Out,
    });
    self.box_GroupSizeListener_v6_63 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1384628635");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_63_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_63_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_63_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_63_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_63_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_63_MemberSpawned,
    });
    self.box_SpawnAI_58 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1436242992");
    l0:SetConnections({
    });
    self.box_MultipleOR_57 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1551386137");
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
        [0] = self.f_box_MultipleOR_57_Out,
    });
    self.box_MultipleOR_77 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1663902905");
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
        [0] = self.f_box_MultipleOR_77_Out,
    });
    self.box_OnceOnly_v3_45 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1669547526");
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
                [0] = self.f_box_OnceOnly_v3_45_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_71 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1679110655");
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
        [0] = self.f_box_MultipleOR_71_Out,
    });
    self.box_GroupSizeListener_v6_48 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1695369875");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_48_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_48_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_48_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_48_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_48_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_48_MemberSpawned,
    });
    self.box_Delay_v5_75 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1792471076");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_75_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_75_TimeElapsed,
    });
    self.box_IndexList_v2_5 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1912407639");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_5_Output_0,
                [1] = self.f_box_IndexList_v2_5_Output_1,
                [2] = self.f_box_IndexList_v2_5_Output_2,
            },
            count = 3,
        },
    });
    self.box_Delay_v5_18 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1961483734");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_18_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_18_TimeElapsed,
    });
    self.box_MultipleOR_29 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1985672431");
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
        [0] = self.f_box_MultipleOR_29_Out,
    });
    self.box_Delay_v5_55 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|2068663488");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_55_TimeElapsed,
    });
    self.box_MultipleOR_81 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|2141964365");
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
        [0] = self.f_box_MultipleOR_81_Out,
    });
end;

function export:ResetHints()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_70();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|174889531", "174889531", "MIS_200_PUZZLEHINTS", "ResetHints", "box_OutputOrder_v2_70.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:StartHints()
    local l0;
    l0 = self.box_OnceOnly_v3_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|2017941033", "2017941033", "MIS_200_PUZZLEHINTS", "StartHints", "box_OnceOnly_v3_64.Reset", self, l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
    l0 = self.box_OnceOnly_v3_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|804086032", "804086032", "MIS_200_PUZZLEHINTS", "StartHints", "box_OnceOnly_v3_45.Reset", self, l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
    l0 = self.box_MultipleOR_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|183040022", "183040022", "MIS_200_PUZZLEHINTS", "StartHints", "box_MultipleOR_77.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:StopHints()
    local l0;
    l0 = self.box_MultipleOR_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|842684864", "842684864", "MIS_200_PUZZLEHINTS", "StopHints", "box_MultipleOR_71.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|2014290177", "2014290177", "MIS_200_PUZZLEHINTS", "StopHints", "box_MultipleOR_73.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1615538397", "1615538397", "MIS_200_PUZZLEHINTS", "StopHints", "box_MultipleOR_72.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_47_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_46();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|662312446", "662312446", "MIS_200_PUZZLEHINTS", "box_Simple_Node_47.Out", "box_OutputOrder_v2_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_68_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_65();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1348861604", "1348861604", "MIS_200_PUZZLEHINTS", "box_Simple_Node_68.Out", "box_OutputOrder_v2_65.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_31_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1902706330", "1902706330", "MIS_200_PUZZLEHINTS", "box_Simple_Node_31.Out", "box_OnceOnly_v3_30.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_Simple_Node_67_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1745406568", "1745406568", "MIS_200_PUZZLEHINTS", "box_Simple_Node_67.Out", "box_OnceOnly_v3_54.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_Simple_Node_78_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_77;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|2083058942", "2083058942", "MIS_200_PUZZLEHINTS", "box_Simple_Node_78.Out", "box_MultipleOR_77.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_32_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1634300540", "1634300540", "MIS_200_PUZZLEHINTS", "box_Simple_Node_32.Out", "box_MultipleOR_29.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_33_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|2025646672", "2025646672", "MIS_200_PUZZLEHINTS", "box_Simple_Node_33.Out", "box_MultipleOR_29.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_34_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1852171070", "1852171070", "MIS_200_PUZZLEHINTS", "box_Simple_Node_34.Out", "box_MultipleOR_29.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Simple_Node_74_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_2();
    l0 = self.box_Switch_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|956120404", "956120404", "MIS_200_PUZZLEHINTS", "box_Simple_Node_74.Out", "box_Switch_2.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
    l0 = self.box_MultipleOR_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1773594952", "1773594952", "MIS_200_PUZZLEHINTS", "box_Simple_Node_74.Out", "box_MultipleOR_73.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|290027466", "290027466", "MIS_200_PUZZLEHINTS", "box_Simple_Node_74.Out", "box_MultipleOR_71.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_43_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_1();
    l0 = self.box_Delay_v5_43;
    l1 = self.box_RequestPhoneCall_v2_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|317202226", "317202226", "MIS_200_PUZZLEHINTS", "box_Delay_v5_43.TimeElapsed", "box_RequestPhoneCall_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_79_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_8();
    l0 = self.box_MultipleOR_79;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1770779953", "1770779953", "MIS_200_PUZZLEHINTS", "box_MultipleOR_79.Out", "box_SetBoolean_v2_8.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_66_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_66;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|2041134011", "2041134011", "MIS_200_PUZZLEHINTS", "box_ProximityRadiusListener_v3_66.SomeoneNear", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_46_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_23();
    l0 = self.box_Delay_v5_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1895867606", "1895867606", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_46.Out", "box_Delay_v5_23.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_46_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_40();
    l0 = self.box_HealthListener_v6_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|947807023", "947807023", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_46.Out", "box_HealthListener_v6_40.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_46_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_75();
    l0 = self.box_Delay_v5_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1823808806", "1823808806", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_46.Out", "box_Delay_v5_75.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_HealthModifier_v2_52_Damaged()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1020646875", "1020646875", "MIS_200_PUZZLEHINTS", "box_HealthModifier_v2_52.Damaged", "box_MultipleOR_57.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_73_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_73;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|2143271875", "2143271875", "MIS_200_PUZZLEHINTS", "box_MultipleOR_73.Out", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_34();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1696823608", "1696823608", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_25.Out", "box_Simple_Node_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_25_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_43();
    l0 = self.box_Delay_v5_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|440900121", "440900121", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_25.Out", "box_Delay_v5_43.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetEntity_v2_50_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_50_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1462634128", "1462634128", "MIS_200_PUZZLEHINTS", "box_SetEntity_v2_50.Out", "box_OutputOrder_v2_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_82_Received()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_84();
    l0 = self.box_MessageListener_v3_82;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1080168669", "1080168669", "MIS_200_PUZZLEHINTS", "box_MessageListener_v3_82.Received", "box_HealthModifier_v2_84.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_8_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_8_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|328222035", "328222035", "MIS_200_PUZZLEHINTS", "box_SetBoolean_v2_8.Out", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_7_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_4();
    l0 = self.box_RequestPhoneCall_v2_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|922811050", "922811050", "MIS_200_PUZZLEHINTS", "box_Compare_Boolean_7.A_is_True", "box_RequestPhoneCall_v2_4.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_11_Out()
    self:OnExit_box_SetBoolean_v2_11_Out();
end;

function export:f_box_Delay_v5_19_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_15();
    l0 = self.box_Delay_v5_19;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|845066491", "845066491", "MIS_200_PUZZLEHINTS", "box_Delay_v5_19.Stopped", "box_Compare_Boolean_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_19_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = self.box_Delay_v5_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1858184362", "1858184362", "MIS_200_PUZZLEHINTS", "box_Delay_v5_19.TimeElapsed", "box_OutputOrder_v2_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_64_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_67();
    l0 = self.box_OnceOnly_v3_64;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1401748487", "1401748487", "MIS_200_PUZZLEHINTS", "box_OnceOnly_v3_64.Out", "box_Simple_Node_67.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_12_Out()
    self:OnExit_box_SetBoolean_v2_12_Out();
end;

function export:f_box_OutputOrder_v2_60_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_55();
    l0 = self.box_Delay_v5_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|709947968", "709947968", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_60.Out", "box_Delay_v5_55.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_53();
    l0 = self.box_HealthListener_v6_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|451243413", "451243413", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_60.Out", "box_HealthListener_v6_53.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_60_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_76();
    l0 = self.box_Delay_v5_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|130470298", "130470298", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_60.Out", "box_Delay_v5_76.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_6_Out()
    local l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|257846928", "257846928", "MIS_200_PUZZLEHINTS", "box_MultipleOR_6.Out", "HintDone", l0:GetLuaBox(), self);
    self:HintDone();
end;

function export:f_box_IsValueNil_v3_35_No()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|728984511", "728984511", "MIS_200_PUZZLEHINTS", "box_IsValueNil_v3_35.No", "box_OnceOnly_v3_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_76_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_66();
    l0 = self.box_Delay_v5_76;
    l1 = self.box_ProximityRadiusListener_v3_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|203396984", "203396984", "MIS_200_PUZZLEHINTS", "box_Delay_v5_76.Stopped", "box_ProximityRadiusListener_v3_66.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_76_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_66();
    l0 = self.box_Delay_v5_76;
    l1 = self.box_ProximityRadiusListener_v3_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|887609811", "887609811", "MIS_200_PUZZLEHINTS", "box_Delay_v5_76.TimeElapsed", "box_ProximityRadiusListener_v3_66.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_62_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_59();
    l0 = self.box_MultipleOR_62;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1068822984", "1068822984", "MIS_200_PUZZLEHINTS", "box_MultipleOR_62.Out", "box_OutputOrder_v2_59.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_41_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_4();
    l0 = self.box_Delay_v5_41;
    l1 = self.box_RequestPhoneCall_v2_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|957761376", "957761376", "MIS_200_PUZZLEHINTS", "box_Delay_v5_41.TimeElapsed", "box_RequestPhoneCall_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_80_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_9();
    l0 = self.box_MultipleOR_80;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|507457787", "507457787", "MIS_200_PUZZLEHINTS", "box_MultipleOR_80.Out", "box_SetBoolean_v2_9.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_3_Canceled()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_3;
    l1 = self.box_MultipleOR_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|531494625", "531494625", "MIS_200_PUZZLEHINTS", "box_RequestPhoneCall_v2_3.Canceled", "box_MultipleOR_80.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RequestPhoneCall_v2_3_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_3;
    l1 = self.box_MultipleOR_80;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|417040001", "417040001", "MIS_200_PUZZLEHINTS", "box_RequestPhoneCall_v2_3.Completed", "box_MultipleOR_80.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_3_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_12();
    l0 = self.box_RequestPhoneCall_v2_3;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|496602856", "496602856", "MIS_200_PUZZLEHINTS", "box_RequestPhoneCall_v2_3.Started", "box_SetBoolean_v2_12.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_54_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = self.box_OnceOnly_v3_54;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1058401618", "1058401618", "MIS_200_PUZZLEHINTS", "box_OnceOnly_v3_54.Out", "box_OutputOrder_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_72_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IndexList_v2_5();
    l0 = self.box_MultipleOR_72;
    l1 = self.box_IndexList_v2_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|791328031", "791328031", "MIS_200_PUZZLEHINTS", "box_MultipleOR_72.Out", "box_IndexList_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_10_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_10_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1202543576", "1202543576", "MIS_200_PUZZLEHINTS", "box_SetBoolean_v2_10.Out", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_36_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_36;
    l1 = self.box_OnceOnly_v3_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1364730882", "1364730882", "MIS_200_PUZZLEHINTS", "box_MultipleOR_36.Out", "box_OnceOnly_v3_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_42_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_3();
    l0 = self.box_Delay_v5_42;
    l1 = self.box_RequestPhoneCall_v2_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|313682652", "313682652", "MIS_200_PUZZLEHINTS", "box_Delay_v5_42.TimeElapsed", "box_RequestPhoneCall_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_4_Canceled()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_4;
    l1 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|554700910", "554700910", "MIS_200_PUZZLEHINTS", "box_RequestPhoneCall_v2_4.Canceled", "box_MultipleOR_79.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RequestPhoneCall_v2_4_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_4;
    l1 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|815843566", "815843566", "MIS_200_PUZZLEHINTS", "box_RequestPhoneCall_v2_4.Completed", "box_MultipleOR_79.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_4_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_11();
    l0 = self.box_RequestPhoneCall_v2_4;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1291054615", "1291054615", "MIS_200_PUZZLEHINTS", "box_RequestPhoneCall_v2_4.Started", "box_SetBoolean_v2_11.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v3_27_Alive()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_24();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1104748006", "1104748006", "MIS_200_PUZZLEHINTS", "box_IsPawnAlive_v3_27.Alive", "box_HealthModifier_v2_24.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v3_27_DeadOrDown()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|980418253", "980418253", "MIS_200_PUZZLEHINTS", "box_IsPawnAlive_v3_27.DeadOrDown", "box_MultipleOR_36.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsPawnAlive_v3_27_NotLoaded()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1193662605", "1193662605", "MIS_200_PUZZLEHINTS", "box_IsPawnAlive_v3_27.NotLoaded", "box_MultipleOR_36.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_HealthListener_v6_40_Damaged()
    local l0, l1;
    l0 = self.box_HealthListener_v6_40;
    l1 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1420069590", "1420069590", "MIS_200_PUZZLEHINTS", "box_HealthListener_v6_40.Damaged", "box_MultipleOR_39.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_15_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_1();
    l0 = self.box_RequestPhoneCall_v2_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1942459138", "1942459138", "MIS_200_PUZZLEHINTS", "box_Compare_Boolean_15.A_is_True", "box_RequestPhoneCall_v2_1.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_23_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_23;
    l1 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|306140365", "306140365", "MIS_200_PUZZLEHINTS", "box_Delay_v5_23.TimeElapsed", "box_MultipleOR_39.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_1_Canceled()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_1;
    l1 = self.box_MultipleOR_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1040378769", "1040378769", "MIS_200_PUZZLEHINTS", "box_RequestPhoneCall_v2_1.Canceled", "box_MultipleOR_81.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RequestPhoneCall_v2_1_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_1;
    l1 = self.box_MultipleOR_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1790592474", "1790592474", "MIS_200_PUZZLEHINTS", "box_RequestPhoneCall_v2_1.Completed", "box_MultipleOR_81.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_1_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_13();
    l0 = self.box_RequestPhoneCall_v2_1;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1195607166", "1195607166", "MIS_200_PUZZLEHINTS", "box_RequestPhoneCall_v2_1.Started", "box_SetBoolean_v2_13.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_23();
    l0 = self.box_Delay_v5_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1555037308", "1555037308", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_38.Out", "box_Delay_v5_23.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_38_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_40();
    l0 = self.box_HealthListener_v6_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1369079566", "1369079566", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_38.Out", "box_HealthListener_v6_40.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_38_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_75();
    l0 = self.box_Delay_v5_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1235578205", "1235578205", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_38.Out", "box_Delay_v5_75.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Compare_Boolean_14_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_3();
    l0 = self.box_RequestPhoneCall_v2_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|599505441", "599505441", "MIS_200_PUZZLEHINTS", "box_Compare_Boolean_14.A_is_True", "box_RequestPhoneCall_v2_3.Cancel", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cancel
    l0:Exec(0, params);
end;

function export:f_box_Switch_2_None()
    self:OnExit_box_Switch_2_None();
end;

function export:f_box_Switch_2_Out()
    self:OnExit_box_Switch_2_Out();
end;

function export:f_box_Switch_2_Output_0()
    local params, l0, l1;
    self:OnExit_box_Switch_2_Output();
    params = self:OnEnter_box_Delay_v5_17();
    l0 = self.box_Switch_2;
    l1 = self.box_Delay_v5_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|624715252", "624715252", "MIS_200_PUZZLEHINTS", "box_Switch_2.Output", "box_Delay_v5_17.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Switch_2_Output_1()
    local params, l0, l1;
    self:OnExit_box_Switch_2_Output();
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_Switch_2;
    l1 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1178489067", "1178489067", "MIS_200_PUZZLEHINTS", "box_Switch_2.Output", "box_Delay_v5_18.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Switch_2_Output_2()
    local params, l0, l1;
    self:OnExit_box_Switch_2_Output();
    params = self:OnEnter_box_Delay_v5_19();
    l0 = self.box_Switch_2;
    l1 = self.box_Delay_v5_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1910456534", "1910456534", "MIS_200_PUZZLEHINTS", "box_Switch_2.Output", "box_Delay_v5_19.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_49_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_48();
    l0 = self.box_GroupSizeListener_v6_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1650964235", "1650964235", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_49.Out", "box_GroupSizeListener_v6_48.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_49_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_20();
    l0 = self.box_SpawnAI_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|90025914", "90025914", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_49.Out", "box_SpawnAI_20.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_30_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_49();
    l0 = self.box_OnceOnly_v3_30;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|683333460", "683333460", "MIS_200_PUZZLEHINTS", "box_OnceOnly_v3_30.Out", "box_OutputOrder_v2_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_37_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_37;
    l1 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|979808867", "979808867", "MIS_200_PUZZLEHINTS", "box_ProximityRadiusListener_v3_37.SomeoneNear", "box_MultipleOR_39.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_17_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_7();
    l0 = self.box_Delay_v5_17;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|35159135", "35159135", "MIS_200_PUZZLEHINTS", "box_Delay_v5_17.Stopped", "box_Compare_Boolean_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_17_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = self.box_Delay_v5_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1138340479", "1138340479", "MIS_200_PUZZLEHINTS", "box_Delay_v5_17.TimeElapsed", "box_OutputOrder_v2_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_63();
    l0 = self.box_GroupSizeListener_v6_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|858873838", "858873838", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_56.Out", "box_GroupSizeListener_v6_63.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_56_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_58();
    l0 = self.box_SpawnAI_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1560282100", "1560282100", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_56.Out", "box_SpawnAI_58.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_SetBoolean_v2_13_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_13_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1952134931", "1952134931", "MIS_200_PUZZLEHINTS", "box_SetBoolean_v2_13.Out", "ActivateFinalMarker", clone:GetLuaBox(), self);
    self:ActivateFinalMarker();
end;

function export:f_box_HealthListener_v6_53_Damaged()
    local l0, l1;
    l0 = self.box_HealthListener_v6_53;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|102026804", "102026804", "MIS_200_PUZZLEHINTS", "box_HealthListener_v6_53.Damaged", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_44();
    l0 = self.box_MultipleOR_39;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|188093947", "188093947", "MIS_200_PUZZLEHINTS", "box_MultipleOR_39.Out", "box_OutputOrder_v2_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_63_MemberAdded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_50();
    l0 = self.box_GroupSizeListener_v6_63;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1006711686", "1006711686", "MIS_200_PUZZLEHINTS", "box_GroupSizeListener_v6_63.MemberAdded", "box_SetEntity_v2_50.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_44_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_47();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1566678042", "1566678042", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_44.Out", "box_Simple_Node_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_44_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v3_27();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|740263215", "740263215", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_44.Out", "box_IsPawnAlive_v3_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_57_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_57;
    l1 = self.box_OnceOnly_v3_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1591287838", "1591287838", "MIS_200_PUZZLEHINTS", "box_MultipleOR_57.Out", "box_OnceOnly_v3_64.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Boolean_21_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_61();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1685344117", "1685344117", "MIS_200_PUZZLEHINTS", "box_Compare_Boolean_21.A_is_False", "box_IsValueNil_v3_61.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_21_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_35();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|991975887", "991975887", "MIS_200_PUZZLEHINTS", "box_Compare_Boolean_21.A_is_True", "box_IsValueNil_v3_35.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_55();
    l0 = self.box_Delay_v5_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1057529968", "1057529968", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_65.Out", "box_Delay_v5_55.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_65_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_53();
    l0 = self.box_HealthListener_v6_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1465552871", "1465552871", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_65.Out", "box_HealthListener_v6_53.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_65_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_76();
    l0 = self.box_Delay_v5_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|493739436", "493739436", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_65.Out", "box_Delay_v5_76.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_59_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_68();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1578797494", "1578797494", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_59.Out", "box_Simple_Node_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_59_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v3_51();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1532967748", "1532967748", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_59.Out", "box_IsPawnAlive_v3_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_9_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_9_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|915990161", "915990161", "MIS_200_PUZZLEHINTS", "box_SetBoolean_v2_9.Out", "box_MultipleOR_6.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_77_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_2();
    l0 = self.box_MultipleOR_77;
    l1 = self.box_Switch_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|132900768", "132900768", "MIS_200_PUZZLEHINTS", "box_MultipleOR_77.Out", "box_Switch_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_45_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_31();
    l0 = self.box_OnceOnly_v3_45;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1702089020", "1702089020", "MIS_200_PUZZLEHINTS", "box_OnceOnly_v3_45.Out", "box_Simple_Node_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_71_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_71;
    l1 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1095960484", "1095960484", "MIS_200_PUZZLEHINTS", "box_MultipleOR_71.Out", "box_MultipleOR_39.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_GroupSizeListener_v6_48_MemberAdded()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_22();
    l0 = self.box_GroupSizeListener_v6_48;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1234666119", "1234666119", "MIS_200_PUZZLEHINTS", "box_GroupSizeListener_v6_48.MemberAdded", "box_SetEntity_v2_22.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_22_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_22_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|797016753", "797016753", "MIS_200_PUZZLEHINTS", "box_SetEntity_v2_22.Out", "box_OutputOrder_v2_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_75_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_37();
    l0 = self.box_Delay_v5_75;
    l1 = self.box_ProximityRadiusListener_v3_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1960622852", "1960622852", "MIS_200_PUZZLEHINTS", "box_Delay_v5_75.Stopped", "box_ProximityRadiusListener_v3_37.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_75_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_37();
    l0 = self.box_Delay_v5_75;
    l1 = self.box_ProximityRadiusListener_v3_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1732974042", "1732974042", "MIS_200_PUZZLEHINTS", "box_Delay_v5_75.TimeElapsed", "box_ProximityRadiusListener_v3_37.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_5_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_17();
    l0 = self.box_IndexList_v2_5;
    l1 = self.box_Delay_v5_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1147396751", "1147396751", "MIS_200_PUZZLEHINTS", "box_IndexList_v2_5.Output", "box_Delay_v5_17.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_IndexList_v2_5_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_IndexList_v2_5;
    l1 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|497472848", "497472848", "MIS_200_PUZZLEHINTS", "box_IndexList_v2_5.Output", "box_Delay_v5_18.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_IndexList_v2_5_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_19();
    l0 = self.box_IndexList_v2_5;
    l1 = self.box_Delay_v5_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|27690990", "27690990", "MIS_200_PUZZLEHINTS", "box_IndexList_v2_5.Output", "box_Delay_v5_19.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_32();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|260332079", "260332079", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_26.Out", "box_Simple_Node_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_41();
    l0 = self.box_Delay_v5_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1055002946", "1055002946", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_26.Out", "box_Delay_v5_41.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_18_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_14();
    l0 = self.box_Delay_v5_18;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1785539735", "1785539735", "MIS_200_PUZZLEHINTS", "box_Delay_v5_18.Stopped", "box_Compare_Boolean_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_18_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = self.box_Delay_v5_18;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|815847398", "815847398", "MIS_200_PUZZLEHINTS", "box_Delay_v5_18.TimeElapsed", "box_OutputOrder_v2_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthModifier_v2_24_Damaged()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1671444924", "1671444924", "MIS_200_PUZZLEHINTS", "box_HealthModifier_v2_24.Damaged", "box_MultipleOR_36.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_29_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_83();
    l0 = self.box_MultipleOR_29;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1228076182", "1228076182", "MIS_200_PUZZLEHINTS", "box_MultipleOR_29.Out", "box_OutputOrder_v2_83.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v3_51_Alive()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_52();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|378972215", "378972215", "MIS_200_PUZZLEHINTS", "box_IsPawnAlive_v3_51.Alive", "box_HealthModifier_v2_52.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v3_51_DeadOrDown()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|846356370", "846356370", "MIS_200_PUZZLEHINTS", "box_IsPawnAlive_v3_51.DeadOrDown", "box_MultipleOR_57.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsPawnAlive_v3_51_NotLoaded()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1549063408", "1549063408", "MIS_200_PUZZLEHINTS", "box_IsPawnAlive_v3_51.NotLoaded", "box_MultipleOR_57.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_33();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1717760181", "1717760181", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_28.Out", "box_Simple_Node_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_42();
    l0 = self.box_Delay_v5_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|986011822", "986011822", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_28.Out", "box_Delay_v5_42.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_70_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|122159880", "122159880", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_70.Out", "box_MultipleOR_72.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_70_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_74();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|250973465", "250973465", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_70.Out", "box_Simple_Node_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_70_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_78();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1403536352", "1403536352", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_70.Out", "box_Simple_Node_78.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_55_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_55;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1530174684", "1530174684", "MIS_200_PUZZLEHINTS", "box_Delay_v5_55.TimeElapsed", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_83_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_21();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|359643685", "359643685", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_83.Out", "box_Compare_Boolean_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_83_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_82();
    l0 = self.box_MessageListener_v3_82;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|646252072", "646252072", "MIS_200_PUZZLEHINTS", "box_OutputOrder_v2_83.Out", "box_MessageListener_v3_82.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsValueNil_v3_61_No()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|426432204", "426432204", "MIS_200_PUZZLEHINTS", "box_IsValueNil_v3_61.No", "box_OnceOnly_v3_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_81_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_10();
    l0 = self.box_MultipleOR_81;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|465354672", "465354672", "MIS_200_PUZZLEHINTS", "box_MultipleOR_81.Out", "box_SetBoolean_v2_10.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|@ResetHintFather01");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_47_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|@ResetHintFather02");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_68_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|@ResetSpawner01");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_31_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|@ResetSpawner02");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_67_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|@RestartHints");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_78_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|@SpawnFather_Hint01");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_32_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|@SpawnFather_Hint02");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_33_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|@SpawnFather_Hint03");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_34_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|@SwapHints");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_74_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_43()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_66()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayers,
        -- id2,
        [3] = self.Father,
        -- nearZone,
        [4] = 5,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|99755850");
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
                [0] = self.f_box_OutputOrder_v2_46_Out_0,
                [1] = self.f_box_OutputOrder_v2_46_Out_1,
                [2] = self.f_box_OutputOrder_v2_46_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|210166782");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_52_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = self.Father,
        -- pawns,
        [2] = self.Father,
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|272229326");
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
                [0] = self.f_box_OutputOrder_v2_25_Out_0,
                [1] = self.f_box_OutputOrder_v2_25_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|292030054");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_50_Out,
    });
    l0 = self.box_GroupSizeListener_v6_63;
    params = {
        -- Entity,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_82()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "killfatherhints",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|363180999");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_8_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|448589033");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_7_A_is_True,
    });
    params = {
        -- A,
        [0] = self.isVOPlaying,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|511437528");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_11_Out,
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
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|661355799");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_12_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|679429403");
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
                [0] = self.f_box_OutputOrder_v2_60_Out_0,
                [1] = self.f_box_OutputOrder_v2_60_Out_1,
                [2] = self.f_box_OutputOrder_v2_60_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|698099084");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_35_No,
    });
    params = {
        -- ent,
        [4] = self.eFatherSpawner01,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_76()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_41()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_3()
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
        [5] = self.Hint_2,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_20()
    local params;
    params = {
        -- EntitySpawner,
        [0] = self.eFatherSpawner01,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|850289295");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_10_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_42()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_4()
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
        [5] = self.Hint_1,
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v3_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|933231509");
    l0:SetConnections({
        -- Alive,
        [0] = self.f_box_IsPawnAlive_v3_27_Alive,
        -- DeadOrDown,
        [1] = self.f_box_IsPawnAlive_v3_27_DeadOrDown,
        -- NotLoaded,
        [2] = self.f_box_IsPawnAlive_v3_27_NotLoaded,
    });
    params = {
        -- Pawn,
        [0] = self.Father,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_40()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = self.Father,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|993971212");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_15_A_is_True,
    });
    params = {
        -- A,
        [0] = self.isVOPlaying,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_23()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 8,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_1()
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
        [5] = self.Hint_3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1135881271");
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
                [0] = self.f_box_OutputOrder_v2_38_Out_0,
                [1] = self.f_box_OutputOrder_v2_38_Out_1,
                [2] = self.f_box_OutputOrder_v2_38_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1137327166");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_14_A_is_True,
    });
    params = {
        -- A,
        [0] = self.isVOPlaying,
    };
    return params;
end;

function export:OnEnter_box_Switch_2()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1231808198");
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

function export:OnEnter_box_ProximityRadiusListener_v3_37()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayers,
        -- id2,
        [3] = self.Father,
        -- nearZone,
        [4] = 5,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_17()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1294192420");
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
                [0] = self.f_box_OutputOrder_v2_56_Out_0,
                [1] = self.f_box_OutputOrder_v2_56_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1349917715");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_13_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_53()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = self.Father,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_63()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = self.FatherGroup,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1426837962");
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
                [0] = self.f_box_OutputOrder_v2_44_Out_0,
                [1] = self.f_box_OutputOrder_v2_44_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_58()
    local params;
    params = {
        -- EntitySpawner,
        [0] = self.eFatherSpawner02,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1561466183");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_21_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_21_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.Lib_Brick_DearPhotograph.AdditionalStep,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1602809196");
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
                [0] = self.f_box_OutputOrder_v2_65_Out_0,
                [1] = self.f_box_OutputOrder_v2_65_Out_1,
                [2] = self.f_box_OutputOrder_v2_65_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1640181323");
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
                [0] = self.f_box_OutputOrder_v2_59_Out_0,
                [1] = self.f_box_OutputOrder_v2_59_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1658170706");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_9_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_48()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = self.FatherGroup,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1713214751");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_22_Out,
    });
    l0 = self.box_GroupSizeListener_v6_48;
    params = {
        -- Entity,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_75()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_5()
    local params;
    params = {
        -- Index,
        [0] = self.CurrentOutputNb,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1920668654");
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
                [0] = self.f_box_OutputOrder_v2_26_Out_0,
                [1] = self.f_box_OutputOrder_v2_26_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_18()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|1975113709");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_24_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = self.Father,
        -- pawns,
        [2] = self.Father,
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v3_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|2009674254");
    l0:SetConnections({
        -- Alive,
        [0] = self.f_box_IsPawnAlive_v3_51_Alive,
        -- DeadOrDown,
        [1] = self.f_box_IsPawnAlive_v3_51_DeadOrDown,
        -- NotLoaded,
        [2] = self.f_box_IsPawnAlive_v3_51_NotLoaded,
    });
    params = {
        -- Pawn,
        [0] = self.Father,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|2021493509");
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
                [0] = self.f_box_OutputOrder_v2_28_Out_0,
                [1] = self.f_box_OutputOrder_v2_28_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|2036239848");
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
                [0] = self.f_box_OutputOrder_v2_70_Out_0,
                [1] = self.f_box_OutputOrder_v2_70_Out_1,
                [2] = self.f_box_OutputOrder_v2_70_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_55()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 8,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|2087971295");
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
                [0] = self.f_box_OutputOrder_v2_83_Out_0,
                [1] = self.f_box_OutputOrder_v2_83_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|2131080064");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = self.Father,
        -- pawns,
        [2] = self.Father,
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_PUZZLEHINTS|2138733094");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_61_No,
    });
    params = {
        -- ent,
        [4] = self.eFatherSpawner02,
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_50_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.Father = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_8_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.isVOPlaying = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.isVOPlaying = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_12_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.isVOPlaying = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.isVOPlaying = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Switch_2_None()
    local l0;
    l0 = self.box_Switch_2;
    self.CurrentOutputNb = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Switch_2_Out()
    local l0;
    l0 = self.box_Switch_2;
    self.CurrentOutputNb = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Switch_2_Output()
    local l0;
    l0 = self.box_Switch_2;
    self.CurrentOutputNb = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Switch_2_Output()
    local l0;
    l0 = self.box_Switch_2;
    self.CurrentOutputNb = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Switch_2_Output()
    local l0;
    l0 = self.box_Switch_2;
    self.CurrentOutputNb = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.isVOPlaying = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_9_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.isVOPlaying = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_22_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.Father = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:HintDone()
    
end;
function export:ActivateFinalMarker()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="ResetHints" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="StartHints" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="StopHints" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="ActivateFinalMarker" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="HintDone" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="eFatherSpawner01" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eFatherSpawner02" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="FatherGroup" AnchorDynType="0" DataTypeID="group" />
		<DataIn Name="gPlayers" AnchorDynType="0" DataTypeID="group" />
		<DataIn Name="Hint_1" AnchorDynType="0" DataTypeID="Sound" />
		<DataIn Name="Hint_2" AnchorDynType="0" DataTypeID="Sound" />
		<DataIn Name="Hint_3" AnchorDynType="0" DataTypeID="Sound" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
