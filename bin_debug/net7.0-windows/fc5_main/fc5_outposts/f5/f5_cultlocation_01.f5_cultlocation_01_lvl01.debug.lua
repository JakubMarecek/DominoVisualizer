LUAC~�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/f5/f5_cultlocation_01.domino
-- User graph: F5_CultLocation_01_LVL01
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
        cboxRes:RegisterBox("Domino/System/AI/AlarmListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/ConversationListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/User/FC5_main/FC5_Outposts/F5/F5_CultLocation_01.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[974905219.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.F5_CultLocation_01 = nil;
    Globals.F5_CultLocation_01 = {
        Veh_List = {
        },
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Outposts/F5/F5_CultLocation_01.F5_CultLocation_01_LVL01.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/AlarmListener.lua")] = {
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
                name = "AlarmActivated",
                delayed = true,
            },
            [1] = {
                name = "AlarmDeactivated",
                delayed = true,
            },
            [2] = {
                name = "AlarmDestroyed",
                delayed = true,
            },
            [3] = {
                name = "AlarmDisabled",
                delayed = true,
            },
            [4] = {
                name = "Disabled",
                delayed = false,
            },
            [5] = {
                name = "Enabled",
                delayed = false,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "AlarmGroup",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Alarm",
                type = "entity",
            },
            [1] = {
                name = "Pawn",
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
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/ConversationListener.lua")] = {
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
                name = "Aborted",
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
                name = "Finished",
                delayed = true,
            },
            [4] = {
                name = "Paused",
                delayed = true,
            },
            [5] = {
                name = "Resumed",
                delayed = true,
            },
            [6] = {
                name = "Skipped",
                delayed = true,
            },
            [7] = {
                name = "Started",
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
    self._name = "F5_CultLocation_01_LVL01";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01";
    self.Out = DummyFunction;
    self.box_SpawnAI_4 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|41805280");
    l0:SetConnections({
    });
    self.box_CultLocation_Vehicles_Manager_22 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Vehicles_Manager.debug.lua");
    l0 = self.box_CultLocation_Vehicles_Manager_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Vehicles_Manager_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|88303701");
    l0:SetConnections({
    });
    self.box_Delay_v5_16 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|233718591");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_16_TimeElapsed,
    });
    self.box_Brick_Cult_Location_Reinforcements_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
    l0 = self.box_Brick_Cult_Location_Reinforcements_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Reinforcements_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|344956031");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Cult_Location_Reinforcements_1_ReinforcementCalled,
    });
    self.box_OnceOnly_v3_10 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|542448572");
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
                [0] = self.f_box_OnceOnly_v3_10_Out_0,
            },
            count = 1,
        },
    });
    self.box_AlarmListener_11 = cbox:CreateBox("Domino/System/AI/AlarmListener.lua");
    l0 = self.box_AlarmListener_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AlarmListener_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|824635336");
    l0:SetConnections({
        -- AlarmActivated,
        [0] = self.f_box_AlarmListener_11_AlarmActivated,
    });
    self.box_Brick_Cult_Location_Gameplay_V3_Main_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Gameplay_V3_Main.debug.lua");
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Gameplay_V3_Main_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|1045598155");
    l0:SetConnections({
        -- CallReinforcement_Wave1,
        [0] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_2_CallReinforcement_Wave1,
        -- CallReinforcement_Wave2,
        [1] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_2_CallReinforcement_Wave2,
        -- CustomScript,
        [3] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_2_CustomScript,
        -- Out,
        [4] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_2_Out,
    });
    self.box_SpawnAI_28 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|1066815712");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_15 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|1204921960");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_15_SomeoneNear,
    });
    self.box_Brick_Cult_Location_Reinforcements_25 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
    l0 = self.box_Brick_Cult_Location_Reinforcements_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Reinforcements_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|1549984355");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Cult_Location_Reinforcements_25_ReinforcementCalled,
    });
    self.box_ConversationListener_14 = cbox:CreateBox("Domino/System/AI/ConversationListener.lua");
    l0 = self.box_ConversationListener_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConversationListener_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|1660635746");
    l0:SetConnections({
        -- Finished,
        [3] = self.f_box_ConversationListener_14_Finished,
    });
    self.box_CultLocation_Reinforcement_PhoneCall_Manager_24 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Reinforcement_PhoneCall_Manager_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|1801879026");
    l0:SetConnections({
    });
    self.box_CultLocation_Reinforcement_PhoneCall_Manager_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Reinforcement_PhoneCall_Manager_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|1851274931");
    l0:SetConnections({
    });
    self.box_SpawnAI_3 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|2039370656");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_2();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|638507478", "638507478", "F5_CultLocation_01_LVL01", "In", "box_Brick_Cult_Location_Gameplay_V3_Main_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_2();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|341074093", "341074093", "F5_CultLocation_01_LVL01", "OnLeaveZone", "box_Brick_Cult_Location_Gameplay_V3_Main_2.OnLeaveZone", self, l0:GetLuaBox());
    -- OnLeaveZone
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_21_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_AlarmListener_11();
    l0 = self.box_AlarmListener_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|911126264", "911126264", "F5_CultLocation_01_LVL01", "box_Simple_Node_21.Out", "box_AlarmListener_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_8_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|665058733", "665058733", "F5_CultLocation_01_LVL01", "box_Simple_Node_8.Out", "box_OutputOrder_v2_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_20_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_9();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|1379340195", "1379340195", "F5_CultLocation_01_LVL01", "box_Simple_Node_20.Out", "box_GetPlayerGroup_v2_9.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_27_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Cult_Location_Reinforcements_1();
    l0 = self.box_Brick_Cult_Location_Reinforcements_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|1211304496", "1211304496", "F5_CultLocation_01_LVL01", "box_Simple_Node_27.Out", "box_Brick_Cult_Location_Reinforcements_1.CallReinforcement", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallReinforcement
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_26_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Cult_Location_Reinforcements_25();
    l0 = self.box_Brick_Cult_Location_Reinforcements_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|819077872", "819077872", "F5_CultLocation_01_LVL01", "box_Simple_Node_26.Out", "box_Brick_Cult_Location_Reinforcements_25.CallReinforcement", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallReinforcement
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_23_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_CultLocation_Vehicles_Manager_22();
    l0 = self.box_CultLocation_Vehicles_Manager_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|1593279805", "1593279805", "F5_CultLocation_01_LVL01", "box_Simple_Node_23.Out", "box_CultLocation_Vehicles_Manager_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_4();
    l0 = self.box_SpawnAI_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|345419976", "345419976", "F5_CultLocation_01_LVL01", "box_OutputOrder_v2_6.Out", "box_SpawnAI_4.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_3();
    l0 = self.box_SpawnAI_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|62000344", "62000344", "F5_CultLocation_01_LVL01", "box_OutputOrder_v2_6.Out", "box_SpawnAI_3.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_6_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_28();
    l0 = self.box_SpawnAI_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|1359729434", "1359729434", "F5_CultLocation_01_LVL01", "box_OutputOrder_v2_6.Out", "box_SpawnAI_28.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_16_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_13();
    l0 = self.box_Delay_v5_16;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|1595016667", "1595016667", "F5_CultLocation_01_LVL01", "box_Delay_v5_16.TimeElapsed", "box_Print_v2_13.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Reinforcements_1_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_5();
    l0 = self.box_Brick_Cult_Location_Reinforcements_1;
    l1 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|1415553259", "1415553259", "F5_CultLocation_01_LVL01", "box_Brick_Cult_Location_Reinforcements_1.ReinforcementCalled", "box_CultLocation_Reinforcement_PhoneCall_Manager_5.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_10_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_12();
    l0 = self.box_OnceOnly_v3_10;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|1682895031", "1682895031", "F5_CultLocation_01_LVL01", "box_OnceOnly_v3_10.Out", "box_SetContextualStrategy_12.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_7();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|1938260391", "1938260391", "F5_CultLocation_01_LVL01", "box_OutputOrder_v2_17.Out", "box_UseContextualActionModifier_v3_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AlarmListener_11_AlarmActivated()
    local l0, l1;
    l0 = self.box_AlarmListener_11;
    l1 = self.box_OnceOnly_v3_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|2079873656", "2079873656", "F5_CultLocation_01_LVL01", "box_AlarmListener_11.AlarmActivated", "box_OnceOnly_v3_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_7_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ConversationListener_14();
    l0 = self.box_ConversationListener_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|27054278", "27054278", "F5_CultLocation_01_LVL01", "box_UseContextualActionModifier_v3_7.Enabled", "box_ConversationListener_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_2_CallReinforcement_Wave1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_27();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_2;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|388934116", "388934116", "F5_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_2.CallReinforcement_Wave1", "box_Simple_Node_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_2_CallReinforcement_Wave2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_26();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_2;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|2113196827", "2113196827", "F5_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_2.CallReinforcement_Wave2", "box_Simple_Node_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_2_CustomScript()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|1695599610", "1695599610", "F5_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_2.CustomScript", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_2_Out()
    local l0;
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|384024880", "384024880", "F5_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_2.Out", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_ProximityRadiusListener_v3_15_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = self.box_ProximityRadiusListener_v3_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|690512934", "690512934", "F5_CultLocation_01_LVL01", "box_ProximityRadiusListener_v3_15.SomeoneNear", "box_OutputOrder_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Reinforcements_25_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_24();
    l0 = self.box_Brick_Cult_Location_Reinforcements_25;
    l1 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|1055766008", "1055766008", "F5_CultLocation_01_LVL01", "box_Brick_Cult_Location_Reinforcements_25.ReinforcementCalled", "box_CultLocation_Reinforcement_PhoneCall_Manager_24.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_ConversationListener_14_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_16();
    l0 = self.box_ConversationListener_14;
    l1 = self.box_Delay_v5_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|1605056560", "1605056560", "F5_CultLocation_01_LVL01", "box_ConversationListener_14.Finished", "box_Delay_v5_16.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_20();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|1361716307", "1361716307", "F5_CultLocation_01_LVL01", "box_OutputOrder_v2_18.Out", "box_Simple_Node_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|485636194", "485636194", "F5_CultLocation_01_LVL01", "box_OutputOrder_v2_18.Out", "box_Simple_Node_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_23();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|380542761", "380542761", "F5_CultLocation_01_LVL01", "box_OutputOrder_v2_18.Out", "box_Simple_Node_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_8();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|1401837540", "1401837540", "F5_CultLocation_01_LVL01", "box_OutputOrder_v2_18.Out", "box_Simple_Node_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_9_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_9_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_15();
    l0 = self.box_ProximityRadiusListener_v3_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|412383515", "412383515", "F5_CultLocation_01_LVL01", "box_GetPlayerGroup_v2_9.Out", "box_ProximityRadiusListener_v3_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|@Blessed_Change_CS_LVL1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_21_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|@NPC_Spawn_Fronm_Script");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_8_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|@Play_Conversation_LVL1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_20_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|@Reinforcement_Wave_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_27_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|@Reinforcement_Wave_2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_26_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|@Vehicle_Manager");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_23_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_4()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2099999032091871090",
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Vehicles_Manager_22()
    local params;
    params = {
        -- e_Vehicles_proximitytrigger,
        [0] = "2103388929884451024",
        -- Vehicles_list,
        [1] = Globals.F5_CultLocation_01.Veh_List,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|139642877");
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
                [0] = self.f_box_OutputOrder_v2_6_Out_0,
                [1] = self.f_box_OutputOrder_v2_6_Out_1,
                [2] = self.f_box_OutputOrder_v2_6_Out_2,
            },
            count = 3,
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
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Reinforcements_1()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2103411857980139117",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|409852365");
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
        [8] = "Convo_Done",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|564970835");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AlarmListener_11()
    local params;
    params = {
        -- AlarmGroup,
        [0] = "#2B8F44D3",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|993248903");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_7_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102610185695549467",
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_2()
    local params;
    params = {
        -- alarm_in_setup,
        [0] = true,
        -- Alarm01,
        [1] = "#2B8F44D3",
        -- CultLoc_Music_Type,
        [4] = "974905219",
        -- CultLocationNPC_Group,
        [5] = "#C4482553",
        -- SafeHouseEntity,
        [6] = "2099805578273491206",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_28()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100083586462920510",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = l0:GetDataOutValue(0),
        -- id2,
        [3] = "2102610226271246382",
        -- nearZone,
        [4] = 20,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Reinforcements_25()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2104173053685535583",
    };
    return params;
end;

function export:OnEnter_box_ConversationListener_14()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- Entity,
        [1] = "2100083585846357807",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|1697574821");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2102611629966367278",
        -- Group,
        [1] = "#9876F1BE",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|1713088198");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
                [2] = self.f_box_OutputOrder_v2_18_Out_2,
                [3] = self.f_box_OutputOrder_v2_18_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_24()
    local params;
    params = {
        -- Type,
        [1] = "chopper",
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_5()
    local params;
    params = {
        -- Direction,
        [0] = "north",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F5\\F5_CultLocation_01.domino|@F5_CultLocation_01_LVL01|2029557296");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_9_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_3()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100083587507302229",
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_9_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_ProximityRadiusListener_v3_15;
    l1:GetLuaBox().Entities = l0:GetDataOutValue(0);
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
