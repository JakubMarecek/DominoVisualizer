LUAC~ -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/i3/i3_outpost_01.domino
-- User graph: I3_Outpost_01_LVL1
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Gameplay_V3_Main.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.CultLocation_Vehicles_Manager.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/GetContextualAction.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/FC5_main/FC5_Outposts/I3/I3_Outpost_01.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1289406973.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.I3_Outpost_01 = nil;
    Globals.I3_Outpost_01 = {
        Veh_List = {
        },
        bQuestCompleted = false,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Outposts/I3/I3_Outpost_01.I3_Outpost_01_LVL1.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Gameplay_V3_Main.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "In_CultLocation_Cleanup",
            },
            [2] = {
                name = "OnLeaveZone",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "CallReinforcement_Wave1",
                delayed = true,
            },
            [1] = {
                name = "CallReinforcement_Wave2",
                delayed = true,
            },
            [2] = {
                name = "CultLocationCompleted_HostilityElimination",
                delayed = false,
            },
            [3] = {
                name = "CustomScript",
                delayed = false,
            },
            [4] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "alarm_in_setup",
                type = "bool",
            },
            [1] = {
                name = "Alarm01",
                type = "group",
            },
            [2] = {
                name = "Alarm02",
                type = "group",
            },
            [3] = {
                name = "Alarm03",
                type = "group",
            },
            [4] = {
                name = "CultLoc_Music_Type",
                type = "Sound",
            },
            [5] = {
                name = "CultLocationNPC_Group",
                type = "group",
            },
            [6] = {
                name = "SafeHouseEntity",
                type = "entity",
            },
        },
        dataInCount = 7,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CallReinforcement",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "ReinforcementCalled",
                delayed = true,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "ReinforcementPos01",
                type = "entity",
            },
            [1] = {
                name = "ReinforcementPos02",
                type = "entity",
            },
            [2] = {
                name = "ReinforcementPos03",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ReinforcementsPositionInfo",
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
                name = "Direction",
                type = "string",
            },
            [1] = {
                name = "Type",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Raids.CultLocation_Vehicles_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Enabled",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "e_Vehicles_proximitytrigger",
                type = "entity",
            },
            [1] = {
                name = "Vehicles_list",
                type = "list",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/SetActivityFact.lua")] = {
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
                name = "Fact",
                type = "string",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")] = {
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
                name = "pawnId",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "contextualActionId",
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
    metadataTable[GetPathID("Domino/System/MissionBlockLayer.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
            [2] = {
                name = "Disable",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Deactivated",
                delayed = false,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [1] = {
                name = "missionLayerId",
                type = "missionblocklayer",
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
    metadataTable[GetPathID("Domino/System/VehicleListener_v3.lua")] = {
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
                name = "OnAllSitting",
                delayed = true,
            },
            [3] = {
                name = "OnAllStanding",
                delayed = true,
            },
            [4] = {
                name = "OnChangeSeat",
                delayed = true,
            },
            [5] = {
                name = "OnInteract",
                delayed = true,
            },
            [6] = {
                name = "OnSit",
                delayed = true,
            },
            [7] = {
                name = "OnStandUp",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "archetypeId",
                type = "archetype",
            },
            [1] = {
                name = "autoDisable",
                type = "bool",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "SeatType",
                type = "int",
            },
            [4] = {
                name = "vehicle",
                type = "entity",
            },
            [5] = {
                name = "vehicleTypeFilter",
                type = "int",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "activePawn",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "I3_Outpost_01_LVL1";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1";
    self.Out = DummyFunction;
    self.iIntelCount = 0;
    self.NpcCount = 0;
    self.lSatDishes = {
    };
    self.heli_driver01 = nil;
    self.heli_driver01_stp = nil;
    self.heli_driver02 = nil;
    self.heli_driver02_stp = nil;
    self.box_VehicleListener_v3_21 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|144600436");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VehicleListener_v3_21_Disabled,
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_21_Enabled,
        -- OnAllSitting,
        [2] = self.f_box_VehicleListener_v3_21_OnAllSitting,
        -- OnAllStanding,
        [3] = self.f_box_VehicleListener_v3_21_OnAllStanding,
        -- OnChangeSeat,
        [4] = self.f_box_VehicleListener_v3_21_OnChangeSeat,
        -- OnInteract,
        [5] = self.f_box_VehicleListener_v3_21_OnInteract,
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_21_OnSit,
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_21_OnStandUp,
    });
    self.box_OnceOnly_v3_52 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|185900434");
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
                [0] = self.f_box_OnceOnly_v3_52_Out_0,
            },
            count = 2,
        },
    });
    self.box_SpawnAI_37 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|227991022");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_39 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|255818471");
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
                [0] = self.f_box_OnceOnly_v3_39_Out_0,
            },
            count = 2,
        },
    });
    self.box_VehicleListener_v3_19 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|259392323");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VehicleListener_v3_19_Disabled,
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_19_Enabled,
        -- OnAllSitting,
        [2] = self.f_box_VehicleListener_v3_19_OnAllSitting,
        -- OnAllStanding,
        [3] = self.f_box_VehicleListener_v3_19_OnAllStanding,
        -- OnChangeSeat,
        [4] = self.f_box_VehicleListener_v3_19_OnChangeSeat,
        -- OnInteract,
        [5] = self.f_box_VehicleListener_v3_19_OnInteract,
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_19_OnSit,
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_19_OnStandUp,
    });
    self.box_MultipleOR_53 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|388886459");
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
    self.box_Brick_Cult_Location_Reinforcements_6 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
    l0 = self.box_Brick_Cult_Location_Reinforcements_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Reinforcements_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|415057183");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Cult_Location_Reinforcements_6_ReinforcementCalled,
    });
    self.box_SpawnAI_41 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|451212891");
    l0:SetConnections({
    });
    self.box_Delay_v5_27 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|685496303");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_27_TimeElapsed,
    });
    self.box_MultipleOR_36 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|735133820");
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
        [0] = self.f_box_MultipleOR_36_Out,
    });
    self.box_Brick_Cult_Location_Gameplay_V3_Main_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Gameplay_V3_Main.debug.lua");
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Gameplay_V3_Main_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|750618145");
    l0:SetConnections({
        -- CallReinforcement_Wave1,
        [0] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_1_CallReinforcement_Wave1,
        -- CallReinforcement_Wave2,
        [1] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_1_CallReinforcement_Wave2,
        -- CustomScript,
        [3] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_1_CustomScript,
        -- Out,
        [4] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_1_Out,
    });
    self.box_VehicleListener_v3_26 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|784773103");
    l0:SetConnections({
        -- OnAllStanding,
        [3] = self.f_box_VehicleListener_v3_26_OnAllStanding,
    });
    self.box_CultLocation_Vehicles_Manager_43 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Vehicles_Manager.debug.lua");
    l0 = self.box_CultLocation_Vehicles_Manager_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Vehicles_Manager_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|885401766");
    l0:SetConnections({
    });
    self.box_GroupSizeListener_v5_49 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|911292106");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_49_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_49_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_49_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_49_MemberRemoved,
    });
    self.box_GroupSizeListener_v5_2 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1166906591");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_2_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_2_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_2_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_2_MemberRemoved,
    });
    self.box_Brick_Cult_Location_Reinforcements_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
    l0 = self.box_Brick_Cult_Location_Reinforcements_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Reinforcements_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1173737171");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Cult_Location_Reinforcements_4_ReinforcementCalled,
    });
    self.box_VehicleListener_v3_11 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1252039898");
    l0:SetConnections({
        -- OnAllStanding,
        [3] = self.f_box_VehicleListener_v3_11_OnAllStanding,
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1285203773");
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
        [0] = self.f_box_MultipleOR_14_Out,
    });
    self.box_CultLocation_Reinforcement_PhoneCall_Manager_7 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Reinforcement_PhoneCall_Manager_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1495967973");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_47 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1502301117");
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
                [0] = self.f_box_OnceOnly_v3_47_Out_0,
            },
            count = 2,
        },
    });
    self.box_SpawnAI_40 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1699740826");
    l0:SetConnections({
    });
    self.box_CultLocation_Reinforcement_PhoneCall_Manager_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Reinforcement_PhoneCall_Manager_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1783207003");
    l0:SetConnections({
    });
    self.box_Delay_v5_16 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1845923329");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_16_TimeElapsed,
    });
    self.box_Delay_v5_12 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1866073332");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_12_TimeElapsed,
    });
    self.box_Delay_v5_35 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1891508785");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_35_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_1();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|358500324", "358500324", "I3_Outpost_01_LVL1", "In", "box_Brick_Cult_Location_Gameplay_V3_Main_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_1();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1639308165", "1639308165", "I3_Outpost_01_LVL1", "OnLeaveZone", "box_Brick_Cult_Location_Gameplay_V3_Main_1.OnLeaveZone", self, l0:GetLuaBox());
    -- OnLeaveZone
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_55_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_54();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|2034920862", "2034920862", "I3_Outpost_01_LVL1", "box_Simple_Node_55.Out", "box_OutputOrder_v2_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_21_OnChangeSeat()
    self:OnExit_box_VehicleListener_v3_21_OnChangeSeat();
end;

function export:f_box_VehicleListener_v3_21_OnInteract()
    self:OnExit_box_VehicleListener_v3_21_OnInteract();
end;

function export:f_box_VehicleListener_v3_21_OnSit()
    local params, l0, l1;
    self:OnExit_box_VehicleListener_v3_21_OnSit();
    params = self:OnEnter_box_GetContextualAction_25();
    l0 = self.box_VehicleListener_v3_21;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1561646811", "1561646811", "I3_Outpost_01_LVL1", "box_VehicleListener_v3_21.OnSit", "box_GetContextualAction_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_21_OnStandUp()
    self:OnExit_box_VehicleListener_v3_21_OnStandUp();
end;

function export:f_box_OnceOnly_v3_52_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_52;
    l1 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1440717513", "1440717513", "I3_Outpost_01_LVL1", "box_OnceOnly_v3_52.Out", "box_MultipleOR_53.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_8_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|444774067", "444774067", "I3_Outpost_01_LVL1", "box_Simple_Node_8.Out", "box_OutputOrder_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_54_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_2();
    l0 = self.box_GroupSizeListener_v5_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|668073079", "668073079", "I3_Outpost_01_LVL1", "box_OutputOrder_v2_54.Out", "box_GroupSizeListener_v5_2.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_54_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_49();
    l0 = self.box_GroupSizeListener_v5_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1267780952", "1267780952", "I3_Outpost_01_LVL1", "box_OutputOrder_v2_54.Out", "box_GroupSizeListener_v5_49.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_39_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = self.box_OnceOnly_v3_39;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1214315288", "1214315288", "I3_Outpost_01_LVL1", "box_OnceOnly_v3_39.Out", "box_OutputOrder_v2_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_19_OnChangeSeat()
    self:OnExit_box_VehicleListener_v3_19_OnChangeSeat();
end;

function export:f_box_VehicleListener_v3_19_OnInteract()
    self:OnExit_box_VehicleListener_v3_19_OnInteract();
end;

function export:f_box_VehicleListener_v3_19_OnSit()
    local params, l0, l1;
    self:OnExit_box_VehicleListener_v3_19_OnSit();
    params = self:OnEnter_box_GetContextualAction_20();
    l0 = self.box_VehicleListener_v3_19;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|733689031", "733689031", "I3_Outpost_01_LVL1", "box_VehicleListener_v3_19.OnSit", "box_GetContextualAction_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_19_OnStandUp()
    self:OnExit_box_VehicleListener_v3_19_OnStandUp();
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|593258374", "593258374", "I3_Outpost_01_LVL1", "box_OutputOrder_v2_10.Out", "box_OutputOrder_v2_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1424842714", "1424842714", "I3_Outpost_01_LVL1", "box_OutputOrder_v2_10.Out", "box_OnceOnly_v3_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_10_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_44();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|439398413", "439398413", "I3_Outpost_01_LVL1", "box_OutputOrder_v2_10.Out", "box_MissionBlockLayer_44.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CultLocation_Vehicles_Manager_43();
    l0 = self.box_CultLocation_Vehicles_Manager_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|480885758", "480885758", "I3_Outpost_01_LVL1", "box_OutputOrder_v2_10.Out", "box_CultLocation_Vehicles_Manager_43.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_53_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_55();
    l0 = self.box_MultipleOR_53;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1858813319", "1858813319", "I3_Outpost_01_LVL1", "box_MultipleOR_53.Out", "box_Simple_Node_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Reinforcements_6_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_7();
    l0 = self.box_Brick_Cult_Location_Reinforcements_6;
    l1 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1216927846", "1216927846", "I3_Outpost_01_LVL1", "box_Brick_Cult_Location_Reinforcements_6.ReinforcementCalled", "box_CultLocation_Reinforcement_PhoneCall_Manager_7.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_27_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = self.box_Delay_v5_27;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|76808807", "76808807", "I3_Outpost_01_LVL1", "box_Delay_v5_27.TimeElapsed", "box_OutputOrder_v2_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_32();
    l0 = self.box_MultipleOR_36;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|865576364", "865576364", "I3_Outpost_01_LVL1", "box_MultipleOR_36.Out", "box_IsValueNil_v3_32.Group", l0:GetLuaBox(), l1:GetLuaBox());
    -- Group
    l1:Exec(7, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetContextualAction_20_Out()
    local params, l0;
    self:OnExit_box_GetContextualAction_20_Out();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_11();
    l0 = self.box_VehicleListener_v3_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1776000730", "1776000730", "I3_Outpost_01_LVL1", "box_GetContextualAction_20.Out", "box_VehicleListener_v3_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_1_CallReinforcement_Wave1()
    local l0, l1;
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|163656232", "163656232", "I3_Outpost_01_LVL1", "box_Brick_Cult_Location_Gameplay_V3_Main_1.CallReinforcement_Wave1", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_1_CallReinforcement_Wave2()
    local l0, l1;
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|2142015740", "2142015740", "I3_Outpost_01_LVL1", "box_Brick_Cult_Location_Gameplay_V3_Main_1.CallReinforcement_Wave2", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_1_CustomScript()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|114582550", "114582550", "I3_Outpost_01_LVL1", "box_Brick_Cult_Location_Gameplay_V3_Main_1.CustomScript", "box_OutputOrder_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_5();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1264814232", "1264814232", "I3_Outpost_01_LVL1", "box_Brick_Cult_Location_Gameplay_V3_Main_1.Out", "box_SetActivityFact_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_26_OnAllStanding()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_27();
    l0 = self.box_VehicleListener_v3_26;
    l1 = self.box_Delay_v5_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1438717181", "1438717181", "I3_Outpost_01_LVL1", "box_VehicleListener_v3_26.OnAllStanding", "box_Delay_v5_27.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_IsValueNil_v3_13_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_8();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1033054243", "1033054243", "I3_Outpost_01_LVL1", "box_IsValueNil_v3_13.No", "box_Simple_Node_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_13_Yes()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_12();
    l0 = self.box_Delay_v5_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1652946532", "1652946532", "I3_Outpost_01_LVL1", "box_IsValueNil_v3_13.Yes", "box_Delay_v5_12.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_21();
    l0 = self.box_VehicleListener_v3_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1577201968", "1577201968", "I3_Outpost_01_LVL1", "box_OutputOrder_v2_34.Out", "box_VehicleListener_v3_21.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Cult_Location_Reinforcements_4();
    l0 = self.box_Brick_Cult_Location_Reinforcements_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|395660454", "395660454", "I3_Outpost_01_LVL1", "box_OutputOrder_v2_34.Out", "box_Brick_Cult_Location_Reinforcements_4.CallReinforcement", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallReinforcement
    l0:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v5_49_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_51();
    l0 = self.box_GroupSizeListener_v5_49;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|111074930", "111074930", "I3_Outpost_01_LVL1", "box_GroupSizeListener_v5_49.MemberRemoved", "box_Compare_Integers_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_2_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_45();
    l0 = self.box_GroupSizeListener_v5_2;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1308654078", "1308654078", "I3_Outpost_01_LVL1", "box_GroupSizeListener_v5_2.MemberRemoved", "box_Compare_Integers_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Reinforcements_4_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_3();
    l0 = self.box_Brick_Cult_Location_Reinforcements_4;
    l1 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1496662187", "1496662187", "I3_Outpost_01_LVL1", "box_Brick_Cult_Location_Reinforcements_4.ReinforcementCalled", "box_CultLocation_Reinforcement_PhoneCall_Manager_3.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_VehicleListener_v3_11_OnAllStanding()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_16();
    l0 = self.box_VehicleListener_v3_11;
    l1 = self.box_Delay_v5_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1236370354", "1236370354", "I3_Outpost_01_LVL1", "box_VehicleListener_v3_11.OnAllStanding", "box_Delay_v5_16.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Simple_Node_9_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|472068747", "472068747", "I3_Outpost_01_LVL1", "box_Simple_Node_9.Out", "box_OutputOrder_v2_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_51_A_le_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|681998481", "681998481", "I3_Outpost_01_LVL1", "box_Compare_Integers_51.A_le_B", "box_OnceOnly_v3_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_13();
    l0 = self.box_MultipleOR_14;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|2143011899", "2143011899", "I3_Outpost_01_LVL1", "box_MultipleOR_14.Out", "box_IsValueNil_v3_13.Group", l0:GetLuaBox(), l1:GetLuaBox());
    -- Group
    l1:Exec(7, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_28();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|2107321015", "2107321015", "I3_Outpost_01_LVL1", "box_OutputOrder_v2_30.Out", "box_SetContextualStrategy_28.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_29();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|2031906177", "2031906177", "I3_Outpost_01_LVL1", "box_OutputOrder_v2_30.Out", "box_IsValueNil_v3_29.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_32_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_9();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|320251658", "320251658", "I3_Outpost_01_LVL1", "box_IsValueNil_v3_32.No", "box_Simple_Node_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_32_Yes()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_35();
    l0 = self.box_Delay_v5_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|636579495", "636579495", "I3_Outpost_01_LVL1", "box_IsValueNil_v3_32.Yes", "box_Delay_v5_35.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_IsValueNil_v3_29_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_31();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|11323142", "11323142", "I3_Outpost_01_LVL1", "box_IsValueNil_v3_29.No", "box_UseContextualActionModifier_v3_31.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_2();
    l0 = self.box_GroupSizeListener_v5_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|138647672", "138647672", "I3_Outpost_01_LVL1", "box_OutputOrder_v2_50.Out", "box_GroupSizeListener_v5_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_49();
    l0 = self.box_GroupSizeListener_v5_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1838611550", "1838611550", "I3_Outpost_01_LVL1", "box_OutputOrder_v2_50.Out", "box_GroupSizeListener_v5_49.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_47_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = self.box_OnceOnly_v3_47;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|376446512", "376446512", "I3_Outpost_01_LVL1", "box_OnceOnly_v3_47.Out", "box_OutputOrder_v2_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_5_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|667593998", "667593998", "I3_Outpost_01_LVL1", "box_SetActivityFact_5.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_17();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1302271758", "1302271758", "I3_Outpost_01_LVL1", "box_OutputOrder_v2_24.Out", "box_SetContextualStrategy_17.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_23();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|317688407", "317688407", "I3_Outpost_01_LVL1", "box_OutputOrder_v2_24.Out", "box_IsValueNil_v3_23.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_23_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_15();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|533810761", "533810761", "I3_Outpost_01_LVL1", "box_IsValueNil_v3_23.No", "box_UseContextualActionModifier_v3_15.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_45_A_le_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|988896020", "988896020", "I3_Outpost_01_LVL1", "box_Compare_Integers_45.A_le_B", "box_OnceOnly_v3_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_46();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1469753948", "1469753948", "I3_Outpost_01_LVL1", "box_OutputOrder_v2_48.Out", "box_SetContextualStrategy_46.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1162321883", "1162321883", "I3_Outpost_01_LVL1", "box_OutputOrder_v2_48.Out", "box_MultipleOR_53.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_16_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = self.box_Delay_v5_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|654647695", "654647695", "I3_Outpost_01_LVL1", "box_Delay_v5_16.TimeElapsed", "box_OutputOrder_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_12_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_12;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1504036939", "1504036939", "I3_Outpost_01_LVL1", "box_Delay_v5_12.TimeElapsed", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_35_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_35;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|2053099328", "2053099328", "I3_Outpost_01_LVL1", "box_Delay_v5_35.TimeElapsed", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_37();
    l0 = self.box_SpawnAI_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1730508239", "1730508239", "I3_Outpost_01_LVL1", "box_OutputOrder_v2_42.Out", "box_SpawnAI_37.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_40();
    l0 = self.box_SpawnAI_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|2145030753", "2145030753", "I3_Outpost_01_LVL1", "box_OutputOrder_v2_42.Out", "box_SpawnAI_40.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_41();
    l0 = self.box_SpawnAI_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|590915045", "590915045", "I3_Outpost_01_LVL1", "box_OutputOrder_v2_42.Out", "box_SpawnAI_41.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_19();
    l0 = self.box_VehicleListener_v3_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1635707502", "1635707502", "I3_Outpost_01_LVL1", "box_OutputOrder_v2_22.Out", "box_VehicleListener_v3_19.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Cult_Location_Reinforcements_6();
    l0 = self.box_Brick_Cult_Location_Reinforcements_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|942285099", "942285099", "I3_Outpost_01_LVL1", "box_OutputOrder_v2_22.Out", "box_Brick_Cult_Location_Reinforcements_6.CallReinforcement", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallReinforcement
    l0:Exec(0, params);
end;

function export:f_box_GetContextualAction_25_Out()
    local params, l0;
    self:OnExit_box_GetContextualAction_25_Out();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_26();
    l0 = self.box_VehicleListener_v3_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|786885871", "786885871", "I3_Outpost_01_LVL1", "box_GetContextualAction_25.Out", "box_VehicleListener_v3_26.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|@DisableJudge");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_55_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_21()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#B440B865",
        -- SeatType,
        [3] = 1,
        -- vehicle,
        [4] = "2097980410974701900",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|194629147");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = self.heli_driver02_stp,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|199766171");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_8_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|217218583");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160257495327073",
        -- missionLayerId,
        [1] = "36167456750068066",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_37()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104644161991889162",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|248917042");
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
                [0] = self.f_box_OutputOrder_v2_54_Out_0,
                [1] = self.f_box_OutputOrder_v2_54_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_19()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#F252FD1B",
        -- SeatType,
        [3] = 1,
        -- vehicle,
        [4] = "2103389253636473679",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|264771203");
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

function export:OnEnter_box_Brick_Cult_Location_Reinforcements_6()
    local params;
    DrawTextToScreen("Comment: Wave2", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Cult_Location_Reinforcements')-- Comment: Wave2");
    params = {
        -- ReinforcementPos01,
        [0] = "2103389253273666343",
        -- ReinforcementPos02,
        [1] = "2097786955195487780",
        -- ReinforcementPos03,
        [2] = "2097786964708169484",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_41()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104645693049171680",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_27()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_GetContextualAction_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetContextualAction_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|747826244");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetContextualAction_20_Out,
    });
    params = {
        -- pawnId,
        [0] = self.heli_driver01,
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_1()
    local params;
    params = {
        -- alarm_in_setup,
        [0] = true,
        -- Alarm01,
        [1] = "#06E95EA0",
        -- Alarm02,
        [2] = "#9FE00F1A",
        -- CultLoc_Music_Type,
        [4] = "1289406973",
        -- CultLocationNPC_Group,
        [5] = "#C9B97DF0",
        -- SafeHouseEntity,
        [6] = "2096819351511373965",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_26()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#6B5BACA1",
        -- SeatType,
        [3] = 3,
        -- vehicle,
        [4] = "2097980410974701900",
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|799568327");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_13_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_13_Yes,
    });
    params = {
        -- group,
        [7] = "#2D49E9DF",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|806674040");
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
                [0] = self.f_box_OutputOrder_v2_34_Out_0,
                [1] = self.f_box_OutputOrder_v2_34_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|844114956");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2102031329485928298",
        -- Group,
        [1] = "#6B5BACA1",
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Vehicles_Manager_43()
    local params;
    params = {
        -- e_Vehicles_proximitytrigger,
        [0] = "2104644246098170239",
        -- Vehicles_list,
        [1] = Globals.I3_Outpost_01.Veh_List,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_49()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#796528CB",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_2()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#C9B97DF0",
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Reinforcements_4()
    local params;
    DrawTextToScreen("Comment: Wave1", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Cult_Location_Reinforcements')-- Comment: Wave1");
    params = {
        -- ReinforcementPos01,
        [0] = "2096819351511373995",
        -- ReinforcementPos02,
        [1] = "2097980410720946453",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1230096582");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2102031329485928298",
        -- Group,
        [1] = "#F252FD1B",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_11()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#F252FD1B",
        -- SeatType,
        [3] = 3,
        -- vehicle,
        [4] = "2103389253636473679",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1257836794");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_9_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1285053900");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_51_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_49;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1336793087");
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1338494015");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_32_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_32_Yes,
    });
    params = {
        -- group,
        [7] = "#B440B865",
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1366791020");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_29_No,
    });
    params = {
        -- ent,
        [4] = self.heli_driver02_stp,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1419397600");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105777866386981264",
        -- Group,
        [1] = "#796528CB",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1477241230");
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

function export:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_7()
    local params;
    params = {
        -- Type,
        [1] = "chopper",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1598088201");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_5_Out,
    });
    params = {
        -- Fact,
        [0] = "KEY03_035_CultLocCompleted",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1653643649");
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

function export:OnEnter_box_IsValueNil_v3_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1687031383");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_23_No,
    });
    params = {
        -- ent,
        [4] = self.heli_driver01_stp,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_40()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104645693672025849",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1773480897");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_45_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_2;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_3()
    local params;
    params = {
        -- Direction,
        [0] = "west",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1821125839");
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
                [0] = self.f_box_OutputOrder_v2_48_Out_0,
                [1] = self.f_box_OutputOrder_v2_48_Out_1,
            },
            count = 2,
        },
    });
    params = {
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

function export:OnEnter_box_Delay_v5_12()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_35()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1898019687");
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
                [0] = self.f_box_OutputOrder_v2_42_Out_0,
                [1] = self.f_box_OutputOrder_v2_42_Out_1,
                [2] = self.f_box_OutputOrder_v2_42_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|1987079393");
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
                [0] = self.f_box_OutputOrder_v2_22_Out_0,
                [1] = self.f_box_OutputOrder_v2_22_Out_1,
            },
            count = 2,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|2006156867");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = self.heli_driver01_stp,
    };
    return params;
end;

function export:OnEnter_box_GetContextualAction_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetContextualAction_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\I3\\I3_Outpost_01.domino|@I3_Outpost_01_LVL1|2135745121");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetContextualAction_25_Out,
    });
    params = {
        -- pawnId,
        [0] = self.heli_driver02,
    };
    return params;
end;

function export:OnExit_box_VehicleListener_v3_21_OnChangeSeat()
    local l0;
    l0 = self.box_VehicleListener_v3_21;
    self.heli_driver02 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleListener_v3_21_OnInteract()
    local l0;
    l0 = self.box_VehicleListener_v3_21;
    self.heli_driver02 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleListener_v3_21_OnSit()
    local l0;
    l0 = self.box_VehicleListener_v3_21;
    self.heli_driver02 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleListener_v3_21_OnStandUp()
    local l0;
    l0 = self.box_VehicleListener_v3_21;
    self.heli_driver02 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleListener_v3_19_OnChangeSeat()
    local l0;
    l0 = self.box_VehicleListener_v3_19;
    self.heli_driver01 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleListener_v3_19_OnInteract()
    local l0;
    l0 = self.box_VehicleListener_v3_19;
    self.heli_driver01 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleListener_v3_19_OnSit()
    local l0;
    l0 = self.box_VehicleListener_v3_19;
    self.heli_driver01 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_VehicleListener_v3_19_OnStandUp()
    local l0;
    l0 = self.box_VehicleListener_v3_19;
    self.heli_driver01 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetContextualAction_20_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")];
    self.heli_driver01_stp = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetContextualAction_25_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")];
    self.heli_driver02_stp = l0:GetDataOutValue(0);
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
