LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/h4/h4_outpost_01_quest.domino
-- User graph: H4_Outpost_01_QUEST_AITargets
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="eDuckSpawner01" Type="Nomad|entity{}" />
    <DataIn Name="eDuckSpawner02" Type="Nomad|entity{}" />
    <DataIn Name="eDuckSpawner03" Type="Nomad|entity{}" />
    <DataIn Name="eDuckSpawnerStart" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareStrings.lua");
        cboxRes:RegisterBox("Domino/System/Coop/List/ListLoop.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PawnInvincibleState_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Outposts/H4/H4_Outpost_01_Quest.H4_Outpost_01_QUEST_AITargets.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableListener",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "SetDamagable",
            },
            [3] = {
                name = "SetUndamageable",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Damageable",
                delayed = false,
            },
            [1] = {
                name = "Enabled",
                delayed = false,
            },
            [2] = {
                name = "Killed",
                delayed = false,
            },
            [3] = {
                name = "Start",
                delayed = false,
            },
            [4] = {
                name = "Undamageable",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "eDuckSpawner01",
                type = "entity",
            },
            [1] = {
                name = "eDuckSpawner02",
                type = "entity",
            },
            [2] = {
                name = "eDuckSpawner03",
                type = "entity",
            },
            [3] = {
                name = "eDuckSpawnerStart",
                type = "entity",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/CompareStrings.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_contains_B",
                delayed = false,
            },
            [1] = {
                name = "A_eq_B",
                delayed = false,
            },
            [2] = {
                name = "A_ncontains_B",
                delayed = false,
            },
            [3] = {
                name = "A_neq_B",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "A",
                type = "string",
            },
            [1] = {
                name = "B",
                type = "string",
            },
            [2] = {
                name = "IgnoreCase",
                type = "bool",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Coop/List/ListLoop.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Loop",
            },
            [1] = {
                name = "NextData",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "EndOfList",
                delayed = true,
            },
            [1] = {
                name = "GotData",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Input",
                type = "list",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "CursorPos",
                type = "int",
            },
            [1] = {
                name = "Data",
                type = "entity",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/IsEntityLoaded_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "False",
                delayed = false,
            },
            [1] = {
                name = "True",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "entityId",
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
    metadataTable[GetPathID("Domino/System/Random.lua")] = {
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
            [1] = {
                name = "Probability",
                type = "float",
                dynamicType = 1,
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "OutputNb",
                type = "int",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "H4_Outpost_01_QUEST_AITargets";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets";
    self.Killed = DummyFunction;
    self.Enabled = DummyFunction;
    self.Undamageable = DummyFunction;
    self.Damageable = DummyFunction;
    self.Start = DummyFunction;
    self.lDucks = {
    };
    self.eTarget01 = nil;
    self.iDuckCount = 0;
    self.box_MultipleOR_46 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|@StartSpawnLoop");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 5,
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
        [0] = self.f_box_MultipleOR_46_Out,
    });
    self.box_RemoveEntity_v2_23 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|194753921");
    l0:SetConnections({
    });
    self.box_Delay_v5_41 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|334203201");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_41_TimeElapsed,
    });
    self.box_Gate_v3_19 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|442009870");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_19_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_19_Out,
    });
    self.box_SpawnAI_1 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|462766033");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_1_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_1_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_1_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_1_Success,
    });
    self.box_Random_24 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|478183760");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_24_Output_0,
                [1] = self.f_box_Random_24_Output_1,
                [2] = self.f_box_Random_24_Output_2,
            },
            count = 3,
        },
    });
    self.box_SpawnAI_27 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|687780946");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_27_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_27_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_27_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_27_Success,
    });
    self.box_ListLoop_39 = cbox:CreateBox("Domino/System/Coop/List/ListLoop.lua");
    l0 = self.box_ListLoop_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListLoop_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|781210142");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListLoop_39_EndOfList,
        -- GotData,
        [1] = self.f_box_ListLoop_39_GotData,
    });
    self.box_Gate_v3_54 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|789185444");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_54_Out,
    });
    self.box_Delay_v5_18 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|866612186");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_18_TimeElapsed,
    });
    self.box_SpawnAI_25 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|918606949");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_25_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_25_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_25_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_25_Success,
    });
    self.box_MultipleOR_26 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|921203254");
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
        [0] = self.f_box_MultipleOR_26_Out,
    });
    self.box_Delay_v5_29 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1045594820");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_29_TimeElapsed,
    });
    self.box_MultipleOR_52 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1060478302");
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
        [0] = self.f_box_MultipleOR_52_Out,
    });
    self.box_MultipleOR_16 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1069132592");
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
        [0] = self.f_box_MultipleOR_16_Out,
    });
    self.box_EntityStatusListener_10 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1099324498");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_10_Loaded,
    });
    self.box_RemoveEntity_v2_36 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1100296332");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_36_Out,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1118588235");
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
        [0] = self.f_box_MultipleOR_7_Out,
    });
    self.box_ListLoop_47 = cbox:CreateBox("Domino/System/Coop/List/ListLoop.lua");
    l0 = self.box_ListLoop_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListLoop_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1441404277");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListLoop_47_EndOfList,
        -- GotData,
        [1] = self.f_box_ListLoop_47_GotData,
    });
    self.box_RemoveEntity_v2_30 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1447661495");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_30_Out,
    });
    self.box_HealthListener_v6_49 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1476104697");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_49_Killed,
    });
    self.box_ListLoop_34 = cbox:CreateBox("Domino/System/Coop/List/ListLoop.lua");
    l0 = self.box_ListLoop_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListLoop_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1684011732");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListLoop_34_EndOfList,
        -- GotData,
        [1] = self.f_box_ListLoop_34_GotData,
    });
    self.box_ListLoop_33 = cbox:CreateBox("Domino/System/Coop/List/ListLoop.lua");
    l0 = self.box_ListLoop_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListLoop_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1742622760");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListLoop_33_EndOfList,
        -- GotData,
        [1] = self.f_box_ListLoop_33_GotData,
    });
    self.box_HealthListener_v6_5 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1803359218");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_5_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_5_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_5_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_5_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_5_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_5_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_5_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_5_Revived,
    });
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1821344529");
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
        [0] = self.f_box_MultipleOR_15_Out,
    });
    self.box_SpawnAI_17 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1834850176");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_17_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_17_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_17_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_17_Success,
    });
    self.box_ProximityTrigger_v2_12 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1842272262");
    l0:SetConnections({
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_12_Leave,
    });
    self.box_MultipleOR_53 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1907480416");
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
        [0] = self.f_box_MultipleOR_53_Out,
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1976290065");
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
        [0] = self.f_box_MultipleOR_11_Out,
    });
    self.box_Delay_v5_37 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|2014610162");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_37_TimeElapsed,
    });
    self.box_Delay_v5_22 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|2029682528");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_22_TimeElapsed,
    });
    self.box_RemoveEntity_v2_43 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|2077058489");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_43_Out,
    });
end;

function export:DisableListener()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|371792505", "371792505", "H4_Outpost_01_QUEST_AITargets", "DisableListener", "box_OutputOrder_v2_20.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Enable()
    local params, l0;
    params = self:OnEnter_box_SpawnAI_17();
    l0 = self.box_SpawnAI_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|812021050", "812021050", "H4_Outpost_01_QUEST_AITargets", "Enable", "box_SpawnAI_17.Spawn", self, l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:SetDamagable()
    local params, l0;
    params = self:OnEnter_box_PawnInvincibleState_v2_48();
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1911044492", "1911044492", "H4_Outpost_01_QUEST_AITargets", "SetDamagable", "box_PawnInvincibleState_v2_48.UnsetInvincible", self, l0:GetLuaBox());
    -- UnsetInvincible
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:SetUndamageable()
    local l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|901149268", "901149268", "H4_Outpost_01_QUEST_AITargets", "SetUndamageable", "box_MultipleOR_16.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_45_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_21();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1015289380", "1015289380", "H4_Outpost_01_QUEST_AITargets", "box_Simple_Node_45.Out", "box_SetContextualStrategy_21.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_44_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_5();
    l0 = self.box_HealthListener_v6_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1171083017", "1171083017", "H4_Outpost_01_QUEST_AITargets", "box_Simple_Node_44.Out", "box_HealthListener_v6_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|118205336", "118205336", "H4_Outpost_01_QUEST_AITargets", "box_OutputOrder_v2_20.Out", "box_OutputOrder_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_5();
    l0 = self.box_HealthListener_v6_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|149954755", "149954755", "H4_Outpost_01_QUEST_AITargets", "box_OutputOrder_v2_20.Out", "box_HealthListener_v6_5.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_20_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_19();
    l0 = self.box_Gate_v3_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1160784761", "1160784761", "H4_Outpost_01_QUEST_AITargets", "box_OutputOrder_v2_20.Out", "box_Gate_v3_19.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_46_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_19();
    l0 = self.box_MultipleOR_46;
    l1 = self.box_Gate_v3_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1058554795", "1058554795", "H4_Outpost_01_QUEST_AITargets", "box_MultipleOR_46.Out", "box_Gate_v3_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_IsValueNil_v3_35_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_36();
    l0 = self.box_RemoveEntity_v2_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|961354970", "961354970", "H4_Outpost_01_QUEST_AITargets", "box_IsValueNil_v3_35.No", "box_RemoveEntity_v2_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_44();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1160026335", "1160026335", "H4_Outpost_01_QUEST_AITargets", "box_OutputOrder_v2_3.Out", "box_Simple_Node_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1132578510", "1132578510", "H4_Outpost_01_QUEST_AITargets", "box_OutputOrder_v2_3.Out", "box_MultipleOR_46.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Strings_2_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|885645699", "885645699", "H4_Outpost_01_QUEST_AITargets", "box_Compare_Strings_2.A_eq_B", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsValueNil_v3_31_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_30();
    l0 = self.box_RemoveEntity_v2_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|48898451", "48898451", "H4_Outpost_01_QUEST_AITargets", "box_IsValueNil_v3_31.No", "box_RemoveEntity_v2_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_38_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1019077870", "1019077870", "H4_Outpost_01_QUEST_AITargets", "box_OutputOrder_v2_38.Out", "box_MultipleOR_26.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_38_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListLoop_34();
    l0 = self.box_ListLoop_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1755371759", "1755371759", "H4_Outpost_01_QUEST_AITargets", "box_OutputOrder_v2_38.Out", "box_ListLoop_34.Loop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Loop
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1046767497", "1046767497", "H4_Outpost_01_QUEST_AITargets", "box_OutputOrder_v2_40.Out", "box_MultipleOR_26.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListLoop_39();
    l0 = self.box_ListLoop_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1343899378", "1343899378", "H4_Outpost_01_QUEST_AITargets", "box_OutputOrder_v2_40.Out", "box_ListLoop_39.Loop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Loop
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_41_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_42();
    l0 = self.box_Delay_v5_41;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|974532651", "974532651", "H4_Outpost_01_QUEST_AITargets", "box_Delay_v5_41.TimeElapsed", "box_IsValueNil_v3_42.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_19_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_45();
    l0 = self.box_Gate_v3_19;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1246164985", "1246164985", "H4_Outpost_01_QUEST_AITargets", "box_Gate_v3_19.Closed", "box_Simple_Node_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_24();
    l0 = self.box_Gate_v3_19;
    l1 = self.box_Random_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1750123190", "1750123190", "H4_Outpost_01_QUEST_AITargets", "box_Gate_v3_19.Out", "box_Random_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IsValueNil_v3_42_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_43();
    l0 = self.box_RemoveEntity_v2_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|244433815", "244433815", "H4_Outpost_01_QUEST_AITargets", "box_IsValueNil_v3_42.No", "box_RemoveEntity_v2_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_1_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_1_Spawned();
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = self.box_SpawnAI_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1187765720", "1187765720", "H4_Outpost_01_QUEST_AITargets", "box_SpawnAI_1.Spawned", "box_OutputOrder_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_24_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_1();
    l0 = self.box_Random_24;
    l1 = self.box_SpawnAI_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|2029238045", "2029238045", "H4_Outpost_01_QUEST_AITargets", "box_Random_24.Output", "box_SpawnAI_1.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Random_24_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_25();
    l0 = self.box_Random_24;
    l1 = self.box_SpawnAI_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|505221976", "505221976", "H4_Outpost_01_QUEST_AITargets", "box_Random_24.Output", "box_SpawnAI_25.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Random_24_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_27();
    l0 = self.box_Random_24;
    l1 = self.box_SpawnAI_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1190702663", "1190702663", "H4_Outpost_01_QUEST_AITargets", "box_Random_24.Output", "box_SpawnAI_27.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Compare_Strings_4_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|839134352", "839134352", "H4_Outpost_01_QUEST_AITargets", "box_Compare_Strings_4.A_eq_B", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetContextualStrategy_21_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_22();
    l0 = self.box_Delay_v5_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1219023032", "1219023032", "H4_Outpost_01_QUEST_AITargets", "box_SetContextualStrategy_21.Out", "box_Delay_v5_22.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SpawnAI_27_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_27_Spawned();
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = self.box_SpawnAI_27;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|222174113", "222174113", "H4_Outpost_01_QUEST_AITargets", "box_SpawnAI_27.Spawned", "box_OutputOrder_v2_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ListLoop_39_EndOfList()
    self:OnExit_box_ListLoop_39_EndOfList();
end;

function export:f_box_ListLoop_39_GotData()
    local params, l0, l1;
    self:OnExit_box_ListLoop_39_GotData();
    params = self:OnEnter_box_Delay_v5_41();
    l0 = self.box_ListLoop_39;
    l1 = self.box_Delay_v5_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|530187641", "530187641", "H4_Outpost_01_QUEST_AITargets", "box_ListLoop_39.GotData", "box_Delay_v5_41.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_54_Out()
    local l0;
    l0 = self.box_Gate_v3_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1649778995", "1649778995", "H4_Outpost_01_QUEST_AITargets", "box_Gate_v3_54.Out", "Killed", l0:GetLuaBox(), self);
    self:Killed();
end;

function export:f_box_Delay_v5_18_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_18;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|476307299", "476307299", "H4_Outpost_01_QUEST_AITargets", "box_Delay_v5_18.TimeElapsed", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_25_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_25_Spawned();
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = self.box_SpawnAI_25;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1360399337", "1360399337", "H4_Outpost_01_QUEST_AITargets", "box_SpawnAI_25.Spawned", "box_OutputOrder_v2_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_MultipleOR_26;
    l1 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|2006241624", "2006241624", "H4_Outpost_01_QUEST_AITargets", "box_MultipleOR_26.Out", "box_Delay_v5_18.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_29_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_31();
    l0 = self.box_Delay_v5_29;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1419821490", "1419821490", "H4_Outpost_01_QUEST_AITargets", "box_Delay_v5_29.TimeElapsed", "box_IsValueNil_v3_31.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_12();
    l0 = self.box_MultipleOR_52;
    l1 = self.box_ProximityTrigger_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|708244495", "708244495", "H4_Outpost_01_QUEST_AITargets", "box_MultipleOR_52.Out", "box_ProximityTrigger_v2_12.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PawnInvincibleState_v2_48();
    l0 = self.box_MultipleOR_16;
    l1 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1090880033", "1090880033", "H4_Outpost_01_QUEST_AITargets", "box_MultipleOR_16.Out", "box_PawnInvincibleState_v2_48.SetInvincible", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetInvincible
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_49();
    l0 = self.box_HealthListener_v6_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1023619614", "1023619614", "H4_Outpost_01_QUEST_AITargets", "box_OutputOrder_v2_14.Out", "box_HealthListener_v6_49.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_12();
    l0 = self.box_ProximityTrigger_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|383606995", "383606995", "H4_Outpost_01_QUEST_AITargets", "box_OutputOrder_v2_14.Out", "box_ProximityTrigger_v2_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_14_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|831126764", "831126764", "H4_Outpost_01_QUEST_AITargets", "box_OutputOrder_v2_14.Out", "Damageable", clone:GetLuaBox(), self);
    self:Damageable();
end;

function export:f_box_EntityStatusListener_10_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_10;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|261641458", "261641458", "H4_Outpost_01_QUEST_AITargets", "box_EntityStatusListener_10.Loaded", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RemoveEntity_v2_36_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_36;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1399977832", "1399977832", "H4_Outpost_01_QUEST_AITargets", "box_RemoveEntity_v2_36.Out", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_MultipleOR_7_Out()
    local l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1770808952", "1770808952", "H4_Outpost_01_QUEST_AITargets", "box_MultipleOR_7.Out", "Killed", l0:GetLuaBox(), self);
    self:Killed();
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1546714408", "1546714408", "H4_Outpost_01_QUEST_AITargets", "box_OutputOrder_v2_32.Out", "box_MultipleOR_26.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListLoop_33();
    l0 = self.box_ListLoop_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1848449768", "1848449768", "H4_Outpost_01_QUEST_AITargets", "box_OutputOrder_v2_32.Out", "box_ListLoop_33.Loop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Loop
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|2130407396", "2130407396", "H4_Outpost_01_QUEST_AITargets", "box_OutputOrder_v2_13.Out", "box_MultipleOR_53.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1563400019", "1563400019", "H4_Outpost_01_QUEST_AITargets", "box_OutputOrder_v2_13.Out", "box_MultipleOR_52.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_9_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_10();
    l0 = self.box_EntityStatusListener_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1722630120", "1722630120", "H4_Outpost_01_QUEST_AITargets", "box_IsEntityLoaded_v3_9.False", "box_EntityStatusListener_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_9_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1053442185", "1053442185", "H4_Outpost_01_QUEST_AITargets", "box_IsEntityLoaded_v3_9.True", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_51_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_54();
    l0 = self.box_Gate_v3_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|375794824", "375794824", "H4_Outpost_01_QUEST_AITargets", "box_OutputOrder_v2_51.Out", "box_Gate_v3_54.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_51_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1891394444", "1891394444", "H4_Outpost_01_QUEST_AITargets", "box_OutputOrder_v2_51.Out", "box_MultipleOR_15.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_51_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1381114531", "1381114531", "H4_Outpost_01_QUEST_AITargets", "box_OutputOrder_v2_51.Out", "box_MultipleOR_52.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|987385530", "987385530", "H4_Outpost_01_QUEST_AITargets", "box_OutputOrder_v2_28.Out", "box_OutputOrder_v2_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|294153989", "294153989", "H4_Outpost_01_QUEST_AITargets", "box_OutputOrder_v2_28.Out", "Start", clone:GetLuaBox(), self);
    self:Start();
end;

function export:f_box_OutputOrder_v2_28_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_54();
    l0 = self.box_Gate_v3_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|658373891", "658373891", "H4_Outpost_01_QUEST_AITargets", "box_OutputOrder_v2_28.Out", "box_Gate_v3_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1841024549", "1841024549", "H4_Outpost_01_QUEST_AITargets", "box_OutputOrder_v2_50.Out", "box_MultipleOR_15.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|2001712349", "2001712349", "H4_Outpost_01_QUEST_AITargets", "box_OutputOrder_v2_50.Out", "box_MultipleOR_53.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ListLoop_47_EndOfList()
    self:OnExit_box_ListLoop_47_EndOfList();
end;

function export:f_box_ListLoop_47_GotData()
    local params, l0, l1;
    self:OnExit_box_ListLoop_47_GotData();
    params = self:OnEnter_box_IsEntityLoaded_v3_9();
    l0 = self.box_ListLoop_47;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1519778035", "1519778035", "H4_Outpost_01_QUEST_AITargets", "box_ListLoop_47.GotData", "box_IsEntityLoaded_v3_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_30_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_30;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1357432234", "1357432234", "H4_Outpost_01_QUEST_AITargets", "box_RemoveEntity_v2_30.Out", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_HealthListener_v6_49_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_51();
    l0 = self.box_HealthListener_v6_49;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|2080790755", "2080790755", "H4_Outpost_01_QUEST_AITargets", "box_HealthListener_v6_49.Killed", "box_OutputOrder_v2_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PawnInvincibleState_v2_48_OnSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1077489157", "1077489157", "H4_Outpost_01_QUEST_AITargets", "box_PawnInvincibleState_v2_48.OnSet", "Undamageable", clone:GetLuaBox(), self);
    self:Undamageable();
end;

function export:f_box_PawnInvincibleState_v2_48_OnUnSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|676698423", "676698423", "H4_Outpost_01_QUEST_AITargets", "box_PawnInvincibleState_v2_48.OnUnSet", "box_OutputOrder_v2_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_4();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1388578215", "1388578215", "H4_Outpost_01_QUEST_AITargets", "box_OutputOrder_v2_6.Out", "box_Compare_Strings_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_2();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1114148334", "1114148334", "H4_Outpost_01_QUEST_AITargets", "box_OutputOrder_v2_6.Out", "box_Compare_Strings_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListLoop_34_EndOfList()
    self:OnExit_box_ListLoop_34_EndOfList();
end;

function export:f_box_ListLoop_34_GotData()
    local params, l0, l1;
    self:OnExit_box_ListLoop_34_GotData();
    params = self:OnEnter_box_Delay_v5_37();
    l0 = self.box_ListLoop_34;
    l1 = self.box_Delay_v5_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1722543076", "1722543076", "H4_Outpost_01_QUEST_AITargets", "box_ListLoop_34.GotData", "box_Delay_v5_37.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ListLoop_33_EndOfList()
    self:OnExit_box_ListLoop_33_EndOfList();
end;

function export:f_box_ListLoop_33_GotData()
    local params, l0, l1;
    self:OnExit_box_ListLoop_33_GotData();
    params = self:OnEnter_box_Delay_v5_29();
    l0 = self.box_ListLoop_33;
    l1 = self.box_Delay_v5_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1562698403", "1562698403", "H4_Outpost_01_QUEST_AITargets", "box_ListLoop_33.GotData", "box_Delay_v5_29.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_HealthListener_v6_5_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = self.box_HealthListener_v6_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1516496671", "1516496671", "H4_Outpost_01_QUEST_AITargets", "box_HealthListener_v6_5.Killed", "box_OutputOrder_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = self.box_MultipleOR_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|827958895", "827958895", "H4_Outpost_01_QUEST_AITargets", "box_MultipleOR_15.Out", "box_OutputOrder_v2_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_17_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_17_Spawned();
    params = self:OnEnter_box_ListLoop_47();
    l0 = self.box_SpawnAI_17;
    l1 = self.box_ListLoop_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|2006935906", "2006935906", "H4_Outpost_01_QUEST_AITargets", "box_SpawnAI_17.Spawned", "box_ListLoop_47.Loop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Loop
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_12_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = self.box_ProximityTrigger_v2_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|16328912", "16328912", "H4_Outpost_01_QUEST_AITargets", "box_ProximityTrigger_v2_12.Leave", "box_OutputOrder_v2_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1498567386", "1498567386", "H4_Outpost_01_QUEST_AITargets", "box_OutputOrder_v2_8.Out", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1742854607", "1742854607", "H4_Outpost_01_QUEST_AITargets", "box_OutputOrder_v2_8.Out", "Enabled", clone:GetLuaBox(), self);
    self:Enabled();
end;

function export:f_box_MultipleOR_53_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_49();
    l0 = self.box_MultipleOR_53;
    l1 = self.box_HealthListener_v6_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|324314686", "324314686", "H4_Outpost_01_QUEST_AITargets", "box_MultipleOR_53.Out", "box_HealthListener_v6_49.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = self.box_MultipleOR_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|101014384", "101014384", "H4_Outpost_01_QUEST_AITargets", "box_MultipleOR_11.Out", "box_OutputOrder_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_37_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_35();
    l0 = self.box_Delay_v5_37;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1260611208", "1260611208", "H4_Outpost_01_QUEST_AITargets", "box_Delay_v5_37.TimeElapsed", "box_IsValueNil_v3_35.Entity", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entity
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_22_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_23();
    l0 = self.box_Delay_v5_22;
    l1 = self.box_RemoveEntity_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1907841412", "1907841412", "H4_Outpost_01_QUEST_AITargets", "box_Delay_v5_22.TimeElapsed", "box_RemoveEntity_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_43_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_43;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1885019197", "1885019197", "H4_Outpost_01_QUEST_AITargets", "box_RemoveEntity_v2_43.Out", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:OnEnter_box_Simple_Node_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|@Cleanup");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_45_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|@DamageType");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_44_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|@Disable");
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
                [0] = self.f_box_OutputOrder_v2_20_Out_0,
                [1] = self.f_box_OutputOrder_v2_20_Out_1,
                [2] = self.f_box_OutputOrder_v2_20_Out_2,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|45972761");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_35_No,
    });
    l0 = self.box_ListLoop_34;
    params = {
        -- ent,
        [4] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|100070197");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|165032364");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_2_A_eq_B,
    });
    l0 = self.box_HealthListener_v6_5;
    params = {
        -- A,
        [0] = "BulletImpact",
        -- B,
        [1] = l0:GetDataOutValue(5),
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_23()
    local params;
    params = {
        -- Group,
        [0] = "#EF8B991C",
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|210457505");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_31_No,
    });
    l0 = self.box_ListLoop_33;
    params = {
        -- ent,
        [4] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|248549942");
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

function export:OnEnter_box_OutputOrder_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|276239569");
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

function export:OnEnter_box_Delay_v5_41()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_19()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|453297039");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_42_No,
    });
    l0 = self.box_ListLoop_39;
    params = {
        -- ent,
        [4] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_1()
    local params;
    params = {
        -- EntitySpawner,
        [0] = self.eDuckSpawner01,
    };
    return params;
end;

function export:OnEnter_box_Random_24()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|580746379");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_4_A_eq_B,
    });
    l0 = self.box_HealthListener_v6_5;
    params = {
        -- A,
        [0] = "explosion",
        -- B,
        [1] = l0:GetDataOutValue(5),
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|642088399");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_21_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104757897094238295",
        -- Group,
        [1] = "#EF8B991C",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_27()
    local params;
    params = {
        -- EntitySpawner,
        [0] = self.eDuckSpawner03,
    };
    return params;
end;

function export:OnEnter_box_ListLoop_39()
    local params, l0;
    l0 = self.box_SpawnAI_27;
    params = {
        -- Input,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_54()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_18()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_25()
    local params;
    params = {
        -- EntitySpawner,
        [0] = self.eDuckSpawner02,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_29()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1082062381");
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
                [0] = self.f_box_OutputOrder_v2_14_Out_0,
                [1] = self.f_box_OutputOrder_v2_14_Out_1,
                [2] = self.f_box_OutputOrder_v2_14_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_10()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eTarget01,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_36()
    local params, l0;
    l0 = self.box_ListLoop_34;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1127558371");
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
                [0] = self.f_box_OutputOrder_v2_32_Out_0,
                [1] = self.f_box_OutputOrder_v2_32_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1136362059");
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

function export:OnEnter_box_IsEntityLoaded_v3_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1243933930");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_9_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_9_True,
    });
    params = {
        -- entityId,
        [0] = self.eTarget01,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1311274091");
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
                [0] = self.f_box_OutputOrder_v2_51_Out_0,
                [1] = self.f_box_OutputOrder_v2_51_Out_1,
                [2] = self.f_box_OutputOrder_v2_51_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1338757421");
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
                [0] = self.f_box_OutputOrder_v2_28_Out_0,
                [1] = self.f_box_OutputOrder_v2_28_Out_1,
                [2] = self.f_box_OutputOrder_v2_28_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1421868512");
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

function export:OnEnter_box_ListLoop_47()
    local params, l0;
    l0 = self.box_SpawnAI_17;
    params = {
        -- Input,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_30()
    local params, l0;
    l0 = self.box_ListLoop_33;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_49()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = "#EF8B991C",
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1543641492");
    l0:SetConnections({
        -- OnSet,
        [0] = self.f_box_PawnInvincibleState_v2_48_OnSet,
        -- OnUnSet,
        [1] = self.f_box_PawnInvincibleState_v2_48_OnUnSet,
    });
    params = {
        -- Pawn,
        [0] = self.eTarget01,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1614429818");
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
                [0] = self.f_box_OutputOrder_v2_6_Out_0,
                [1] = self.f_box_OutputOrder_v2_6_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ListLoop_34()
    local params, l0;
    l0 = self.box_SpawnAI_25;
    params = {
        -- Input,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_ListLoop_33()
    local params, l0;
    l0 = self.box_SpawnAI_1;
    params = {
        -- Input,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_5()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#EF8B991C",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_17()
    local params;
    params = {
        -- EntitySpawner,
        [0] = self.eDuckSpawnerStart,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_12()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.eTarget01,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2105062068005663772",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\H4\\H4_Outpost_01_Quest.domino|@H4_Outpost_01_QUEST_AITargets|1849939277");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_37()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_22()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 6,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_43()
    local params, l0;
    l0 = self.box_ListLoop_39;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnExit_box_SpawnAI_1_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_1;
    l1 = self.box_ListLoop_33;
    l1:GetLuaBox().Input = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SpawnAI_27_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_27;
    l1 = self.box_ListLoop_39;
    l1:GetLuaBox().Input = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ListLoop_39_EndOfList()
    local l0, l1;
    l0 = self.box_ListLoop_39;
    l1 = self.box_RemoveEntity_v2_43;
    l1:GetLuaBox().Group = l0:GetDataOutValue(1);
end;

function export:OnExit_box_ListLoop_39_GotData()
    local l0, l1;
    l0 = self.box_ListLoop_39;
    l1 = self.box_RemoveEntity_v2_43;
    l1:GetLuaBox().Group = l0:GetDataOutValue(1);
end;

function export:OnExit_box_SpawnAI_25_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_25;
    l1 = self.box_ListLoop_34;
    l1:GetLuaBox().Input = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ListLoop_47_EndOfList()
    local l0;
    l0 = self.box_ListLoop_47;
    self.eTarget01 = l0:GetDataOutValue(1);
end;

function export:OnExit_box_ListLoop_47_GotData()
    local l0;
    l0 = self.box_ListLoop_47;
    self.eTarget01 = l0:GetDataOutValue(1);
end;

function export:OnExit_box_ListLoop_34_EndOfList()
    local l0, l1;
    l0 = self.box_ListLoop_34;
    l1 = self.box_RemoveEntity_v2_36;
    l1:GetLuaBox().Group = l0:GetDataOutValue(1);
end;

function export:OnExit_box_ListLoop_34_GotData()
    local l0, l1;
    l0 = self.box_ListLoop_34;
    l1 = self.box_RemoveEntity_v2_36;
    l1:GetLuaBox().Group = l0:GetDataOutValue(1);
end;

function export:OnExit_box_ListLoop_33_EndOfList()
    local l0, l1;
    l0 = self.box_ListLoop_33;
    l1 = self.box_RemoveEntity_v2_30;
    l1:GetLuaBox().Group = l0:GetDataOutValue(1);
end;

function export:OnExit_box_ListLoop_33_GotData()
    local l0, l1;
    l0 = self.box_ListLoop_33;
    l1 = self.box_RemoveEntity_v2_30;
    l1:GetLuaBox().Group = l0:GetDataOutValue(1);
end;

function export:OnExit_box_SpawnAI_17_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_17;
    l1 = self.box_ListLoop_47;
    l1:GetLuaBox().Input = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Killed()
    
end;
function export:Enabled()
    
end;
function export:Undamageable()
    
end;
function export:Damageable()
    
end;
function export:Start()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="DisableListener" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Enable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="SetDamagable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="SetUndamageable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Damageable" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Enabled" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Killed" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Start" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Undamageable" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="eDuckSpawner01" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eDuckSpawner02" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eDuckSpawner03" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eDuckSpawnerStart" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
