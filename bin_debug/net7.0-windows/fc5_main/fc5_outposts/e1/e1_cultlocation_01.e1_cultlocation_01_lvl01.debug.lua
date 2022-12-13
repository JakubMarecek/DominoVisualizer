LUACČ -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/e1/e1_cultlocation_01.domino
-- User graph: E1_CultLocation_01_LVL01
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
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/ListWriter_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/FC5_main/FC5_Outposts/E1/E1_CultLocation_01.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1931423462.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Outposts/E1/E1_CultLocation_01.E1_CultLocation_01_LVL01.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/ListWriter_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Add",
            },
            [1] = {
                name = "Remove",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Added",
                delayed = false,
            },
            [1] = {
                name = "Removed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Data",
                type = "entity",
            },
            [1] = {
                name = "Index",
                type = "int",
            },
            [2] = {
                name = "Input",
                type = "list",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/VehicleModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetAlternativeSuspensionDisabled",
            },
            [1] = {
                name = "SetAlternativeSuspensionEnabled",
            },
            [2] = {
                name = "SetAsAnimated",
            },
            [3] = {
                name = "SetAsDestructable",
            },
            [4] = {
                name = "SetAsIndestructable",
            },
            [5] = {
                name = "SetAsNotAnimated",
            },
            [6] = {
                name = "SetAsUnusable",
            },
            [7] = {
                name = "SetAsUsable",
            },
            [8] = {
                name = "SetBrakesReleased",
            },
            [9] = {
                name = "SetCommandeerDisabled",
            },
            [10] = {
                name = "SetCommandeerEnabled",
            },
            [11] = {
                name = "SetEngineBroken",
            },
            [12] = {
                name = "SetEngineDisabled",
            },
            [13] = {
                name = "SetEngineMajorDamage",
            },
            [14] = {
                name = "SetEngineMinorDamage",
            },
            [15] = {
                name = "SetExitDisabled",
            },
            [16] = {
                name = "SetExitEnabled",
            },
            [17] = {
                name = "SetExplosion",
            },
            [18] = {
                name = "SetInputDisabled",
            },
            [19] = {
                name = "SetInputEnabled",
            },
        },
        controlInCount = 20,
        controlOut = {
            [0] = {
                name = "OnSetAlternativeSuspensionDisabled",
                delayed = false,
            },
            [1] = {
                name = "OnSetAlternativeSuspensionEnabled",
                delayed = false,
            },
            [2] = {
                name = "OnSetAsAnimated",
                delayed = false,
            },
            [3] = {
                name = "OnSetAsDestructible",
                delayed = false,
            },
            [4] = {
                name = "OnSetAsIndestructible",
                delayed = false,
            },
            [5] = {
                name = "OnSetAsNotAnimated",
                delayed = false,
            },
            [6] = {
                name = "OnSetAsUnusable",
                delayed = false,
            },
            [7] = {
                name = "OnSetAsUsable",
                delayed = false,
            },
            [8] = {
                name = "OnSetBrakesReleased",
                delayed = false,
            },
            [9] = {
                name = "OnSetCommandeerDisabled",
                delayed = false,
            },
            [10] = {
                name = "OnSetCommandeerEnabled",
                delayed = false,
            },
            [11] = {
                name = "OnSetEngineBroken",
                delayed = false,
            },
            [12] = {
                name = "OnSetEngineDisabled",
                delayed = false,
            },
            [13] = {
                name = "OnSetEngineMajorDamage",
                delayed = false,
            },
            [14] = {
                name = "OnSetEngineMinorDamage",
                delayed = false,
            },
            [15] = {
                name = "OnSetExitDisabled",
                delayed = false,
            },
            [16] = {
                name = "OnSetExitEnabled",
                delayed = false,
            },
            [17] = {
                name = "OnSetExplosion",
                delayed = false,
            },
            [18] = {
                name = "OnSetInputDisabled",
                delayed = false,
            },
            [19] = {
                name = "OnSetInputEnabled",
                delayed = false,
            },
        },
        controlOutCount = 20,
        dataIn = {
            [0] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "E1_CultLocation_01_LVL01";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01";
    self.Out = DummyFunction;
    self.box_CultLocation_Vehicles_Manager_38 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Vehicles_Manager.debug.lua");
    l0 = self.box_CultLocation_Vehicles_Manager_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Vehicles_Manager_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|5030659");
    l0:SetConnections({
    });
    self.box_Delay_v5_49 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|115410595");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_49_TimeElapsed,
    });
    self.box_Delay_v5_48 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|207385238");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_48_TimeElapsed,
    });
    self.box_ContextualActionListener_32 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|251844647");
    l0:SetConnections({
        -- Start,
        [8] = self.f_box_ContextualActionListener_32_Start,
    });
    self.box_MultipleOR_22 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|293725322");
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
        [0] = self.f_box_MultipleOR_22_Out,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|400798775");
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
        [0] = self.f_box_MultipleOR_4_Out,
    });
    self.box_Delay_v5_31 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|502510472");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_31_TimeElapsed,
    });
    self.box_ProximityRadiusListener_v3_19 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|614466029");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_19_SomeoneNear,
    });
    self.box_Delay_v5_20 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|636238211");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_20_TimeElapsed,
    });
    self.box_Brick_Cult_Location_Reinforcements_43 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
    l0 = self.box_Brick_Cult_Location_Reinforcements_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Reinforcements_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|641475063");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Cult_Location_Reinforcements_43_ReinforcementCalled,
    });
    self.box_Brick_Cult_Location_Gameplay_V3_Main_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Gameplay_V3_Main.debug.lua");
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Gameplay_V3_Main_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|648389636");
    l0:SetConnections({
        -- CallReinforcement_Wave1,
        [0] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_5_CallReinforcement_Wave1,
        -- CallReinforcement_Wave2,
        [1] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_5_CallReinforcement_Wave2,
        -- CustomScript,
        [3] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_5_CustomScript,
        -- Out,
        [4] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_5_Out,
    });
    self.box_SpawnAI_27 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|829847628");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_27_Spawned,
    });
    self.box_NarrativeScriptedConvoSafe_13 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeScriptedConvoSafe.debug.lua");
    l0 = self.box_NarrativeScriptedConvoSafe_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeScriptedConvoSafe_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1023760394");
    l0:SetConnections({
        -- Finish,
        [1] = self.f_box_NarrativeScriptedConvoSafe_13_Finish,
        -- Finish_WrongActor,
        [2] = self.f_box_NarrativeScriptedConvoSafe_13_Finish_WrongActor,
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1138735839");
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
        [0] = self.f_box_MultipleOR_3_Out,
    });
    self.box_ProximityRadiusListener_v3_25 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1227549628");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_25_SomeoneNear,
    });
    self.box_EntityStatusListener_28 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1231547890");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_28_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_28_Unloaded,
    });
    self.box_SpawnAI_21 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1294499441");
    l0:SetConnections({
    });
    self.box_Brick_Cult_Location_Reinforcements_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
    l0 = self.box_Brick_Cult_Location_Reinforcements_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Reinforcements_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1394881378");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Cult_Location_Reinforcements_1_ReinforcementCalled,
    });
    self.box_MultipleOR_46 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1421188667");
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
        [0] = self.f_box_MultipleOR_46_Out,
    });
    self.box_ContextualActionListener_47 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1524522028");
    l0:SetConnections({
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_47_Enabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_47_End,
        -- Start,
        [8] = self.f_box_ContextualActionListener_47_Start,
    });
    self.box_Delay_v5_34 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1616487131");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_34_TimeElapsed,
    });
    self.box_SpawnAI_52 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1621299691");
    l0:SetConnections({
    });
    self.box_NarrativeScriptedConvoSafe_18 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeScriptedConvoSafe.debug.lua");
    l0 = self.box_NarrativeScriptedConvoSafe_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeScriptedConvoSafe_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1751357181");
    l0:SetConnections({
        -- Finish,
        [1] = self.f_box_NarrativeScriptedConvoSafe_18_Finish,
        -- Finish_WrongActor,
        [2] = self.f_box_NarrativeScriptedConvoSafe_18_Finish_WrongActor,
    });
    self.box_CultLocation_Reinforcement_PhoneCall_Manager_44 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Reinforcement_PhoneCall_Manager_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1766762222");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_2 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1829532362");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_2_SomeoneNear,
    });
    self.box_SpawnAI_39 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1896158481");
    l0:SetConnections({
    });
    self.box_Delay_v5_41 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1957794576");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_41_TimeElapsed,
    });
    self.box_ContextualActionListener_9 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1958742419");
    l0:SetConnections({
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_9_Enabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_9_End,
        -- Start,
        [8] = self.f_box_ContextualActionListener_9_Start,
    });
    self.box_CultLocation_Reinforcement_PhoneCall_Manager_15 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Reinforcement_PhoneCall_Manager_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|2004203745");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_5();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1374927912", "1374927912", "E1_CultLocation_01_LVL01", "In", "box_Brick_Cult_Location_Gameplay_V3_Main_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_5();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|553032748", "553032748", "E1_CultLocation_01_LVL01", "OnLeaveZone", "box_Brick_Cult_Location_Gameplay_V3_Main_5.OnLeaveZone", self, l0:GetLuaBox());
    -- OnLeaveZone
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_42_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_53();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1089565580", "1089565580", "E1_CultLocation_01_LVL01", "box_Simple_Node_42.Out", "box_OutputOrder_v2_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_23_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_6();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|872416581", "872416581", "E1_CultLocation_01_LVL01", "box_Simple_Node_23.Out", "box_GetPlayerGroup_v2_6.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_45_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Cult_Location_Reinforcements_43();
    l0 = self.box_Brick_Cult_Location_Reinforcements_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|733844693", "733844693", "E1_CultLocation_01_LVL01", "box_Simple_Node_45.Out", "box_Brick_Cult_Location_Reinforcements_43.CallReinforcement", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallReinforcement
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_16_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Cult_Location_Reinforcements_1();
    l0 = self.box_Brick_Cult_Location_Reinforcements_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|453597952", "453597952", "E1_CultLocation_01_LVL01", "box_Simple_Node_16.Out", "box_Brick_Cult_Location_Reinforcements_1.CallReinforcement", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallReinforcement
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_17_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_12();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|589697378", "589697378", "E1_CultLocation_01_LVL01", "box_Simple_Node_17.Out", "box_GetPlayerGroup_v2_12.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_29_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_26();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|753527742", "753527742", "E1_CultLocation_01_LVL01", "box_Simple_Node_29.Out", "box_GetPlayerGroup_v2_26.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_40_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_51();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1079135314", "1079135314", "E1_CultLocation_01_LVL01", "box_Simple_Node_40.Out", "box_OutputOrder_v2_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_35();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|790955483", "790955483", "E1_CultLocation_01_LVL01", "box_OutputOrder_v2_36.Out", "box_UseContextualActionModifier_v3_35.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_33();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|2125617181", "2125617181", "E1_CultLocation_01_LVL01", "box_OutputOrder_v2_36.Out", "box_UseContextualActionModifier_v3_33.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_49_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_49;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1869130245", "1869130245", "E1_CultLocation_01_LVL01", "box_Delay_v5_49.TimeElapsed", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_48_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_48;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1343888853", "1343888853", "E1_CultLocation_01_LVL01", "box_Delay_v5_48.TimeElapsed", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ContextualActionListener_32_Start()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_34();
    l0 = self.box_ContextualActionListener_32;
    l1 = self.box_Delay_v5_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|368344997", "368344997", "E1_CultLocation_01_LVL01", "box_ContextualActionListener_32.Start", "box_Delay_v5_34.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_7();
    l0 = self.box_MultipleOR_22;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|438151862", "438151862", "E1_CultLocation_01_LVL01", "box_MultipleOR_22.Out", "box_UseContextualActionModifier_v3_7.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_41();
    l0 = self.box_MultipleOR_4;
    l1 = self.box_Delay_v5_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1821522280", "1821522280", "E1_CultLocation_01_LVL01", "box_MultipleOR_4.Out", "box_Delay_v5_41.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_51_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_50();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1210126256", "1210126256", "E1_CultLocation_01_LVL01", "box_OutputOrder_v2_51.Out", "box_ListWriter_v2_50.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_51_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CultLocation_Vehicles_Manager_38();
    l0 = self.box_CultLocation_Vehicles_Manager_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|134533657", "134533657", "E1_CultLocation_01_LVL01", "box_OutputOrder_v2_51.Out", "box_CultLocation_Vehicles_Manager_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_31_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_30();
    l0 = self.box_Delay_v5_31;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1343848580", "1343848580", "E1_CultLocation_01_LVL01", "box_Delay_v5_31.TimeElapsed", "box_VehicleModifier_v2_30.SetEngineMinorDamage", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEngineMinorDamage
    l1:Exec(14, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_6_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_6_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_19();
    l0 = self.box_ProximityRadiusListener_v3_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|692658487", "692658487", "E1_CultLocation_01_LVL01", "box_GetPlayerGroup_v2_6.Out", "box_ProximityRadiusListener_v3_19.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_19_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = self.box_ProximityRadiusListener_v3_19;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1655240456", "1655240456", "E1_CultLocation_01_LVL01", "box_ProximityRadiusListener_v3_19.SomeoneNear", "box_OutputOrder_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_20_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_20;
    l1 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1044663981", "1044663981", "E1_CultLocation_01_LVL01", "box_Delay_v5_20.TimeElapsed", "box_MultipleOR_22.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Brick_Cult_Location_Reinforcements_43_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_44();
    l0 = self.box_Brick_Cult_Location_Reinforcements_43;
    l1 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1032771707", "1032771707", "E1_CultLocation_01_LVL01", "box_Brick_Cult_Location_Reinforcements_43.ReinforcementCalled", "box_CultLocation_Reinforcement_PhoneCall_Manager_44.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_5_CallReinforcement_Wave1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_16();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|684859358", "684859358", "E1_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_5.CallReinforcement_Wave1", "box_Simple_Node_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_5_CallReinforcement_Wave2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_45();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|131768452", "131768452", "E1_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_5.CallReinforcement_Wave2", "box_Simple_Node_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_5_CustomScript()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1770996879", "1770996879", "E1_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_5.CustomScript", "box_OutputOrder_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_5_Out()
    local l0;
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|298718263", "298718263", "E1_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_5.Out", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_SpawnAI_27_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_31();
    l0 = self.box_SpawnAI_27;
    l1 = self.box_Delay_v5_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|914743689", "914743689", "E1_CultLocation_01_LVL01", "box_SpawnAI_27.Spawned", "box_Delay_v5_31.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GetPlayerGroup_v2_12_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_12_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_2();
    l0 = self.box_ProximityRadiusListener_v3_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|454357848", "454357848", "E1_CultLocation_01_LVL01", "box_GetPlayerGroup_v2_12.Out", "box_ProximityRadiusListener_v3_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_NarrativeScriptedConvoSafe_13_Finish()
    local l0, l1;
    l0 = self.box_NarrativeScriptedConvoSafe_13;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1721092385", "1721092385", "E1_CultLocation_01_LVL01", "box_NarrativeScriptedConvoSafe_13.Finish", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_NarrativeScriptedConvoSafe_13_Finish_WrongActor()
    local l0, l1;
    l0 = self.box_NarrativeScriptedConvoSafe_13;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1382156891", "1382156891", "E1_CultLocation_01_LVL01", "box_NarrativeScriptedConvoSafe_13.Finish_WrongActor", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetPlayerGroup_v2_26_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_26_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_25();
    l0 = self.box_ProximityRadiusListener_v3_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|2095574874", "2095574874", "E1_CultLocation_01_LVL01", "box_GetPlayerGroup_v2_26.Out", "box_ProximityRadiusListener_v3_25.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_14();
    l0 = self.box_MultipleOR_3;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|39932398", "39932398", "E1_CultLocation_01_LVL01", "box_MultipleOR_3.Out", "box_UseContextualActionModifier_v3_14.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_33_ForceNormalEndCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1340596107", "1340596107", "E1_CultLocation_01_LVL01", "box_UseContextualActionModifier_v3_33.ForceNormalEndCalled", "box_OutputOrder_v2_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_25_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_28();
    l0 = self.box_ProximityRadiusListener_v3_25;
    l1 = self.box_EntityStatusListener_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1189674744", "1189674744", "E1_CultLocation_01_LVL01", "box_ProximityRadiusListener_v3_25.SomeoneNear", "box_EntityStatusListener_28.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_28_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_27();
    l0 = self.box_EntityStatusListener_28;
    l1 = self.box_SpawnAI_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|210770376", "210770376", "E1_CultLocation_01_LVL01", "box_EntityStatusListener_28.Loaded", "box_SpawnAI_27.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_28_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_27();
    l0 = self.box_EntityStatusListener_28;
    l1 = self.box_SpawnAI_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|203847556", "203847556", "E1_CultLocation_01_LVL01", "box_EntityStatusListener_28.Unloaded", "box_SpawnAI_27.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_Brick_Cult_Location_Reinforcements_1_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_15();
    l0 = self.box_Brick_Cult_Location_Reinforcements_1;
    l1 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|866992128", "866992128", "E1_CultLocation_01_LVL01", "box_Brick_Cult_Location_Reinforcements_1.ReinforcementCalled", "box_CultLocation_Reinforcement_PhoneCall_Manager_15.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_37_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_11();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1051450489", "1051450489", "E1_CultLocation_01_LVL01", "box_OutputOrder_v2_37.Out", "box_SetContextualStrategy_11.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_37_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_24();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|287022437", "287022437", "E1_CultLocation_01_LVL01", "box_OutputOrder_v2_37.Out", "box_UseContextualActionModifier_v3_24.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_46_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_48();
    l0 = self.box_MultipleOR_46;
    l1 = self.box_Delay_v5_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1078100970", "1078100970", "E1_CultLocation_01_LVL01", "box_MultipleOR_46.Out", "box_Delay_v5_48.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ContextualActionListener_47_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_20();
    l0 = self.box_ContextualActionListener_47;
    l1 = self.box_Delay_v5_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1342783287", "1342783287", "E1_CultLocation_01_LVL01", "box_ContextualActionListener_47.Enabled", "box_Delay_v5_20.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ContextualActionListener_47_End()
    local l0, l1;
    l0 = self.box_ContextualActionListener_47;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1638731268", "1638731268", "E1_CultLocation_01_LVL01", "box_ContextualActionListener_47.End", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ContextualActionListener_47_Start()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_20();
    l0 = self.box_ContextualActionListener_47;
    l1 = self.box_Delay_v5_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1790353524", "1790353524", "E1_CultLocation_01_LVL01", "box_ContextualActionListener_47.Start", "box_Delay_v5_20.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Delay_v5_34_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_33();
    l0 = self.box_Delay_v5_34;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1206695847", "1206695847", "E1_CultLocation_01_LVL01", "box_Delay_v5_34.TimeElapsed", "box_UseContextualActionModifier_v3_33.CallForceNormalEnd", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallForceNormalEnd
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeScriptedConvoSafe_18_Finish()
    local l0, l1;
    l0 = self.box_NarrativeScriptedConvoSafe_18;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|2066864853", "2066864853", "E1_CultLocation_01_LVL01", "box_NarrativeScriptedConvoSafe_18.Finish", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_NarrativeScriptedConvoSafe_18_Finish_WrongActor()
    local l0, l1;
    l0 = self.box_NarrativeScriptedConvoSafe_18;
    l1 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1563756265", "1563756265", "E1_CultLocation_01_LVL01", "box_NarrativeScriptedConvoSafe_18.Finish_WrongActor", "box_MultipleOR_22.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_2_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_24();
    l0 = self.box_ProximityRadiusListener_v3_2;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1132170554", "1132170554", "E1_CultLocation_01_LVL01", "box_ProximityRadiusListener_v3_2.SomeoneNear", "box_UseContextualActionModifier_v3_24.CallForceNormalEnd", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallForceNormalEnd
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_17();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|487756106", "487756106", "E1_CultLocation_01_LVL01", "box_OutputOrder_v2_8.Out", "box_Simple_Node_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_23();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1448219452", "1448219452", "E1_CultLocation_01_LVL01", "box_OutputOrder_v2_8.Out", "box_Simple_Node_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_29();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1528407220", "1528407220", "E1_CultLocation_01_LVL01", "box_OutputOrder_v2_8.Out", "box_Simple_Node_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_40();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1102387256", "1102387256", "E1_CultLocation_01_LVL01", "box_OutputOrder_v2_8.Out", "box_Simple_Node_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_42();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|465350079", "465350079", "E1_CultLocation_01_LVL01", "box_OutputOrder_v2_8.Out", "box_Simple_Node_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleModifier_v2_30_OnSetEngineMinorDamage()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_32();
    l0 = self.box_ContextualActionListener_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|81612680", "81612680", "E1_CultLocation_01_LVL01", "box_VehicleModifier_v2_30.OnSetEngineMinorDamage", "box_ContextualActionListener_32.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_53_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_21();
    l0 = self.box_SpawnAI_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|534088455", "534088455", "E1_CultLocation_01_LVL01", "box_OutputOrder_v2_53.Out", "box_SpawnAI_21.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_53_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_39();
    l0 = self.box_SpawnAI_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1116632093", "1116632093", "E1_CultLocation_01_LVL01", "box_OutputOrder_v2_53.Out", "box_SpawnAI_39.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_53_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_52();
    l0 = self.box_SpawnAI_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1702667734", "1702667734", "E1_CultLocation_01_LVL01", "box_OutputOrder_v2_53.Out", "box_SpawnAI_52.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_9();
    l0 = self.box_ContextualActionListener_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1237637857", "1237637857", "E1_CultLocation_01_LVL01", "box_OutputOrder_v2_10.Out", "box_ContextualActionListener_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeScriptedConvoSafe_13();
    l0 = self.box_NarrativeScriptedConvoSafe_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|834030908", "834030908", "E1_CultLocation_01_LVL01", "box_OutputOrder_v2_10.Out", "box_NarrativeScriptedConvoSafe_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_10_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeScriptedConvoSafe_18();
    l0 = self.box_NarrativeScriptedConvoSafe_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|678172724", "678172724", "E1_CultLocation_01_LVL01", "box_OutputOrder_v2_10.Out", "box_NarrativeScriptedConvoSafe_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_10_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_47();
    l0 = self.box_ContextualActionListener_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|629013588", "629013588", "E1_CultLocation_01_LVL01", "box_OutputOrder_v2_10.Out", "box_ContextualActionListener_47.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_41_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_41;
    l1 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|279648540", "279648540", "E1_CultLocation_01_LVL01", "box_Delay_v5_41.TimeElapsed", "box_MultipleOR_22.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ContextualActionListener_9_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_49();
    l0 = self.box_ContextualActionListener_9;
    l1 = self.box_Delay_v5_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|506883497", "506883497", "E1_CultLocation_01_LVL01", "box_ContextualActionListener_9.Enabled", "box_Delay_v5_49.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ContextualActionListener_9_End()
    local l0, l1;
    l0 = self.box_ContextualActionListener_9;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1686308068", "1686308068", "E1_CultLocation_01_LVL01", "box_ContextualActionListener_9.End", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ContextualActionListener_9_Start()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_49();
    l0 = self.box_ContextualActionListener_9;
    l1 = self.box_Delay_v5_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1418812309", "1418812309", "E1_CultLocation_01_LVL01", "box_ContextualActionListener_9.Start", "box_Delay_v5_49.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_UseContextualActionModifier_v3_24_ForceNormalEndCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_37();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1315334708", "1315334708", "E1_CultLocation_01_LVL01", "box_UseContextualActionModifier_v3_24.ForceNormalEndCalled", "box_OutputOrder_v2_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|@Extra_NPCs");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_42_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|@Play_conversation");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_23_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|@reinforcement_WAV_2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_45_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|@reinforcement_WAVE_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_16_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|@Setup_STP");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_17_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|@Spawn_vehicle_repair");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_29_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|@Vehicle_Manager");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_40_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Vehicles_Manager_38()
    local params;
    params = {
        -- e_Vehicles_proximitytrigger,
        [0] = "2103357186823426019",
        -- Vehicles_list,
        [1] = PersistentGlobals.E1_CultLocation_01.Veh_list,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|40519725");
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

function export:OnEnter_box_Delay_v5_49()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|178642303");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2102915810046525859",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_48()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_32()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2102915837976396261",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|375917583");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2098617724371473665",
        -- Entity,
        [1] = "2095619245655198635",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|439598328");
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
                [0] = self.f_box_OutputOrder_v2_51_Out_0,
                [1] = self.f_box_OutputOrder_v2_51_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_31()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|603039934");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_6_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = l0:GetDataOutValue(0),
        -- id2,
        [3] = "2102913733014613896",
        -- nearZone,
        [4] = 45,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_20()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Reinforcements_43()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2103968043311849766",
        -- ReinforcementPos02,
        [1] = "2103967985778581149",
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_5()
    local params;
    params = {
        -- alarm_in_setup,
        [0] = true,
        -- Alarm01,
        [1] = "#BCAF9A26",
        -- Alarm02,
        [2] = "#25A6CB9C",
        -- CultLoc_Music_Type,
        [4] = "1931423462",
        -- CultLocationNPC_Group,
        [5] = "#EA2D3F52",
        -- SafeHouseEntity,
        [6] = "2095619245655198612",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_27()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102915056493707735",
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|839895522");
    l0:SetConnections({
    });
    params = {
        -- Data,
        [0] = "2098618628248186218",
        -- Input,
        [2] = PersistentGlobals.E1_CultLocation_01.Veh_list,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|923652487");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2098617724373570821",
        -- Entity,
        [1] = "2095631145709340914",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|959148662");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_12_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeScriptedConvoSafe_13()
    local params;
    params = {
        -- Convo_STP,
        [0] = "2102913773028274058",
        -- NPC,
        [1] = "2095631145709340914",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1137707764");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_26_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1194759824");
    l0:SetConnections({
        -- ForceNormalEndCalled,
        [2] = self.f_box_UseContextualActionModifier_v3_33_ForceNormalEndCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102915837976396261",
        -- Entity,
        [1] = "2102915056497902045",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = l0:GetDataOutValue(0),
        -- id2,
        [3] = "2102914957298418113",
        -- nearZone,
        [4] = 40,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_28()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102915056493707735",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_21()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2095620877788908680",
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Reinforcements_1()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2095619245655198642",
        -- ReinforcementPos02,
        [1] = "2103967643066196140",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1402822380");
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

function export:OnEnter_box_SetContextualStrategy_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1465128599");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2098657827823293436",
        -- Group,
        [1] = "#062DA791",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_47()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2102913780947120025",
        -- UserFilter,
        [1] = "2095619245655198635",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_34()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_52()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2096626609900492161",
    };
    return params;
end;

function export:OnEnter_box_NarrativeScriptedConvoSafe_18()
    local params;
    params = {
        -- Convo_STP,
        [0] = "2102913780947120025",
        -- NPC,
        [1] = "2095619245655198635",
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_44()
    local params;
    params = {
        -- Direction,
        [0] = "south",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = l0:GetDataOutValue(0),
        -- id2,
        [3] = "2102913847472975901",
        -- nearZone,
        [4] = 15,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1864711825");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
                [2] = self.f_box_OutputOrder_v2_8_Out_2,
                [3] = self.f_box_OutputOrder_v2_8_Out_3,
                [4] = self.f_box_OutputOrder_v2_8_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1871633843");
    l0:SetConnections({
        -- OnSetEngineMinorDamage,
        [14] = self.f_box_VehicleModifier_v2_30_OnSetEngineMinorDamage,
    });
    params = {
        -- targets,
        [0] = "2102915064947327505",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_39()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2095629853584788673",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1911044174");
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
                [0] = self.f_box_OutputOrder_v2_53_Out_0,
                [1] = self.f_box_OutputOrder_v2_53_Out_1,
                [2] = self.f_box_OutputOrder_v2_53_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    DrawTextToScreen("Comment: Play Convo", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'OutputOrder_v2')-- Comment: Play Convo");
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|1928329023");
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

function export:OnEnter_box_ContextualActionListener_9()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2102913773028274058",
        -- UserFilter,
        [1] = "2095631145709340914",
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_15()
    local params;
    params = {
        -- Direction,
        [0] = "south",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E1\\E1_CultLocation_01.domino|@E1_CultLocation_01_LVL01|2055604011");
    l0:SetConnections({
        -- ForceNormalEndCalled,
        [2] = self.f_box_UseContextualActionModifier_v3_24_ForceNormalEndCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2096614504564529326",
        -- Entity,
        [1] = "2096614503557896353",
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_6_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_ProximityRadiusListener_v3_19;
    l1:GetLuaBox().Entities = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_12_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_ProximityRadiusListener_v3_2;
    l1:GetLuaBox().Entities = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_26_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_ProximityRadiusListener_v3_25;
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
