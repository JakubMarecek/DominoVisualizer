LUAC:; -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/d6/d6_cultlocation_01.domino
-- User graph: D6_CultLocation_01_LVL01
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
        cboxRes:RegisterBox("Domino/System/AI/AlarmListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/User/FC5_main/FC5_Outposts/D6/D6_CultLocation_01.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[974905219.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.D6_CultLocation_01 = nil;
    Globals.D6_CultLocation_01 = {
        Veh_List = {
        },
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Outposts/D6/D6_CultLocation_01.D6_CultLocation_01_LVL01.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/NavLinkModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Deactivated",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Entity",
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
    self._name = "D6_CultLocation_01_LVL01";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01";
    self.Out = DummyFunction;
    self.box_Delay_v5_7 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|241505167");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_7_TimeElapsed,
    });
    self.box_Delay_v5_11 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|252432684");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_11_TimeElapsed,
    });
    self.box_Delay_v5_28 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|379480190");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_28_TimeElapsed,
    });
    self.box_CultLocation_Reinforcement_PhoneCall_Manager_46 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Reinforcement_PhoneCall_Manager_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|391113635");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_16 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|404181239");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_16_SomeoneNear,
    });
    self.box_NavLinkModifier_51 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|412377301");
    l0:SetConnections({
    });
    self.box_MultipleOR_36 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|425200029");
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
    self.box_CultLocation_Vehicles_Manager_43 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Vehicles_Manager.debug.lua");
    l0 = self.box_CultLocation_Vehicles_Manager_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Vehicles_Manager_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|622975720");
    l0:SetConnections({
    });
    self.box_SpawnAI_30 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|674897338");
    l0:SetConnections({
    });
    self.box_Brick_Cult_Location_Reinforcements_45 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
    l0 = self.box_Brick_Cult_Location_Reinforcements_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Reinforcements_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|886367494");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Cult_Location_Reinforcements_45_ReinforcementCalled,
    });
    self.box_MultipleOR_20 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|900989518");
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
    self.box_Brick_Cult_Location_Reinforcements_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
    l0 = self.box_Brick_Cult_Location_Reinforcements_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Reinforcements_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|929481222");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Cult_Location_Reinforcements_1_ReinforcementCalled,
    });
    self.box_OnceOnly_v3_19 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|958083395");
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
                [0] = self.f_box_OnceOnly_v3_19_Out_0,
            },
            count = 1,
        },
    });
    self.box_CultLocation_Reinforcement_PhoneCall_Manager_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Reinforcement_PhoneCall_Manager_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|998121897");
    l0:SetConnections({
    });
    self.box_NarrativeScriptedConvoSafe_8 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeScriptedConvoSafe.debug.lua");
    l0 = self.box_NarrativeScriptedConvoSafe_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeScriptedConvoSafe_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1098709056");
    l0:SetConnections({
        -- Finish,
        [1] = self.f_box_NarrativeScriptedConvoSafe_8_Finish,
        -- Finish_WrongActor,
        [2] = self.f_box_NarrativeScriptedConvoSafe_8_Finish_WrongActor,
    });
    self.box_SpawnAI_39 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1188097505");
    l0:SetConnections({
    });
    self.box_Brick_Cult_Location_Gameplay_V3_Main_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Gameplay_V3_Main.debug.lua");
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Gameplay_V3_Main_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1280877995");
    l0:SetConnections({
        -- CallReinforcement_Wave1,
        [0] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_2_CallReinforcement_Wave1,
        -- CallReinforcement_Wave2,
        [1] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_2_CallReinforcement_Wave2,
        -- CultLocationCompleted_HostilityElimination,
        [2] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_2_CultLocationCompleted_HostilityElimination,
        -- CustomScript,
        [3] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_2_CustomScript,
        -- Out,
        [4] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_2_Out,
    });
    self.box_AlarmListener_5 = cbox:CreateBox("Domino/System/AI/AlarmListener.lua");
    l0 = self.box_AlarmListener_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AlarmListener_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1603071647");
    l0:SetConnections({
        -- AlarmActivated,
        [0] = self.f_box_AlarmListener_5_AlarmActivated,
    });
    self.box_ProximityRadiusListener_v3_24 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1649924300");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_24_SomeoneNear,
    });
    self.box_NarrativeScriptedConvoSafe_12 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeScriptedConvoSafe.debug.lua");
    l0 = self.box_NarrativeScriptedConvoSafe_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeScriptedConvoSafe_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1820272905");
    l0:SetConnections({
        -- Finish,
        [1] = self.f_box_NarrativeScriptedConvoSafe_12_Finish,
        -- Finish_WrongActor,
        [2] = self.f_box_NarrativeScriptedConvoSafe_12_Finish_WrongActor,
    });
    self.box_AlarmListener_9 = cbox:CreateBox("Domino/System/AI/AlarmListener.lua");
    l0 = self.box_AlarmListener_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AlarmListener_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1874084713");
    l0:SetConnections({
        -- AlarmActivated,
        [0] = self.f_box_AlarmListener_9_AlarmActivated,
    });
    self.box_SpawnAI_4 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|2058369399");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_4_Spawned,
    });
    self.box_MultipleOR_37 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|2106550729");
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
        [0] = self.f_box_MultipleOR_37_Out,
    });
    self.box_SpawnAI_6 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|2140910002");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_2();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1755153498", "1755153498", "D6_CultLocation_01_LVL01", "In", "box_Brick_Cult_Location_Gameplay_V3_Main_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_2();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|628902129", "628902129", "D6_CultLocation_01_LVL01", "OnLeaveZone", "box_Brick_Cult_Location_Gameplay_V3_Main_2.OnLeaveZone", self, l0:GetLuaBox());
    -- OnLeaveZone
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_23_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1734149493", "1734149493", "D6_CultLocation_01_LVL01", "box_Simple_Node_23.Out", "box_OutputOrder_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_52_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_51();
    l0 = self.box_NavLinkModifier_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1218310319", "1218310319", "D6_CultLocation_01_LVL01", "box_Simple_Node_52.Out", "box_NavLinkModifier_51.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_38_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|790058908", "790058908", "D6_CultLocation_01_LVL01", "box_Simple_Node_38.Out", "box_OutputOrder_v2_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_34_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_17();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|932572844", "932572844", "D6_CultLocation_01_LVL01", "box_Simple_Node_34.Out", "box_GetPlayerGroup_v2_17.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_33_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_4();
    l0 = self.box_SpawnAI_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1605708379", "1605708379", "D6_CultLocation_01_LVL01", "box_Simple_Node_33.Out", "box_SpawnAI_4.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_44_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_CultLocation_Vehicles_Manager_43();
    l0 = self.box_CultLocation_Vehicles_Manager_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|95852110", "95852110", "D6_CultLocation_01_LVL01", "box_Simple_Node_44.Out", "box_CultLocation_Vehicles_Manager_43.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_47_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Cult_Location_Reinforcements_1();
    l0 = self.box_Brick_Cult_Location_Reinforcements_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1228077182", "1228077182", "D6_CultLocation_01_LVL01", "box_Simple_Node_47.Out", "box_Brick_Cult_Location_Reinforcements_1.CallReinforcement", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallReinforcement
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_48_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Cult_Location_Reinforcements_45();
    l0 = self.box_Brick_Cult_Location_Reinforcements_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1388892611", "1388892611", "D6_CultLocation_01_LVL01", "box_Simple_Node_48.Out", "box_Brick_Cult_Location_Reinforcements_45.CallReinforcement", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallReinforcement
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AlarmListener_5();
    l0 = self.box_AlarmListener_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1000072869", "1000072869", "D6_CultLocation_01_LVL01", "box_OutputOrder_v2_21.Out", "box_AlarmListener_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AlarmListener_9();
    l0 = self.box_AlarmListener_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|257967828", "257967828", "D6_CultLocation_01_LVL01", "box_OutputOrder_v2_21.Out", "box_AlarmListener_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_7_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_7;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|73828138", "73828138", "D6_CultLocation_01_LVL01", "box_Delay_v5_7.TimeElapsed", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_11_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_11;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|154940860", "154940860", "D6_CultLocation_01_LVL01", "box_Delay_v5_11.TimeElapsed", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_28_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_29();
    l0 = self.box_Delay_v5_28;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|843703520", "843703520", "D6_CultLocation_01_LVL01", "box_Delay_v5_28.TimeElapsed", "box_UseContextualActionModifier_v3_29.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeScriptedConvoSafe_8();
    l0 = self.box_NarrativeScriptedConvoSafe_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|771922649", "771922649", "D6_CultLocation_01_LVL01", "box_OutputOrder_v2_18.Out", "box_NarrativeScriptedConvoSafe_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeScriptedConvoSafe_12();
    l0 = self.box_NarrativeScriptedConvoSafe_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1715708578", "1715708578", "D6_CultLocation_01_LVL01", "box_OutputOrder_v2_18.Out", "box_NarrativeScriptedConvoSafe_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_16_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_ProximityRadiusListener_v3_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|749992042", "749992042", "D6_CultLocation_01_LVL01", "box_ProximityRadiusListener_v3_16.SomeoneNear", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_14();
    l0 = self.box_MultipleOR_36;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|781871503", "781871503", "D6_CultLocation_01_LVL01", "box_MultipleOR_36.Out", "box_UseContextualActionModifier_v3_14.CallInterrupt", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallInterrupt
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_33();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|334393389", "334393389", "D6_CultLocation_01_LVL01", "box_OutputOrder_v2_22.Out", "box_Simple_Node_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_34();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|487150580", "487150580", "D6_CultLocation_01_LVL01", "box_OutputOrder_v2_22.Out", "box_Simple_Node_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_44();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|128760544", "128760544", "D6_CultLocation_01_LVL01", "box_OutputOrder_v2_22.Out", "box_Simple_Node_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_23();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|306536526", "306536526", "D6_CultLocation_01_LVL01", "box_OutputOrder_v2_22.Out", "box_Simple_Node_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_38();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|143215289", "143215289", "D6_CultLocation_01_LVL01", "box_OutputOrder_v2_22.Out", "box_Simple_Node_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_6();
    l0 = self.box_SpawnAI_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1649736807", "1649736807", "D6_CultLocation_01_LVL01", "box_OutputOrder_v2_31.Out", "box_SpawnAI_6.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_30();
    l0 = self.box_SpawnAI_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|298840102", "298840102", "D6_CultLocation_01_LVL01", "box_OutputOrder_v2_31.Out", "box_SpawnAI_30.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_39();
    l0 = self.box_SpawnAI_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|135889239", "135889239", "D6_CultLocation_01_LVL01", "box_OutputOrder_v2_31.Out", "box_SpawnAI_39.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Brick_Cult_Location_Reinforcements_45_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_46();
    l0 = self.box_Brick_Cult_Location_Reinforcements_45;
    l1 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1367956038", "1367956038", "D6_CultLocation_01_LVL01", "box_Brick_Cult_Location_Reinforcements_45.ReinforcementCalled", "box_CultLocation_Reinforcement_PhoneCall_Manager_46.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_14_InterruptCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_14();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|2002154244", "2002154244", "D6_CultLocation_01_LVL01", "box_UseContextualActionModifier_v3_14.InterruptCalled", "box_UseContextualActionModifier_v3_14.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_20_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_20;
    l1 = self.box_OnceOnly_v3_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|387196797", "387196797", "D6_CultLocation_01_LVL01", "box_MultipleOR_20.Out", "box_OnceOnly_v3_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Cult_Location_Reinforcements_1_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_3();
    l0 = self.box_Brick_Cult_Location_Reinforcements_1;
    l1 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|324750525", "324750525", "D6_CultLocation_01_LVL01", "box_Brick_Cult_Location_Reinforcements_1.ReinforcementCalled", "box_CultLocation_Reinforcement_PhoneCall_Manager_3.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_19_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_13();
    l0 = self.box_OnceOnly_v3_19;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|171177333", "171177333", "D6_CultLocation_01_LVL01", "box_OnceOnly_v3_19.Out", "box_SetContextualStrategy_13.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_17_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_17_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_16();
    l0 = self.box_ProximityRadiusListener_v3_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1833049502", "1833049502", "D6_CultLocation_01_LVL01", "box_GetPlayerGroup_v2_17.Out", "box_ProximityRadiusListener_v3_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_NarrativeScriptedConvoSafe_8_Finish()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_7();
    l0 = self.box_NarrativeScriptedConvoSafe_8;
    l1 = self.box_Delay_v5_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|505088040", "505088040", "D6_CultLocation_01_LVL01", "box_NarrativeScriptedConvoSafe_8.Finish", "box_Delay_v5_7.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_NarrativeScriptedConvoSafe_8_Finish_WrongActor()
    local l0, l1;
    l0 = self.box_NarrativeScriptedConvoSafe_8;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1486395565", "1486395565", "D6_CultLocation_01_LVL01", "box_NarrativeScriptedConvoSafe_8.Finish_WrongActor", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UseContextualActionModifier_v3_10_InterruptCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_10();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1922591389", "1922591389", "D6_CultLocation_01_LVL01", "box_UseContextualActionModifier_v3_10.InterruptCalled", "box_UseContextualActionModifier_v3_10.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_2_CallReinforcement_Wave1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_47();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_2;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1127122990", "1127122990", "D6_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_2.CallReinforcement_Wave1", "box_Simple_Node_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_2_CallReinforcement_Wave2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_48();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_2;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1000790114", "1000790114", "D6_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_2.CallReinforcement_Wave2", "box_Simple_Node_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_2_CultLocationCompleted_HostilityElimination()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_52();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_2;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|777852471", "777852471", "D6_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_2.CultLocationCompleted_HostilityElimination", "box_Simple_Node_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_2_CustomScript()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1369908922", "1369908922", "D6_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_2.CustomScript", "box_OutputOrder_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_2_Out()
    local l0;
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1716593037", "1716593037", "D6_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_2.Out", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_GetPlayerGroup_v2_25_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_25_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_24();
    l0 = self.box_ProximityRadiusListener_v3_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|969165644", "969165644", "D6_CultLocation_01_LVL01", "box_GetPlayerGroup_v2_25.Out", "box_ProximityRadiusListener_v3_24.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_AlarmListener_5_AlarmActivated()
    local l0, l1;
    l0 = self.box_AlarmListener_5;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1671517446", "1671517446", "D6_CultLocation_01_LVL01", "box_AlarmListener_5.AlarmActivated", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_24_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_26();
    l0 = self.box_ProximityRadiusListener_v3_24;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|517917202", "517917202", "D6_CultLocation_01_LVL01", "box_ProximityRadiusListener_v3_24.SomeoneNear", "box_UseContextualActionModifier_v3_26.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_27_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_28();
    l0 = self.box_Delay_v5_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|351452684", "351452684", "D6_CultLocation_01_LVL01", "box_UseContextualActionModifier_v3_27.Enabled", "box_Delay_v5_28.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_NarrativeScriptedConvoSafe_12_Finish()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_11();
    l0 = self.box_NarrativeScriptedConvoSafe_12;
    l1 = self.box_Delay_v5_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1629391016", "1629391016", "D6_CultLocation_01_LVL01", "box_NarrativeScriptedConvoSafe_12.Finish", "box_Delay_v5_11.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_NarrativeScriptedConvoSafe_12_Finish_WrongActor()
    local l0, l1;
    l0 = self.box_NarrativeScriptedConvoSafe_12;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1802817130", "1802817130", "D6_CultLocation_01_LVL01", "box_NarrativeScriptedConvoSafe_12.Finish_WrongActor", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_AlarmListener_9_AlarmActivated()
    local l0, l1;
    l0 = self.box_AlarmListener_9;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|253258109", "253258109", "D6_CultLocation_01_LVL01", "box_AlarmListener_9.AlarmActivated", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UseContextualActionModifier_v3_26_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_27();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|703863440", "703863440", "D6_CultLocation_01_LVL01", "box_UseContextualActionModifier_v3_26.Disabled", "box_UseContextualActionModifier_v3_27.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_4_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_25();
    l0 = self.box_SpawnAI_4;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|755455", "755455", "D6_CultLocation_01_LVL01", "box_SpawnAI_4.Spawned", "box_GetPlayerGroup_v2_25.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_37_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_10();
    l0 = self.box_MultipleOR_37;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1681381129", "1681381129", "D6_CultLocation_01_LVL01", "box_MultipleOR_37.Out", "box_UseContextualActionModifier_v3_10.CallInterrupt", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallInterrupt
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|@Blessed_Change_CS_FURY");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_23_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|@Door_Nav_Link");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_52_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|@NPC_Spawn_From_Script");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_38_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|@Play_Conversation_LVL1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_34_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|@Spawn_Blessed_LVL1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_33_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|@Vehicle_Manager");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_44_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|@WAVE_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_47_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|@WAVE_2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_48_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|229544941");
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

function export:OnEnter_box_Delay_v5_7()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_11()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_28()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_46()
    local params;
    params = {
        -- Type,
        [1] = "blessed",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|393045389");
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

function export:OnEnter_box_ProximityRadiusListener_v3_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = l0:GetDataOutValue(0),
        -- id2,
        [3] = "2102320179076673488",
        -- nearZone,
        [4] = 20,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_51()
    local params;
    params = {
        -- Entity,
        [0] = "2103995046329072145",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|489040698");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2102308573198510642",
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Vehicles_Manager_43()
    local params;
    params = {
        -- e_Vehicles_proximitytrigger,
        [0] = "2103388553416304176",
        -- Vehicles_list,
        [1] = Globals.D6_CultLocation_01.Veh_List,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_30()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2096729560404987619",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|685765280");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 5,
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
                [3] = self.f_box_OutputOrder_v2_22_Out_3,
                [4] = self.f_box_OutputOrder_v2_22_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|879208879");
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
                [0] = self.f_box_OutputOrder_v2_31_Out_0,
                [1] = self.f_box_OutputOrder_v2_31_Out_1,
                [2] = self.f_box_OutputOrder_v2_31_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Reinforcements_45()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2098636449969610905",
        -- ReinforcementPos02,
        [1] = "2103978176528008988",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|887486009");
    l0:SetConnections({
        -- InterruptCalled,
        [3] = self.f_box_UseContextualActionModifier_v3_14_InterruptCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102320203911147514",
        -- Entity,
        [1] = "2098058635599941878",
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Reinforcements_1()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2098636401252769734",
        -- ReinforcementPos02,
        [1] = "2098636449527111799",
        -- ReinforcementPos03,
        [2] = "2103978555170896988",
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_3()
    local params;
    params = {
        -- Direction,
        [0] = "north",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|999956541");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2102322967074575650",
        -- Group,
        [1] = "#D2C95676",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1080553264");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_17_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeScriptedConvoSafe_8()
    local params;
    params = {
        -- Convo_STP,
        [0] = "2102320197980401650",
        -- NPC,
        [1] = "2098058635599941878",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1123462855");
    l0:SetConnections({
        -- InterruptCalled,
        [3] = self.f_box_UseContextualActionModifier_v3_10_InterruptCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102320221525127176",
        -- Entity,
        [1] = "2098056326581064412",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_39()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2096729553744432744",
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_2()
    local params;
    params = {
        -- alarm_in_setup,
        [0] = true,
        -- Alarm01,
        [1] = "#7EC10FB0",
        -- Alarm02,
        [2] = "#E7C85E0A",
        -- CultLoc_Music_Type,
        [4] = "974905219",
        -- CultLocationNPC_Group,
        [5] = "#9586650F",
        -- SafeHouseEntity,
        [6] = "2098636653754065326",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1563626981");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_25_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AlarmListener_5()
    local params;
    params = {
        -- AlarmGroup,
        [0] = "#7EC10FB0",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = l0:GetDataOutValue(0),
        -- id2,
        [3] = "2102487018826111857",
        -- nearZone,
        [4] = 20,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1727044111");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_27_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102307072719740300",
    };
    return params;
end;

function export:OnEnter_box_NarrativeScriptedConvoSafe_12()
    local params;
    params = {
        -- Convo_STP,
        [0] = "2102320199268052982",
        -- NPC,
        [1] = "2098056326581064412",
    };
    return params;
end;

function export:OnEnter_box_AlarmListener_9()
    local params;
    params = {
        -- AlarmGroup,
        [0] = "#E7C85E0A",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_LVL01|1878516268");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_26_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102308573198510642",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_4()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102307057364393210",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_6()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103273895460101535",
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_17_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_ProximityRadiusListener_v3_16;
    l1:GetLuaBox().Entities = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_25_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_ProximityRadiusListener_v3_24;
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
