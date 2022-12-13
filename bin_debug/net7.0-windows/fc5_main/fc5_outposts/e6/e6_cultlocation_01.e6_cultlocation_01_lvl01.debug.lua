LUAC�7 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/e6/e6_cultlocation_01.domino
-- User graph: E6_CultLocation_01_LVL01
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeScriptedConvoSafe.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Gameplay_V3_Main.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.CultLocation_Vehicles_Manager.debug.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualStrategyListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/RemoveFromGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/User/FC5_main/FC5_Outposts/E6/E6_CultLocation_01.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[974905219.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.E6_CultLocation_01 = nil;
    Globals.E6_CultLocation_01 = {
        Veh_List = {
        },
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Outposts/E6/E6_CultLocation_01.E6_CultLocation_01_LVL01.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeScriptedConvoSafe.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Error",
                delayed = false,
            },
            [1] = {
                name = "Finish",
                delayed = false,
            },
            [2] = {
                name = "Finish_WrongActor",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Convo_STP",
                type = "entity",
            },
            [1] = {
                name = "NPC",
                type = "entity",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/AI/ContextualStrategyListener.lua")] = {
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
                name = "End",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "ContextualStrategy",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")] = {
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
                name = "Entities",
                type = "group",
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
    self._name = "E6_CultLocation_01_LVL01";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01";
    self.Out = DummyFunction;
    self.ghost01 = nil;
    self.ghost2 = nil;
    self.MetaSequenceID = 0;
    self.MetaSequenceBottle = 0;
    self.MetaSquenceBroom = 0;
    self.box_Brick_Cult_Location_Reinforcements_74 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
    l0 = self.box_Brick_Cult_Location_Reinforcements_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Reinforcements_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|98256381");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Cult_Location_Reinforcements_74_ReinforcementCalled,
    });
    self.box_Delay_v5_15 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|176175433");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_15_TimeElapsed,
    });
    self.box_SpawnAI_27 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|306804534");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_27_Spawned,
    });
    self.box_NarrativeScriptedConvoSafe_12 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeScriptedConvoSafe.debug.lua");
    l0 = self.box_NarrativeScriptedConvoSafe_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeScriptedConvoSafe_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|317828830");
    l0:SetConnections({
        -- Error,
        [0] = self.f_box_NarrativeScriptedConvoSafe_12_Error,
        -- Finish,
        [1] = self.f_box_NarrativeScriptedConvoSafe_12_Finish,
        -- Finish_WrongActor,
        [2] = self.f_box_NarrativeScriptedConvoSafe_12_Finish_WrongActor,
    });
    self.box_CultLocation_Vehicles_Manager_88 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Vehicles_Manager.debug.lua");
    l0 = self.box_CultLocation_Vehicles_Manager_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Vehicles_Manager_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|363370031");
    l0:SetConnections({
    });
    self.box_MultipleOR_20 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|668585869");
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
        [0] = self.f_box_MultipleOR_20_Out,
    });
    self.box_OnceOnly_v3_5 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|683780890");
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
                [0] = self.f_box_OnceOnly_v3_5_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityRadiusListener_v3_14 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|714896310");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_14_SomeoneNear,
    });
    self.box_Brick_Cult_Location_Reinforcements_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
    l0 = self.box_Brick_Cult_Location_Reinforcements_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Reinforcements_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|968321010");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Cult_Location_Reinforcements_4_ReinforcementCalled,
    });
    self.box_Brick_Cult_Location_Reinforcements_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
    l0 = self.box_Brick_Cult_Location_Reinforcements_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Reinforcements_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1031536818");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Cult_Location_Reinforcements_2_ReinforcementCalled,
    });
    self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1047019161");
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
    self.box_SpawnAI_24 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1289082987");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_24_Spawned,
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1399880715");
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
        [0] = self.f_box_MultipleOR_9_Out,
    });
    self.box_CultLocation_Reinforcement_PhoneCall_Manager_21 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Reinforcement_PhoneCall_Manager_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1506590253");
    l0:SetConnections({
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1530807998");
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
        [0] = self.f_box_MultipleOR_11_Out,
    });
    self.box_ContextualStrategyListener_77 = cbox:CreateBox("Domino/System/AI/ContextualStrategyListener.lua");
    l0 = self.box_ContextualStrategyListener_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualStrategyListener_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1573718874");
    l0:SetConnections({
        -- End,
        [2] = self.f_box_ContextualStrategyListener_77_End,
    });
    self.box_SpawnAI_3 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1601271852");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_3_Spawned,
    });
    self.box_Brick_Cult_Location_Gameplay_V3_Main_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Gameplay_V3_Main.debug.lua");
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Gameplay_V3_Main_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1743597737");
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
    self.box_OnceOnly_v3_19 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1854409307");
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
                [0] = self.f_box_OnceOnly_v3_19_Out_0,
            },
            count = 2,
        },
    });
    self.box_CultLocation_Reinforcement_PhoneCall_Manager_75 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Reinforcement_PhoneCall_Manager_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1926225133");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CultLocation_Reinforcement_PhoneCall_Manager_75_Out,
    });
    self.box_NarrativeScriptedConvoSafe_22 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeScriptedConvoSafe.debug.lua");
    l0 = self.box_NarrativeScriptedConvoSafe_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeScriptedConvoSafe_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|2056450506");
    l0:SetConnections({
        -- Error,
        [0] = self.f_box_NarrativeScriptedConvoSafe_22_Error,
        -- Finish,
        [1] = self.f_box_NarrativeScriptedConvoSafe_22_Finish,
        -- Finish_WrongActor,
        [2] = self.f_box_NarrativeScriptedConvoSafe_22_Finish_WrongActor,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_1();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|574007019", "574007019", "E6_CultLocation_01_LVL01", "In", "box_Brick_Cult_Location_Gameplay_V3_Main_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_1();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1158561283", "1158561283", "E6_CultLocation_01_LVL01", "OnLeaveZone", "box_Brick_Cult_Location_Gameplay_V3_Main_1.OnLeaveZone", self, l0:GetLuaBox());
    -- OnLeaveZone
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_33_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|587990710", "587990710", "E6_CultLocation_01_LVL01", "box_Simple_Node_33.Out", "box_OutputOrder_v2_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_31_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|868115489", "868115489", "E6_CultLocation_01_LVL01", "box_Simple_Node_31.Out", "box_MultipleOR_20.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
    l0 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1975235900", "1975235900", "E6_CultLocation_01_LVL01", "box_Simple_Node_31.Out", "box_MultipleOR_17.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_32_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|502393091", "502393091", "E6_CultLocation_01_LVL01", "box_Simple_Node_32.Out", "box_OutputOrder_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_93_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_CultLocation_Vehicles_Manager_88();
    l0 = self.box_CultLocation_Vehicles_Manager_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|606735573", "606735573", "E6_CultLocation_01_LVL01", "box_Simple_Node_93.Out", "box_CultLocation_Vehicles_Manager_88.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_90_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Cult_Location_Reinforcements_2();
    l0 = self.box_Brick_Cult_Location_Reinforcements_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|735600943", "735600943", "E6_CultLocation_01_LVL01", "box_Simple_Node_90.Out", "box_Brick_Cult_Location_Reinforcements_2.CallReinforcement", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallReinforcement
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_91_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Cult_Location_Reinforcements_74();
    l0 = self.box_Brick_Cult_Location_Reinforcements_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|166981399", "166981399", "E6_CultLocation_01_LVL01", "box_Simple_Node_91.Out", "box_Brick_Cult_Location_Reinforcements_74.CallReinforcement", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallReinforcement
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_8();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|311770657", "311770657", "E6_CultLocation_01_LVL01", "box_OutputOrder_v2_18.Out", "box_Print_v2_8.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1139275350", "1139275350", "E6_CultLocation_01_LVL01", "box_OutputOrder_v2_18.Out", "box_OutputOrder_v2_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Reinforcements_74_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_75();
    l0 = self.box_Brick_Cult_Location_Reinforcements_74;
    l1 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1477721916", "1477721916", "E6_CultLocation_01_LVL01", "box_Brick_Cult_Location_Reinforcements_74.ReinforcementCalled", "box_CultLocation_Reinforcement_PhoneCall_Manager_75.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_3();
    l0 = self.box_SpawnAI_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|938600804", "938600804", "E6_CultLocation_01_LVL01", "box_OutputOrder_v2_25.Out", "box_SpawnAI_3.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_25_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_24();
    l0 = self.box_SpawnAI_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|9058101", "9058101", "E6_CultLocation_01_LVL01", "box_OutputOrder_v2_25.Out", "box_SpawnAI_24.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_25_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_27();
    l0 = self.box_SpawnAI_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1824284092", "1824284092", "E6_CultLocation_01_LVL01", "box_OutputOrder_v2_25.Out", "box_SpawnAI_27.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_15_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_31();
    l0 = self.box_Delay_v5_15;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1047016096", "1047016096", "E6_CultLocation_01_LVL01", "box_Delay_v5_15.TimeElapsed", "box_Simple_Node_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_27_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_28();
    l0 = self.box_SpawnAI_27;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|550685722", "550685722", "E6_CultLocation_01_LVL01", "box_SpawnAI_27.Spawned", "box_Print_v2_28.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeScriptedConvoSafe_12_Error()
    local l0, l1;
    l0 = self.box_NarrativeScriptedConvoSafe_12;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1523062153", "1523062153", "E6_CultLocation_01_LVL01", "box_NarrativeScriptedConvoSafe_12.Error", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_NarrativeScriptedConvoSafe_12_Finish()
    local l0, l1;
    l0 = self.box_NarrativeScriptedConvoSafe_12;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1084838971", "1084838971", "E6_CultLocation_01_LVL01", "box_NarrativeScriptedConvoSafe_12.Finish", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_NarrativeScriptedConvoSafe_12_Finish_WrongActor()
    local l0, l1;
    l0 = self.box_NarrativeScriptedConvoSafe_12;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1643169165", "1643169165", "E6_CultLocation_01_LVL01", "box_NarrativeScriptedConvoSafe_12.Finish_WrongActor", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_20_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_20;
    l1 = self.box_OnceOnly_v3_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1170361663", "1170361663", "E6_CultLocation_01_LVL01", "box_MultipleOR_20.Out", "box_OnceOnly_v3_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_89_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_92();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1443099254", "1443099254", "E6_CultLocation_01_LVL01", "box_OutputOrder_v2_89.Out", "box_Simple_Node_92.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_89_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_32();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1188148620", "1188148620", "E6_CultLocation_01_LVL01", "box_OutputOrder_v2_89.Out", "box_Simple_Node_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_89_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_33();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|502157974", "502157974", "E6_CultLocation_01_LVL01", "box_OutputOrder_v2_89.Out", "box_Simple_Node_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_89_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_93();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|911819921", "911819921", "E6_CultLocation_01_LVL01", "box_OutputOrder_v2_89.Out", "box_Simple_Node_93.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_5_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_13();
    l0 = self.box_OnceOnly_v3_5;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|2122477594", "2122477594", "E6_CultLocation_01_LVL01", "box_OnceOnly_v3_5.Out", "box_UseContextualActionModifier_v3_13.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_14_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_ProximityRadiusListener_v3_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1053963122", "1053963122", "E6_CultLocation_01_LVL01", "box_ProximityRadiusListener_v3_14.SomeoneNear", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeScriptedConvoSafe_22();
    l0 = self.box_NarrativeScriptedConvoSafe_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|385297184", "385297184", "E6_CultLocation_01_LVL01", "box_OutputOrder_v2_23.Out", "box_NarrativeScriptedConvoSafe_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeScriptedConvoSafe_12();
    l0 = self.box_NarrativeScriptedConvoSafe_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|420109647", "420109647", "E6_CultLocation_01_LVL01", "box_OutputOrder_v2_23.Out", "box_NarrativeScriptedConvoSafe_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Brick_Cult_Location_Reinforcements_4_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_21();
    l0 = self.box_Brick_Cult_Location_Reinforcements_4;
    l1 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1583786003", "1583786003", "E6_CultLocation_01_LVL01", "box_Brick_Cult_Location_Reinforcements_4.ReinforcementCalled", "box_CultLocation_Reinforcement_PhoneCall_Manager_21.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_Brick_Cult_Location_Reinforcements_2_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Cult_Location_Reinforcements_4();
    l0 = self.box_Brick_Cult_Location_Reinforcements_2;
    l1 = self.box_Brick_Cult_Location_Reinforcements_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1103768640", "1103768640", "E6_CultLocation_01_LVL01", "box_Brick_Cult_Location_Reinforcements_2.ReinforcementCalled", "box_Brick_Cult_Location_Reinforcements_4.CallReinforcement", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallReinforcement
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_17_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_17;
    l1 = self.box_OnceOnly_v3_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1082610716", "1082610716", "E6_CultLocation_01_LVL01", "box_MultipleOR_17.Out", "box_OnceOnly_v3_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_24_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_26();
    l0 = self.box_SpawnAI_24;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1540508932", "1540508932", "E6_CultLocation_01_LVL01", "box_SpawnAI_24.Spawned", "box_Print_v2_26.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_9_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_9;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1307028856", "1307028856", "E6_CultLocation_01_LVL01", "box_MultipleOR_9.Out", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_16();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|2109726496", "2109726496", "E6_CultLocation_01_LVL01", "box_OutputOrder_v2_10.Out", "box_GetPlayerGroup_v2_16.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_15();
    l0 = self.box_Delay_v5_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|668665938", "668665938", "E6_CultLocation_01_LVL01", "box_OutputOrder_v2_10.Out", "box_Delay_v5_15.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_11_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_11;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1594094553", "1594094553", "E6_CultLocation_01_LVL01", "box_MultipleOR_11.Out", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ContextualStrategyListener_77_End()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_78();
    l0 = self.box_ContextualStrategyListener_77;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1471725817", "1471725817", "E6_CultLocation_01_LVL01", "box_ContextualStrategyListener_77.End", "box_SetContextualStrategy_78.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_3_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_6();
    l0 = self.box_SpawnAI_3;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|168735398", "168735398", "E6_CultLocation_01_LVL01", "box_SpawnAI_3.Spawned", "box_Print_v2_6.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_1_CallReinforcement_Wave1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_90();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|901481360", "901481360", "E6_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_1.CallReinforcement_Wave1", "box_Simple_Node_90.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_1_CallReinforcement_Wave2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_91();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|731536044", "731536044", "E6_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_1.CallReinforcement_Wave2", "box_Simple_Node_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_1_CustomScript()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_89();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|2095322379", "2095322379", "E6_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_1.CustomScript", "box_OutputOrder_v2_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_1_Out()
    local l0;
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1674151849", "1674151849", "E6_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_1.Out", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_OnceOnly_v3_19_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_7();
    l0 = self.box_OnceOnly_v3_19;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1175931583", "1175931583", "E6_CultLocation_01_LVL01", "box_OnceOnly_v3_19.Out", "box_UseContextualActionModifier_v3_7.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CultLocation_Reinforcement_PhoneCall_Manager_75_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_76();
    l0 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_75;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|812152720", "812152720", "E6_CultLocation_01_LVL01", "box_CultLocation_Reinforcement_PhoneCall_Manager_75.Out", "box_RemoveFromGroup_v2_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveFromGroup_v2_76_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualStrategyListener_77();
    l0 = self.box_ContextualStrategyListener_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|2025876844", "2025876844", "E6_CultLocation_01_LVL01", "box_RemoveFromGroup_v2_76.Out", "box_ContextualStrategyListener_77.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPlayerGroup_v2_16_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_16_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_14();
    l0 = self.box_ProximityRadiusListener_v3_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1977448048", "1977448048", "E6_CultLocation_01_LVL01", "box_GetPlayerGroup_v2_16.Out", "box_ProximityRadiusListener_v3_14.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_NarrativeScriptedConvoSafe_22_Error()
    local l0, l1;
    l0 = self.box_NarrativeScriptedConvoSafe_22;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1700264567", "1700264567", "E6_CultLocation_01_LVL01", "box_NarrativeScriptedConvoSafe_22.Error", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_NarrativeScriptedConvoSafe_22_Finish()
    local l0, l1;
    l0 = self.box_NarrativeScriptedConvoSafe_22;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1455630507", "1455630507", "E6_CultLocation_01_LVL01", "box_NarrativeScriptedConvoSafe_22.Finish", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_NarrativeScriptedConvoSafe_22_Finish_WrongActor()
    local l0, l1;
    l0 = self.box_NarrativeScriptedConvoSafe_22;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|2146386527", "2146386527", "E6_CultLocation_01_LVL01", "box_NarrativeScriptedConvoSafe_22.Finish_WrongActor", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_Simple_Node_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|@addextra");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_33_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|@convofail");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_31_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|@playconvo");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_32_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|@Radio");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|@Vehicle_Manager");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_93_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|@Wave_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_90_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|@Wave_2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_91_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|25134168");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|38810864");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2104742656557991092",
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Reinforcements_74()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2100650320913769251",
        -- ReinforcementPos02,
        [1] = "2099709357668174322",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|168072876");
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
                [0] = self.f_box_OutputOrder_v2_25_Out_0,
                [1] = self.f_box_OutputOrder_v2_25_Out_1,
                [2] = self.f_box_OutputOrder_v2_25_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_15()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|223949132");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2104742675868566789",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_27()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104284430800536086",
    };
    return params;
end;

function export:OnEnter_box_NarrativeScriptedConvoSafe_12()
    local params;
    params = {
        -- Convo_STP,
        [0] = "2104742618591151221",
        -- NPC,
        [1] = "2100595179265201615",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|342962998");
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
        [8] = "convo",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Vehicles_Manager_88()
    local params;
    params = {
        -- e_Vehicles_proximitytrigger,
        [0] = "2103400849374993571",
        -- Vehicles_list,
        [1] = Globals.E6_CultLocation_01.Veh_List,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|445973876");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2102225931583098447",
        -- Group,
        [1] = "#06F2B924",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|558497741");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "yellow",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "ExtraNPC_02_spawned",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|672571326");
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
                [0] = self.f_box_OutputOrder_v2_89_Out_0,
                [1] = self.f_box_OutputOrder_v2_89_Out_1,
                [2] = self.f_box_OutputOrder_v2_89_Out_2,
                [3] = self.f_box_OutputOrder_v2_89_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = l0:GetDataOutValue(0),
        -- id2,
        [3] = "2104742596302619738",
        -- nearZone,
        [4] = 40,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|832092438");
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
                [0] = self.f_box_OutputOrder_v2_23_Out_0,
                [1] = self.f_box_OutputOrder_v2_23_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Reinforcements_4()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2104438191258866659",
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Reinforcements_2()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2099499583288645254",
        -- ReinforcementPos02,
        [1] = "2099709328322725887",
        -- ReinforcementPos03,
        [2] = "2100649210532596888",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1087196110");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "yellow",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "ExtraNPC_03_spawned",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_24()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100509097383173877",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1412303074");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_21()
    local params;
    params = {
        -- Direction,
        [0] = "west",
    };
    return params;
end;

function export:OnEnter_box_ContextualStrategyListener_77()
    local params;
    params = {
        -- ContextualStrategy,
        [0] = "2100650346104759552",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_3()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104435966765726976",
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_1()
    local params;
    params = {
        -- alarm_in_setup,
        [0] = true,
        -- Alarm01,
        [1] = "#B053E00C",
        -- Alarm02,
        [2] = "#295AB1B6",
        -- CultLoc_Music_Type,
        [4] = "974905219",
        -- CultLocationNPC_Group,
        [5] = "#395EE7AA",
        -- SafeHouseEntity,
        [6] = "2099499583288645245",
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_75()
    local params;
    params = {
        -- Direction,
        [0] = "east",
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|1971289694");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveFromGroup_v2_76_Out,
    });
    params = {
        -- Entities,
        [0] = "2100650320928449327",
        -- Group,
        [1] = "#06F2B924",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|2030564369");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "yellow",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "ExtraNPC_01_spawned",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E6\\E6_CultLocation_01.domino|@E6_CultLocation_01_LVL01|2053771933");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_16_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeScriptedConvoSafe_22()
    local params;
    params = {
        -- Convo_STP,
        [0] = "2104742605836272732",
        -- NPC,
        [1] = "2104285744978736699",
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_16_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_ProximityRadiusListener_v3_14;
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
