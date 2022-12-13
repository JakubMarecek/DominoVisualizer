LUAC`G -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/e7/e7_cultlocation_01.domino
-- User graph: E7_CultLocation_LVL1
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Gameplay_V3_Main.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.CultLocation_Vehicles_Manager.debug.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/User/FC5_main/FC5_Outposts/E7/E7_CultLocation_01.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[974905219.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Outposts/E7/E7_CultLocation_01.E7_CultLocation_LVL1.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")] = {
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
                name = "FromGroup",
                type = "group",
            },
            [1] = {
                name = "ToGroup",
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
    metadataTable[GetPathID("Domino/System/PositionModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "Start",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Cancelled",
                delayed = false,
            },
            [1] = {
                name = "Done",
                delayed = true,
            },
            [2] = {
                name = "StartOut",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "blendCurve",
                type = "archetype",
            },
            [1] = {
                name = "blendTime",
                type = "float",
            },
            [2] = {
                name = "endPos",
                type = "list",
            },
            [3] = {
                name = "endRot",
                type = "list",
            },
            [4] = {
                name = "endTarget",
                type = "entity",
            },
            [5] = {
                name = "players",
                type = "group",
            },
            [6] = {
                name = "targets",
                type = "group",
            },
            [7] = {
                name = "useSmallestAngleDiff",
                type = "bool",
            },
        },
        dataInCount = 8,
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
    self._name = "E7_CultLocation_LVL1";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1";
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|8487971");
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
        [0] = self.f_box_MultipleOR_8_Out,
    });
    self.box_Delay_v5_13 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|33271901");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_13_TimeElapsed,
    });
    self.box_Brick_Cult_Location_Reinforcements_11 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
    l0 = self.box_Brick_Cult_Location_Reinforcements_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Reinforcements_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|134802332");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Cult_Location_Reinforcements_11_ReinforcementCalled,
    });
    self.box_Delay_v5_18 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|162027449");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_18_TimeElapsed,
    });
    self.box_CultLocation_Vehicles_Manager_42 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Vehicles_Manager.debug.lua");
    l0 = self.box_CultLocation_Vehicles_Manager_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Vehicles_Manager_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|344729573");
    l0:SetConnections({
    });
    self.box_NarrativeScriptedConvoSafe_17 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeScriptedConvoSafe.debug.lua");
    l0 = self.box_NarrativeScriptedConvoSafe_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeScriptedConvoSafe_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|401123565");
    l0:SetConnections({
        -- Finish,
        [1] = self.f_box_NarrativeScriptedConvoSafe_17_Finish,
        -- Finish_WrongActor,
        [2] = self.f_box_NarrativeScriptedConvoSafe_17_Finish_WrongActor,
    });
    self.box_PositionModifier_v2_35 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|568462602");
    l0:SetConnections({
    });
    self.box_SpawnAI_7 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|635572950");
    l0:SetConnections({
    });
    self.box_CultLocation_Reinforcement_PhoneCall_Manager_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Reinforcement_PhoneCall_Manager_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|657971971");
    l0:SetConnections({
    });
    self.box_Brick_Cult_Location_Reinforcements_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
    l0 = self.box_Brick_Cult_Location_Reinforcements_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Reinforcements_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|659389756");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Cult_Location_Reinforcements_4_ReinforcementCalled,
    });
    self.box_NarrativeScriptedConvoSafe_19 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeScriptedConvoSafe.debug.lua");
    l0 = self.box_NarrativeScriptedConvoSafe_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeScriptedConvoSafe_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|791591674");
    l0:SetConnections({
        -- Finish,
        [1] = self.f_box_NarrativeScriptedConvoSafe_19_Finish,
        -- Finish_WrongActor,
        [2] = self.f_box_NarrativeScriptedConvoSafe_19_Finish_WrongActor,
    });
    self.box_ProximityRadiusListener_v3_3 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|836413774");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_3_SomeoneNear,
    });
    self.box_Delay_v5_30 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|995972235");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_30_TimeElapsed,
    });
    self.box_CultLocation_Reinforcement_PhoneCall_Manager_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Reinforcement_PhoneCall_Manager_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1066817148");
    l0:SetConnections({
    });
    self.box_Delay_v5_38 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1219494668");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_38_TimeElapsed,
    });
    self.box_ContextualActionListener_36 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1264985395");
    l0:SetConnections({
        -- End,
        [3] = self.f_box_ContextualActionListener_36_End,
    });
    self.box_PositionModifier_v2_37 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1324032047");
    l0:SetConnections({
    });
    self.box_SpawnAI_9 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1348886744");
    l0:SetConnections({
    });
    self.box_ContextualActionListener_33 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1414694271");
    l0:SetConnections({
        -- End,
        [3] = self.f_box_ContextualActionListener_33_End,
    });
    self.box_Brick_Cult_Location_Gameplay_V3_Main_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Gameplay_V3_Main.debug.lua");
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Gameplay_V3_Main_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1439408475");
    l0:SetConnections({
        -- CallReinforcement_Wave1,
        [0] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_1_CallReinforcement_Wave1,
        -- CallReinforcement_Wave2,
        [1] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_1_CallReinforcement_Wave2,
        -- CustomScript,
        [3] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_1_CustomScript,
    });
    self.box_OnceOnly_v3_29 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1471644947");
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
                [0] = self.f_box_OnceOnly_v3_29_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_32 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1500036555");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_32_TimeElapsed,
    });
    self.box_Delay_v5_39 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1611368602");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_39_TimeElapsed,
    });
    self.box_OnceOnly_v3_31 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1622616446");
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
                [0] = self.f_box_OnceOnly_v3_31_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_20 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1763115531");
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
        [0] = self.f_box_MultipleOR_20_Out,
    });
    self.box_ProximityTrigger_v2_44 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1871104214");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_44_Enter,
    });
    self.box_PlayerFullyDetected_26 = cbox:CreateBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
    l0 = self.box_PlayerFullyDetected_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerFullyDetected_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1903759478");
    l0:SetConnections({
        -- Detected,
        [0] = self.f_box_PlayerFullyDetected_26_Detected,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_1();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|95454689", "95454689", "E7_CultLocation_LVL1", "In", "box_Brick_Cult_Location_Gameplay_V3_Main_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_1();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|2046194", "2046194", "E7_CultLocation_LVL1", "OnLeaveZone", "box_Brick_Cult_Location_Gameplay_V3_Main_1.OnLeaveZone", self, l0:GetLuaBox());
    -- OnLeaveZone
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_27_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerFullyDetected_26();
    l0 = self.box_PlayerFullyDetected_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|83723891", "83723891", "E7_CultLocation_LVL1", "box_Simple_Node_27.Out", "box_PlayerFullyDetected_26.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_40_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|466600331", "466600331", "E7_CultLocation_LVL1", "box_Simple_Node_40.Out", "box_OutputOrder_v2_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_24_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_14();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1299088286", "1299088286", "E7_CultLocation_LVL1", "box_Simple_Node_24.Out", "box_GetPlayerGroup_v2_14.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_21_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Cult_Location_Reinforcements_11();
    l0 = self.box_Brick_Cult_Location_Reinforcements_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1013629951", "1013629951", "E7_CultLocation_LVL1", "box_Simple_Node_21.Out", "box_Brick_Cult_Location_Reinforcements_11.CallReinforcement", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallReinforcement
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_22_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Cult_Location_Reinforcements_4();
    l0 = self.box_Brick_Cult_Location_Reinforcements_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|70921663", "70921663", "E7_CultLocation_LVL1", "box_Simple_Node_22.Out", "box_Brick_Cult_Location_Reinforcements_4.CallReinforcement", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallReinforcement
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_28_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|105062390", "105062390", "E7_CultLocation_LVL1", "box_Simple_Node_28.Out", "box_OutputOrder_v2_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_46_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_44();
    l0 = self.box_ProximityTrigger_v2_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1587852695", "1587852695", "E7_CultLocation_LVL1", "box_Simple_Node_46.Out", "box_ProximityTrigger_v2_44.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_43_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_CultLocation_Vehicles_Manager_42();
    l0 = self.box_CultLocation_Vehicles_Manager_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1901279802", "1901279802", "E7_CultLocation_LVL1", "box_Simple_Node_43.Out", "box_CultLocation_Vehicles_Manager_42.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_8_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_8;
    l1 = self.box_OnceOnly_v3_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1174379675", "1174379675", "E7_CultLocation_LVL1", "box_MultipleOR_8.Out", "box_OnceOnly_v3_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_13_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_13;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1593119724", "1593119724", "E7_CultLocation_LVL1", "box_Delay_v5_13.TimeElapsed", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Cult_Location_Reinforcements_11_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_5();
    l0 = self.box_Brick_Cult_Location_Reinforcements_11;
    l1 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|2093672094", "2093672094", "E7_CultLocation_LVL1", "box_Brick_Cult_Location_Reinforcements_11.ReinforcementCalled", "box_CultLocation_Reinforcement_PhoneCall_Manager_5.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_18_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_18;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|416955972", "416955972", "E7_CultLocation_LVL1", "box_Delay_v5_18.TimeElapsed", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPlayerGroup_v2_14_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_14_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_3();
    l0 = self.box_ProximityRadiusListener_v3_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1948083836", "1948083836", "E7_CultLocation_LVL1", "box_GetPlayerGroup_v2_14.Out", "box_ProximityRadiusListener_v3_3.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_NarrativeScriptedConvoSafe_17_Finish()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_NarrativeScriptedConvoSafe_17;
    l1 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1379480640", "1379480640", "E7_CultLocation_LVL1", "box_NarrativeScriptedConvoSafe_17.Finish", "box_Delay_v5_18.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_NarrativeScriptedConvoSafe_17_Finish_WrongActor()
    local l0, l1;
    l0 = self.box_NarrativeScriptedConvoSafe_17;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|269440858", "269440858", "E7_CultLocation_LVL1", "box_NarrativeScriptedConvoSafe_17.Finish_WrongActor", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_30();
    l0 = self.box_Delay_v5_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1428071283", "1428071283", "E7_CultLocation_LVL1", "box_OutputOrder_v2_6.Out", "box_Delay_v5_30.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeScriptedConvoSafe_17();
    l0 = self.box_NarrativeScriptedConvoSafe_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1043865572", "1043865572", "E7_CultLocation_LVL1", "box_OutputOrder_v2_6.Out", "box_NarrativeScriptedConvoSafe_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_32();
    l0 = self.box_Delay_v5_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1550168937", "1550168937", "E7_CultLocation_LVL1", "box_OutputOrder_v2_6.Out", "box_Delay_v5_32.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_6_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeScriptedConvoSafe_19();
    l0 = self.box_NarrativeScriptedConvoSafe_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1929854985", "1929854985", "E7_CultLocation_LVL1", "box_OutputOrder_v2_6.Out", "box_NarrativeScriptedConvoSafe_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Brick_Cult_Location_Reinforcements_4_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_10();
    l0 = self.box_Brick_Cult_Location_Reinforcements_4;
    l1 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|695366675", "695366675", "E7_CultLocation_LVL1", "box_Brick_Cult_Location_Reinforcements_4.ReinforcementCalled", "box_CultLocation_Reinforcement_PhoneCall_Manager_10.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_36();
    l0 = self.box_ContextualActionListener_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1433307205", "1433307205", "E7_CultLocation_LVL1", "box_OutputOrder_v2_34.Out", "box_ContextualActionListener_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_33();
    l0 = self.box_ContextualActionListener_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1400349056", "1400349056", "E7_CultLocation_LVL1", "box_OutputOrder_v2_34.Out", "box_ContextualActionListener_33.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_NarrativeScriptedConvoSafe_19_Finish()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_13();
    l0 = self.box_NarrativeScriptedConvoSafe_19;
    l1 = self.box_Delay_v5_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1710202015", "1710202015", "E7_CultLocation_LVL1", "box_NarrativeScriptedConvoSafe_19.Finish", "box_Delay_v5_13.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_NarrativeScriptedConvoSafe_19_Finish_WrongActor()
    local l0, l1;
    l0 = self.box_NarrativeScriptedConvoSafe_19;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1684411713", "1684411713", "E7_CultLocation_LVL1", "box_NarrativeScriptedConvoSafe_19.Finish_WrongActor", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ProximityRadiusListener_v3_3_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = self.box_ProximityRadiusListener_v3_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1193461856", "1193461856", "E7_CultLocation_LVL1", "box_ProximityRadiusListener_v3_3.SomeoneNear", "box_OutputOrder_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_30_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_30;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|79597834", "79597834", "E7_CultLocation_LVL1", "box_Delay_v5_30.TimeElapsed", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_9();
    l0 = self.box_SpawnAI_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1713041783", "1713041783", "E7_CultLocation_LVL1", "box_OutputOrder_v2_16.Out", "box_SpawnAI_9.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_7();
    l0 = self.box_SpawnAI_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|436666448", "436666448", "E7_CultLocation_LVL1", "box_OutputOrder_v2_16.Out", "box_SpawnAI_7.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_28();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|437900865", "437900865", "E7_CultLocation_LVL1", "box_OutputOrder_v2_12.Out", "box_Simple_Node_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_24();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1055306756", "1055306756", "E7_CultLocation_LVL1", "box_OutputOrder_v2_12.Out", "box_Simple_Node_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_40();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1578237258", "1578237258", "E7_CultLocation_LVL1", "box_OutputOrder_v2_12.Out", "box_Simple_Node_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_43();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|346512034", "346512034", "E7_CultLocation_LVL1", "box_OutputOrder_v2_12.Out", "box_Simple_Node_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_46();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|601904160", "601904160", "E7_CultLocation_LVL1", "box_OutputOrder_v2_12.Out", "box_Simple_Node_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_27();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|132519857", "132519857", "E7_CultLocation_LVL1", "box_OutputOrder_v2_12.Out", "box_Simple_Node_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_38_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_35();
    l0 = self.box_Delay_v5_38;
    l1 = self.box_PositionModifier_v2_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1696818320", "1696818320", "E7_CultLocation_LVL1", "box_Delay_v5_38.TimeElapsed", "box_PositionModifier_v2_35.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_ContextualActionListener_36_End()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_38();
    l0 = self.box_ContextualActionListener_36;
    l1 = self.box_Delay_v5_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1983043948", "1983043948", "E7_CultLocation_LVL1", "box_ContextualActionListener_36.End", "box_Delay_v5_38.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ContextualActionListener_33_End()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_39();
    l0 = self.box_ContextualActionListener_33;
    l1 = self.box_Delay_v5_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1803761509", "1803761509", "E7_CultLocation_LVL1", "box_ContextualActionListener_33.End", "box_Delay_v5_39.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_1_CallReinforcement_Wave1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|29919269", "29919269", "E7_CultLocation_LVL1", "box_Brick_Cult_Location_Gameplay_V3_Main_1.CallReinforcement_Wave1", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_1_CallReinforcement_Wave2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1480424551", "1480424551", "E7_CultLocation_LVL1", "box_Brick_Cult_Location_Gameplay_V3_Main_1.CallReinforcement_Wave2", "box_Simple_Node_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_1_CustomScript()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|288323747", "288323747", "E7_CultLocation_LVL1", "box_Brick_Cult_Location_Gameplay_V3_Main_1.CustomScript", "box_OutputOrder_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_29_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_15();
    l0 = self.box_OnceOnly_v3_29;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1109153539", "1109153539", "E7_CultLocation_LVL1", "box_OnceOnly_v3_29.Out", "box_UseContextualActionModifier_v3_15.CallForceNormalEnd", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallForceNormalEnd
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_32_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_32;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1562520948", "1562520948", "E7_CultLocation_LVL1", "box_Delay_v5_32.TimeElapsed", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_39_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_37();
    l0 = self.box_Delay_v5_39;
    l1 = self.box_PositionModifier_v2_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|202563892", "202563892", "E7_CultLocation_LVL1", "box_Delay_v5_39.TimeElapsed", "box_PositionModifier_v2_37.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_31_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_2();
    l0 = self.box_OnceOnly_v3_31;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|654879063", "654879063", "E7_CultLocation_LVL1", "box_OnceOnly_v3_31.Out", "box_UseContextualActionModifier_v3_2.CallForceNormalEnd", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallForceNormalEnd
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_20_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_20;
    l1 = self.box_OnceOnly_v3_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1467125284", "1467125284", "E7_CultLocation_LVL1", "box_MultipleOR_20.Out", "box_OnceOnly_v3_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_44_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_45();
    l0 = self.box_ProximityTrigger_v2_44;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1394112885", "1394112885", "E7_CultLocation_LVL1", "box_ProximityTrigger_v2_44.Enter", "box_UseContextualActionModifier_v3_45.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_15_InterruptCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_15();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|381441342", "381441342", "E7_CultLocation_LVL1", "box_UseContextualActionModifier_v3_15.InterruptCalled", "box_UseContextualActionModifier_v3_15.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayerFullyDetected_26_Detected()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_25();
    l0 = self.box_PlayerFullyDetected_26;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1286343968", "1286343968", "E7_CultLocation_LVL1", "box_PlayerFullyDetected_26.Detected", "box_GroupAddToGroup_v2_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_2_InterruptCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_2();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1242259142", "1242259142", "E7_CultLocation_LVL1", "box_UseContextualActionModifier_v3_2.InterruptCalled", "box_UseContextualActionModifier_v3_2.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|@Add_group_MOTAR");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_27_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|@Carry_crate");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_40_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|@Play_Convo");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_24_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|@Reinforcement_Wave_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_21_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|@Reinforcement_Wave_2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_22_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|@Spawn_Extra_NPC");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_28_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|@Vantage_Helpers");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_46_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|@Vehicle_Manager");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_43_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_13()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Reinforcements_11()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2100098426170521046",
        -- ReinforcementPos02,
        [1] = "2104439447511681511",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_18()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Vehicles_Manager_42()
    local params;
    params = {
        -- e_Vehicles_proximitytrigger,
        [0] = "2103318091883631930",
        -- Vehicles_list,
        [1] = PersistentGlobals.E7_CultLocation_01.Veh_list,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|356595245");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_14_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeScriptedConvoSafe_17()
    local params;
    params = {
        -- Convo_STP,
        [0] = "2102337817595098975",
        -- NPC,
        [1] = "2100014310309765596",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|444382983");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = "#5A943213",
        -- ToGroup,
        [1] = "#65C95A74",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|512470406");
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
                [0] = self.f_box_OutputOrder_v2_6_Out_0,
                [1] = self.f_box_OutputOrder_v2_6_Out_1,
                [2] = self.f_box_OutputOrder_v2_6_Out_2,
                [3] = self.f_box_OutputOrder_v2_6_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_35()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2103317449995727849",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2103316662250902359",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_7()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102295293132287413",
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_10()
    local params;
    params = {
        -- Type,
        [1] = "road",
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Reinforcements_4()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2101038680780057535",
        -- ReinforcementPos02,
        [1] = "2103950236098510160",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|662779277");
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

function export:OnEnter_box_NarrativeScriptedConvoSafe_19()
    local params;
    params = {
        -- Convo_STP,
        [0] = "2102337799507162971",
        -- NPC,
        [1] = "2100068227846514630",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = l0:GetDataOutValue(0),
        -- id2,
        [3] = "2102337964014057627",
        -- nearZone,
        [4] = 25,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|979308398");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2104437625013158991",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_30()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|997706581");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_5()
    local params;
    params = {
        -- Type,
        [1] = "road",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1073231047");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 6,
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
                [2] = self.f_box_OutputOrder_v2_12_Out_2,
                [3] = self.f_box_OutputOrder_v2_12_Out_3,
                [4] = self.f_box_OutputOrder_v2_12_Out_4,
                [5] = self.f_box_OutputOrder_v2_12_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_38()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_36()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2102239923384880463",
        -- UserFilter,
        [1] = "2102239911649217819",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_37()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2103317456253629421",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2103316739149276059",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_9()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101135866666691507",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_33()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2103316738262180760",
        -- UserFilter,
        [1] = "2102239911649217819",
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_1()
    local params;
    params = {
        -- alarm_in_setup,
        [0] = true,
        -- Alarm01,
        [1] = "#15D87002",
        -- Alarm02,
        [2] = "#8CD121B8",
        -- Alarm03,
        [3] = "#FBD6112E",
        -- CultLoc_Music_Type,
        [4] = "974905219",
        -- CultLocationNPC_Group,
        [5] = "#5A943213",
        -- SafeHouseEntity,
        [6] = "2100014310309765592",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_32()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_39()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_44()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104437724961326161",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_15()
    local params, l0;
    DrawTextToScreen("Comment: Disable STP", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'UseContextualActionModifier_v3')-- Comment: Disable STP");
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|1893215249");
    l0:SetConnections({
        -- InterruptCalled,
        [3] = self.f_box_UseContextualActionModifier_v3_15_InterruptCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2100068295165094095",
        -- Entity,
        [1] = "2100014310309765596",
    };
    return params;
end;

function export:OnEnter_box_PlayerFullyDetected_26()
    local params;
    params = {
        -- group,
        [0] = "#5A943213",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_2()
    local params, l0;
    DrawTextToScreen("Comment: Disable STP", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'UseContextualActionModifier_v3')-- Comment: Disable STP");
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E7\\E7_CultLocation_01.domino|@E7_CultLocation_LVL1|2083571914");
    l0:SetConnections({
        -- InterruptCalled,
        [3] = self.f_box_UseContextualActionModifier_v3_2_InterruptCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102337765044664149",
        -- Entity,
        [1] = "2100068227846514630",
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_14_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_ProximityRadiusListener_v3_3;
    l1:GetLuaBox().Entities = l0:GetDataOutValue(0);
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
