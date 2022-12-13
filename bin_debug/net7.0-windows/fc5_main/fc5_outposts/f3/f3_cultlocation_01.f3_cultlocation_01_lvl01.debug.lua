LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/f3/f3_cultlocation_01.domino
-- User graph: F3_CultLocation_01_LVL01
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
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PhysicsModifier.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/User/FC5_main/FC5_Outposts/F3/F3_CultLocation_01.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1931423462.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.F3_CultLocation_01 = nil;
    Globals.F3_CultLocation_01 = {
        Veh_List = {
        },
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Outposts/F3/F3_CultLocation_01.F3_CultLocation_01_LVL01.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/PhysicsModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDisabled",
            },
            [1] = {
                name = "SetEnabled",
            },
            [2] = {
                name = "StartPhysics",
            },
        },
        controlInCount = 3,
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
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "players",
                type = "group",
            },
            [1] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 2,
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
    self._name = "F3_CultLocation_01_LVL01";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01";
    self.Out = DummyFunction;
    self.g_PlayerGroup = nil;
    self.box_Brick_Cult_Location_Reinforcements_68 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
    l0 = self.box_Brick_Cult_Location_Reinforcements_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Reinforcements_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|62789355");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Cult_Location_Reinforcements_68_ReinforcementCalled,
    });
    self.box_MultipleOR_58 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|114661748");
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
        [0] = self.f_box_MultipleOR_58_Out,
    });
    self.box_PositionModifier_v2_43 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|117225356");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_43_Done,
    });
    self.box_PhysicsModifier_40 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|127187160");
    l0:SetConnections({
    });
    self.box_Delay_v5_57 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|236097749");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_57_TimeElapsed,
    });
    self.box_ContextualActionListener_61 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|283949390");
    l0:SetConnections({
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_61_Enabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_61_End,
        -- Start,
        [8] = self.f_box_ContextualActionListener_61_Start,
    });
    self.box_PhysicsModifier_8 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|359685549");
    l0:SetConnections({
    });
    self.box_Delay_v5_49 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|371585391");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_49_TimeElapsed,
    });
    self.box_PositionModifier_v2_46 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|414304237");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_46_Done,
    });
    self.box_PhysicsModifier_54 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|455336816");
    l0:SetConnections({
    });
    self.box_PhysicsModifier_19 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|503743131");
    l0:SetConnections({
    });
    self.box_Brick_Cult_Location_Reinforcements_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Reinforcements.debug.lua");
    l0 = self.box_Brick_Cult_Location_Reinforcements_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Reinforcements_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|510891031");
    l0:SetConnections({
        -- ReinforcementCalled,
        [0] = self.f_box_Brick_Cult_Location_Reinforcements_1_ReinforcementCalled,
    });
    self.box_NarrativeScriptedConvoSafe_30 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeScriptedConvoSafe.debug.lua");
    l0 = self.box_NarrativeScriptedConvoSafe_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeScriptedConvoSafe_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|539094930");
    l0:SetConnections({
        -- Finish,
        [1] = self.f_box_NarrativeScriptedConvoSafe_30_Finish,
        -- Finish_WrongActor,
        [2] = self.f_box_NarrativeScriptedConvoSafe_30_Finish_WrongActor,
    });
    self.box_CultLocation_Reinforcement_PhoneCall_Manager_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Reinforcement_PhoneCall_Manager_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|594775747");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_62 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|607214132");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_62_Enter,
    });
    self.box_PhysicsModifier_7 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|681986590");
    l0:SetConnections({
    });
    self.box_PhysicsModifier_51 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|690591328");
    l0:SetConnections({
    });
    self.box_Delay_v5_45 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|794192587");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_45_TimeElapsed,
    });
    self.box_PhysicsModifier_52 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|834568100");
    l0:SetConnections({
    });
    self.box_PhysicsModifier_55 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|912014449");
    l0:SetConnections({
    });
    self.box_MultipleOR_59 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|929090167");
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
        [0] = self.f_box_MultipleOR_59_Out,
    });
    self.box_CultLocation_Reinforcement_PhoneCall_Manager_69 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Reinforcement_PhoneCall_Manager.debug.lua");
    l0 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Reinforcement_PhoneCall_Manager_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|935945563");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_4 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|945247128");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_4_Done,
    });
    self.box_Delay_v5_41 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|993950072");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_41_TimeElapsed,
    });
    self.box_ContextualActionListener_42 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1047601676");
    l0:SetConnections({
        -- End,
        [3] = self.f_box_ContextualActionListener_42_End,
    });
    self.box_Brick_Cult_Location_Gameplay_V3_Main_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Gameplay_V3_Main.debug.lua");
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Gameplay_V3_Main_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1060240994");
    l0:SetConnections({
        -- CallReinforcement_Wave1,
        [0] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_5_CallReinforcement_Wave1,
        -- CallReinforcement_Wave2,
        [1] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_5_CallReinforcement_Wave2,
        -- CultLocationCompleted_HostilityElimination,
        [2] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_5_CultLocationCompleted_HostilityElimination,
        -- CustomScript,
        [3] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_5_CustomScript,
        -- Out,
        [4] = self.f_box_Brick_Cult_Location_Gameplay_V3_Main_5_Out,
    });
    self.box_ContextualActionListener_56 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1100072948");
    l0:SetConnections({
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_56_Enabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_56_End,
        -- Start,
        [8] = self.f_box_ContextualActionListener_56_Start,
    });
    self.box_CultLocation_Vehicles_Manager_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Vehicles_Manager.debug.lua");
    l0 = self.box_CultLocation_Vehicles_Manager_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Vehicles_Manager_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1118631729");
    l0:SetConnections({
    });
    self.box_PhysicsModifier_48 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1152683945");
    l0:SetConnections({
    });
    self.box_ContextualActionListener_39 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1161778882");
    l0:SetConnections({
        -- End,
        [3] = self.f_box_ContextualActionListener_39_End,
    });
    self.box_Delay_v5_36 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1323425990");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_36_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_15 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1374291872");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_15_Enter,
    });
    self.box_NarrativeScriptedConvoSafe_29 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeScriptedConvoSafe.debug.lua");
    l0 = self.box_NarrativeScriptedConvoSafe_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeScriptedConvoSafe_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1429768838");
    l0:SetConnections({
        -- Finish,
        [1] = self.f_box_NarrativeScriptedConvoSafe_29_Finish,
        -- Finish_WrongActor,
        [2] = self.f_box_NarrativeScriptedConvoSafe_29_Finish_WrongActor,
    });
    self.box_MultipleOR_34 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1492214128");
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
        [0] = self.f_box_MultipleOR_34_Out,
    });
    self.box_ProximityRadiusListener_v3_10 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1612467197");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_10_SomeoneNear,
    });
    self.box_PhysicsModifier_9 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1614892439");
    l0:SetConnections({
    });
    self.box_MultipleOR_35 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1775010883");
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
        [0] = self.f_box_MultipleOR_35_Out,
    });
    self.box_Delay_v5_33 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1819301117");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_33_TimeElapsed,
    });
    self.box_ContextualActionListener_47 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1832119395");
    l0:SetConnections({
        -- End,
        [3] = self.f_box_ContextualActionListener_47_End,
    });
    self.box_PhysicsModifier_44 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1835330825");
    l0:SetConnections({
    });
    self.box_ContextualActionListener_64 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1946029111");
    l0:SetConnections({
        -- End,
        [3] = self.f_box_ContextualActionListener_64_End,
    });
    self.box_PhysicsModifier_50 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1976542773");
    l0:SetConnections({
    });
    self.box_PhysicsModifier_53 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|2101530301");
    l0:SetConnections({
    });
    self.box_Delay_v5_60 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|2142738629");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_60_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_5();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1788727663", "1788727663", "F3_CultLocation_01_LVL01", "In", "box_Brick_Cult_Location_Gameplay_V3_Main_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_5();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1311113457", "1311113457", "F3_CultLocation_01_LVL01", "OnLeaveZone", "box_Brick_Cult_Location_Gameplay_V3_Main_5.OnLeaveZone", self, l0:GetLuaBox());
    -- OnLeaveZone
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_31_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_28();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1766314841", "1766314841", "F3_CultLocation_01_LVL01", "box_Simple_Node_31.Out", "box_SetContextualStrategy_28.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_67_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_64();
    l0 = self.box_ContextualActionListener_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|2036362519", "2036362519", "F3_CultLocation_01_LVL01", "box_Simple_Node_67.Out", "box_ContextualActionListener_64.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_24_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_20();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1851118682", "1851118682", "F3_CultLocation_01_LVL01", "box_Simple_Node_24.Out", "box_GetPlayerGroup_v2_20.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_6_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|280906670", "280906670", "F3_CultLocation_01_LVL01", "box_Simple_Node_6.Out", "box_OutputOrder_v2_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_25_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_72();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1144881262", "1144881262", "F3_CultLocation_01_LVL01", "box_Simple_Node_25.Out", "box_OutputOrder_v2_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_16_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_CultLocation_Vehicles_Manager_2();
    l0 = self.box_CultLocation_Vehicles_Manager_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1324878654", "1324878654", "F3_CultLocation_01_LVL01", "box_Simple_Node_16.Out", "box_CultLocation_Vehicles_Manager_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_70_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Cult_Location_Reinforcements_68();
    l0 = self.box_Brick_Cult_Location_Reinforcements_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1823819123", "1823819123", "F3_CultLocation_01_LVL01", "box_Simple_Node_70.Out", "box_Brick_Cult_Location_Reinforcements_68.CallReinforcement", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallReinforcement
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_71_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Cult_Location_Reinforcements_1();
    l0 = self.box_Brick_Cult_Location_Reinforcements_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|770039676", "770039676", "F3_CultLocation_01_LVL01", "box_Simple_Node_71.Out", "box_Brick_Cult_Location_Reinforcements_1.CallReinforcement", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallReinforcement
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_38_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_42();
    l0 = self.box_ContextualActionListener_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|836870650", "836870650", "F3_CultLocation_01_LVL01", "box_OutputOrder_v2_38.Out", "box_ContextualActionListener_42.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_38_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_39();
    l0 = self.box_ContextualActionListener_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|209338173", "209338173", "F3_CultLocation_01_LVL01", "box_OutputOrder_v2_38.Out", "box_ContextualActionListener_39.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_38_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_47();
    l0 = self.box_ContextualActionListener_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1448024993", "1448024993", "F3_CultLocation_01_LVL01", "box_OutputOrder_v2_38.Out", "box_ContextualActionListener_47.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_38_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_37();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1007764270", "1007764270", "F3_CultLocation_01_LVL01", "box_OutputOrder_v2_38.Out", "box_OutputOrder_v2_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_37_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_7();
    l0 = self.box_PhysicsModifier_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|2039068102", "2039068102", "F3_CultLocation_01_LVL01", "box_OutputOrder_v2_37.Out", "box_PhysicsModifier_7.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_37_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_9();
    l0 = self.box_PhysicsModifier_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|215054526", "215054526", "F3_CultLocation_01_LVL01", "box_OutputOrder_v2_37.Out", "box_PhysicsModifier_9.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_37_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_8();
    l0 = self.box_PhysicsModifier_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1481435580", "1481435580", "F3_CultLocation_01_LVL01", "box_OutputOrder_v2_37.Out", "box_PhysicsModifier_8.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_37_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_19();
    l0 = self.box_PhysicsModifier_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|748597361", "748597361", "F3_CultLocation_01_LVL01", "box_OutputOrder_v2_37.Out", "box_PhysicsModifier_19.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_37_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_50();
    l0 = self.box_PhysicsModifier_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1799745366", "1799745366", "F3_CultLocation_01_LVL01", "box_OutputOrder_v2_37.Out", "box_PhysicsModifier_50.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_37_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_51();
    l0 = self.box_PhysicsModifier_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|326809882", "326809882", "F3_CultLocation_01_LVL01", "box_OutputOrder_v2_37.Out", "box_PhysicsModifier_51.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_37_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_52();
    l0 = self.box_PhysicsModifier_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1659489298", "1659489298", "F3_CultLocation_01_LVL01", "box_OutputOrder_v2_37.Out", "box_PhysicsModifier_52.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_37_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_53();
    l0 = self.box_PhysicsModifier_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1144353496", "1144353496", "F3_CultLocation_01_LVL01", "box_OutputOrder_v2_37.Out", "box_PhysicsModifier_53.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_37_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_54();
    l0 = self.box_PhysicsModifier_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1191201069", "1191201069", "F3_CultLocation_01_LVL01", "box_OutputOrder_v2_37.Out", "box_PhysicsModifier_54.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_37_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_55();
    l0 = self.box_PhysicsModifier_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|11011194", "11011194", "F3_CultLocation_01_LVL01", "box_OutputOrder_v2_37.Out", "box_PhysicsModifier_55.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_Brick_Cult_Location_Reinforcements_68_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_69();
    l0 = self.box_Brick_Cult_Location_Reinforcements_68;
    l1 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|475644007", "475644007", "F3_CultLocation_01_LVL01", "box_Brick_Cult_Location_Reinforcements_68.ReinforcementCalled", "box_CultLocation_Reinforcement_PhoneCall_Manager_69.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_56();
    l0 = self.box_ContextualActionListener_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|2015415383", "2015415383", "F3_CultLocation_01_LVL01", "box_OutputOrder_v2_32.Out", "box_ContextualActionListener_56.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeScriptedConvoSafe_29();
    l0 = self.box_NarrativeScriptedConvoSafe_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|576768572", "576768572", "F3_CultLocation_01_LVL01", "box_OutputOrder_v2_32.Out", "box_NarrativeScriptedConvoSafe_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_32_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeScriptedConvoSafe_30();
    l0 = self.box_NarrativeScriptedConvoSafe_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|188211311", "188211311", "F3_CultLocation_01_LVL01", "box_OutputOrder_v2_32.Out", "box_NarrativeScriptedConvoSafe_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_32_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_61();
    l0 = self.box_ContextualActionListener_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|58684288", "58684288", "F3_CultLocation_01_LVL01", "box_OutputOrder_v2_32.Out", "box_ContextualActionListener_61.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_58_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_33();
    l0 = self.box_MultipleOR_58;
    l1 = self.box_Delay_v5_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|2005791956", "2005791956", "F3_CultLocation_01_LVL01", "box_MultipleOR_58.Out", "box_Delay_v5_33.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PositionModifier_v2_43_Done()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_44();
    l0 = self.box_PositionModifier_v2_43;
    l1 = self.box_PhysicsModifier_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|549000771", "549000771", "F3_CultLocation_01_LVL01", "box_PositionModifier_v2_43.Done", "box_PhysicsModifier_44.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_57_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_57;
    l1 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|565858405", "565858405", "F3_CultLocation_01_LVL01", "box_Delay_v5_57.TimeElapsed", "box_MultipleOR_35.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ContextualActionListener_61_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_57();
    l0 = self.box_ContextualActionListener_61;
    l1 = self.box_Delay_v5_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1738047819", "1738047819", "F3_CultLocation_01_LVL01", "box_ContextualActionListener_61.Enabled", "box_Delay_v5_57.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ContextualActionListener_61_End()
    local l0, l1;
    l0 = self.box_ContextualActionListener_61;
    l1 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|2017402552", "2017402552", "F3_CultLocation_01_LVL01", "box_ContextualActionListener_61.End", "box_MultipleOR_58.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ContextualActionListener_61_Start()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_57();
    l0 = self.box_ContextualActionListener_61;
    l1 = self.box_Delay_v5_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|431447516", "431447516", "F3_CultLocation_01_LVL01", "box_ContextualActionListener_61.Start", "box_Delay_v5_57.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_Delay_v5_49_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_46();
    l0 = self.box_Delay_v5_49;
    l1 = self.box_PositionModifier_v2_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|905062899", "905062899", "F3_CultLocation_01_LVL01", "box_Delay_v5_49.TimeElapsed", "box_PositionModifier_v2_46.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_46_Done()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_48();
    l0 = self.box_PositionModifier_v2_46;
    l1 = self.box_PhysicsModifier_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1965881243", "1965881243", "F3_CultLocation_01_LVL01", "box_PositionModifier_v2_46.Done", "box_PhysicsModifier_48.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_12_InterruptCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_12();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|335532096", "335532096", "F3_CultLocation_01_LVL01", "box_UseContextualActionModifier_v3_12.InterruptCalled", "box_UseContextualActionModifier_v3_12.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Reinforcements_1_ReinforcementCalled()
    local params, l0, l1;
    params = self:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_3();
    l0 = self.box_Brick_Cult_Location_Reinforcements_1;
    l1 = self.box_CultLocation_Reinforcement_PhoneCall_Manager_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|141319933", "141319933", "F3_CultLocation_01_LVL01", "box_Brick_Cult_Location_Reinforcements_1.ReinforcementCalled", "box_CultLocation_Reinforcement_PhoneCall_Manager_3.ReinforcementsPositionInfo", l0:GetLuaBox(), l1:GetLuaBox());
    -- ReinforcementsPositionInfo
    l1:Exec(0, params);
end;

function export:f_box_NarrativeScriptedConvoSafe_30_Finish()
    local l0, l1;
    l0 = self.box_NarrativeScriptedConvoSafe_30;
    l1 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|230616773", "230616773", "F3_CultLocation_01_LVL01", "box_NarrativeScriptedConvoSafe_30.Finish", "box_MultipleOR_58.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_NarrativeScriptedConvoSafe_30_Finish_WrongActor()
    local l0, l1;
    l0 = self.box_NarrativeScriptedConvoSafe_30;
    l1 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|22707255", "22707255", "F3_CultLocation_01_LVL01", "box_NarrativeScriptedConvoSafe_30.Finish_WrongActor", "box_MultipleOR_35.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_62_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_63();
    l0 = self.box_ProximityTrigger_v2_62;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|699583762", "699583762", "F3_CultLocation_01_LVL01", "box_ProximityTrigger_v2_62.Enter", "box_UseContextualActionModifier_v3_63.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_72_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_15();
    l0 = self.box_ProximityTrigger_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1404107824", "1404107824", "F3_CultLocation_01_LVL01", "box_OutputOrder_v2_72.Out", "box_ProximityTrigger_v2_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_72_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_62();
    l0 = self.box_ProximityTrigger_v2_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1068759833", "1068759833", "F3_CultLocation_01_LVL01", "box_OutputOrder_v2_72.Out", "box_ProximityTrigger_v2_62.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_13_InterruptCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1785554001", "1785554001", "F3_CultLocation_01_LVL01", "box_UseContextualActionModifier_v3_13.InterruptCalled", "box_OutputOrder_v2_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_45_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_43();
    l0 = self.box_Delay_v5_45;
    l1 = self.box_PositionModifier_v2_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1250876011", "1250876011", "F3_CultLocation_01_LVL01", "box_Delay_v5_45.TimeElapsed", "box_PositionModifier_v2_43.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_13();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1627017684", "1627017684", "F3_CultLocation_01_LVL01", "box_OutputOrder_v2_18.Out", "box_UseContextualActionModifier_v3_13.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_17();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|654879967", "654879967", "F3_CultLocation_01_LVL01", "box_OutputOrder_v2_18.Out", "box_UseContextualActionModifier_v3_17.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_20_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_20_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_10();
    l0 = self.box_ProximityRadiusListener_v3_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|994911790", "994911790", "F3_CultLocation_01_LVL01", "box_GetPlayerGroup_v2_20.Out", "box_ProximityRadiusListener_v3_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_59_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_36();
    l0 = self.box_MultipleOR_59;
    l1 = self.box_Delay_v5_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|122246221", "122246221", "F3_CultLocation_01_LVL01", "box_MultipleOR_59.Out", "box_Delay_v5_36.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PositionModifier_v2_4_Done()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_40();
    l0 = self.box_PositionModifier_v2_4;
    l1 = self.box_PhysicsModifier_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1874589254", "1874589254", "F3_CultLocation_01_LVL01", "box_PositionModifier_v2_4.Done", "box_PhysicsModifier_40.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_41_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_4();
    l0 = self.box_Delay_v5_41;
    l1 = self.box_PositionModifier_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|733337052", "733337052", "F3_CultLocation_01_LVL01", "box_Delay_v5_41.TimeElapsed", "box_PositionModifier_v2_4.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_ContextualActionListener_42_End()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_45();
    l0 = self.box_ContextualActionListener_42;
    l1 = self.box_Delay_v5_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|870110663", "870110663", "F3_CultLocation_01_LVL01", "box_ContextualActionListener_42.End", "box_Delay_v5_45.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_5_CallReinforcement_Wave1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_70();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1714307348", "1714307348", "F3_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_5.CallReinforcement_Wave1", "box_Simple_Node_70.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_5_CallReinforcement_Wave2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_71();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|239862938", "239862938", "F3_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_5.CallReinforcement_Wave2", "box_Simple_Node_71.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_5_CultLocationCompleted_HostilityElimination()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_31();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|540727624", "540727624", "F3_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_5.CultLocationCompleted_HostilityElimination", "box_Simple_Node_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_5_CustomScript()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1764098336", "1764098336", "F3_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_5.CustomScript", "box_OutputOrder_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Gameplay_V3_Main_5_Out()
    local l0;
    l0 = self.box_Brick_Cult_Location_Gameplay_V3_Main_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|640668969", "640668969", "F3_CultLocation_01_LVL01", "box_Brick_Cult_Location_Gameplay_V3_Main_5.Out", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_ContextualActionListener_56_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_60();
    l0 = self.box_ContextualActionListener_56;
    l1 = self.box_Delay_v5_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|367521380", "367521380", "F3_CultLocation_01_LVL01", "box_ContextualActionListener_56.Enabled", "box_Delay_v5_60.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ContextualActionListener_56_End()
    local l0, l1;
    l0 = self.box_ContextualActionListener_56;
    l1 = self.box_MultipleOR_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|426434313", "426434313", "F3_CultLocation_01_LVL01", "box_ContextualActionListener_56.End", "box_MultipleOR_59.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ContextualActionListener_56_Start()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_60();
    l0 = self.box_ContextualActionListener_56;
    l1 = self.box_Delay_v5_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|295049458", "295049458", "F3_CultLocation_01_LVL01", "box_ContextualActionListener_56.Start", "box_Delay_v5_60.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_ContextualActionListener_39_End()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_41();
    l0 = self.box_ContextualActionListener_39;
    l1 = self.box_Delay_v5_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1724839898", "1724839898", "F3_CultLocation_01_LVL01", "box_ContextualActionListener_39.End", "box_Delay_v5_41.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_36_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_36;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1394350962", "1394350962", "F3_CultLocation_01_LVL01", "box_Delay_v5_36.TimeElapsed", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_15_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_14();
    l0 = self.box_ProximityTrigger_v2_15;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|639337147", "639337147", "F3_CultLocation_01_LVL01", "box_ProximityTrigger_v2_15.Enter", "box_UseContextualActionModifier_v3_14.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeScriptedConvoSafe_29_Finish()
    local l0, l1;
    l0 = self.box_NarrativeScriptedConvoSafe_29;
    l1 = self.box_MultipleOR_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1400819018", "1400819018", "F3_CultLocation_01_LVL01", "box_NarrativeScriptedConvoSafe_29.Finish", "box_MultipleOR_59.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_NarrativeScriptedConvoSafe_29_Finish_WrongActor()
    local l0, l1;
    l0 = self.box_NarrativeScriptedConvoSafe_29;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|2136851384", "2136851384", "F3_CultLocation_01_LVL01", "box_NarrativeScriptedConvoSafe_29.Finish_WrongActor", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_34_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_12();
    l0 = self.box_MultipleOR_34;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1776931909", "1776931909", "F3_CultLocation_01_LVL01", "box_MultipleOR_34.Out", "box_UseContextualActionModifier_v3_12.CallInterrupt", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallInterrupt
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_10_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = self.box_ProximityRadiusListener_v3_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1582178766", "1582178766", "F3_CultLocation_01_LVL01", "box_ProximityRadiusListener_v3_10.SomeoneNear", "box_OutputOrder_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_24();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1626986759", "1626986759", "F3_CultLocation_01_LVL01", "box_OutputOrder_v2_11.Out", "box_Simple_Node_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_25();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|842445078", "842445078", "F3_CultLocation_01_LVL01", "box_OutputOrder_v2_11.Out", "box_Simple_Node_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_6();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|877281634", "877281634", "F3_CultLocation_01_LVL01", "box_OutputOrder_v2_11.Out", "box_Simple_Node_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_16();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1606804657", "1606804657", "F3_CultLocation_01_LVL01", "box_OutputOrder_v2_11.Out", "box_Simple_Node_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_67();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1289681210", "1289681210", "F3_CultLocation_01_LVL01", "box_OutputOrder_v2_11.Out", "box_Simple_Node_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_35_Out()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_13();
    l0 = self.box_MultipleOR_35;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1155622393", "1155622393", "F3_CultLocation_01_LVL01", "box_MultipleOR_35.Out", "box_UseContextualActionModifier_v3_13.CallInterrupt", l0:GetLuaBox(), l1:GetLuaBox());
    -- CallInterrupt
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_33_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_33;
    l1 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|398055164", "398055164", "F3_CultLocation_01_LVL01", "box_Delay_v5_33.TimeElapsed", "box_MultipleOR_35.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ContextualActionListener_47_End()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_49();
    l0 = self.box_ContextualActionListener_47;
    l1 = self.box_Delay_v5_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1486748387", "1486748387", "F3_CultLocation_01_LVL01", "box_ContextualActionListener_47.End", "box_Delay_v5_49.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ContextualActionListener_64_End()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_65();
    l0 = self.box_ContextualActionListener_64;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1979373627", "1979373627", "F3_CultLocation_01_LVL01", "box_ContextualActionListener_64.End", "box_SetContextualStrategy_65.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_60_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_60;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|750233462", "750233462", "F3_CultLocation_01_LVL01", "box_Delay_v5_60.TimeElapsed", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_Simple_Node_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|@Bear_Flee");
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|@CIV_Release_Change_CS");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_67_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|@Conversation");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_24_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|@STP_Carry");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_6_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|@Vantage_Helpers");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_25_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|@Vehicle_Manager");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_16_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|@Wave_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_70_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|@Wave_2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_71_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1752990");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103898976639010038",
        -- Group,
        [1] = "2103207545928708576",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|34617985");
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
                [0] = self.f_box_OutputOrder_v2_38_Out_0,
                [1] = self.f_box_OutputOrder_v2_38_Out_1,
                [2] = self.f_box_OutputOrder_v2_38_Out_2,
                [3] = self.f_box_OutputOrder_v2_38_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|41047265");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 10,
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
                [2] = self.f_box_OutputOrder_v2_37_Out_2,
                [3] = self.f_box_OutputOrder_v2_37_Out_3,
                [4] = self.f_box_OutputOrder_v2_37_Out_4,
                [5] = self.f_box_OutputOrder_v2_37_Out_5,
                [6] = self.f_box_OutputOrder_v2_37_Out_6,
                [7] = self.f_box_OutputOrder_v2_37_Out_7,
                [8] = self.f_box_OutputOrder_v2_37_Out_8,
                [9] = self.f_box_OutputOrder_v2_37_Out_9,
            },
            count = 10,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Reinforcements_68()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2100099150281448132",
        -- ReinforcementPos02,
        [1] = "2100099059843864854",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|98386710");
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
                [0] = self.f_box_OutputOrder_v2_32_Out_0,
                [1] = self.f_box_OutputOrder_v2_32_Out_1,
                [2] = self.f_box_OutputOrder_v2_32_Out_2,
                [3] = self.f_box_OutputOrder_v2_32_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_43()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2103095594246545204",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2103093360706205144",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_40()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103093385398072817",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_57()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_61()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2102527577806616892",
        -- UserFilter,
        [1] = "2099224326373906628",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|295017413");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2102542131519298675",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_8()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103094747160713095",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_49()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_46()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2103096186796850637",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2103096163245833652",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_54()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103096625032347218",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_19()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103094791010064273",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_12()
    local params, l0;
    DrawTextToScreen("Comment: ConvoStarted", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'UseContextualActionModifier_v3')-- Comment: ConvoStarted");
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|509264422");
    l0:SetConnections({
        -- InterruptCalled,
        [3] = self.f_box_UseContextualActionModifier_v3_12_InterruptCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102527577806616896",
        -- Entity,
        [1] = "2099224781936138608",
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Reinforcements_1()
    local params;
    params = {
        -- ReinforcementPos01,
        [0] = "2101037435310836698",
    };
    return params;
end;

function export:OnEnter_box_NarrativeScriptedConvoSafe_30()
    local params;
    params = {
        -- Convo_STP,
        [0] = "2102527577806616892",
        -- NPC,
        [1] = "2099224326373906628",
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_3()
    local params;
    params = {
        -- Type,
        [1] = "chopper",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_62()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104467225818707196",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|633579896");
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
                [0] = self.f_box_OutputOrder_v2_72_Out_0,
                [1] = self.f_box_OutputOrder_v2_72_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|634847477");
    l0:SetConnections({
        -- InterruptCalled,
        [3] = self.f_box_UseContextualActionModifier_v3_13_InterruptCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2102527577804519736",
        -- Entity,
        [1] = "2099224326373906628",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_7()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103094785156913039",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_51()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103096611346333260",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|704168328");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2102527577804519736",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_45()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_52()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103096612545904206",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|856489756");
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

function export:OnEnter_box_GetPlayerGroup_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|881210127");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_20_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_55()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103096627316145748",
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Reinforcement_PhoneCall_Manager_69()
    local params;
    params = {
        -- Type,
        [1] = "truck",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_4()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2103094746340726660",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2103093385398072817",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_41()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_42()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2103093360706205143",
        -- UserFilter,
        [1] = "2099224782357666204",
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Gameplay_V3_Main_5()
    local params;
    params = {
        -- alarm_in_setup,
        [0] = true,
        -- Alarm01,
        [1] = "#F942FA88",
        -- CultLoc_Music_Type,
        [4] = "1931423462",
        -- CultLocationNPC_Group,
        [5] = "#CA290239",
        -- SafeHouseEntity,
        [6] = "2099129509247720414",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1094878651");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103012285174827519",
        -- Group,
        [1] = "#DB6479EF",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_56()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2102527577806616900",
        -- UserFilter,
        [1] = "2099224781936138608",
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Vehicles_Manager_2()
    local params;
    params = {
        -- e_Vehicles_proximitytrigger,
        [0] = "2103466665508369659",
        -- Vehicles_list,
        [1] = Globals.F3_CultLocation_01.Veh_List,
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_48()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103096163245833652",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_39()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2103093385398072816",
        -- UserFilter,
        [1] = "2099224782772902344",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_36()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_15()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2102542187207072885",
    };
    return params;
end;

function export:OnEnter_box_NarrativeScriptedConvoSafe_29()
    local params;
    params = {
        -- Convo_STP,
        [0] = "2102527577806616900",
        -- NPC,
        [1] = "2099224781936138608",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = l0:GetDataOutValue(0),
        -- id2,
        [3] = "2102530027466789151",
        -- nearZone,
        [4] = 34,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_9()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103094784194320269",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1774414250");
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
                [0] = self.f_box_OutputOrder_v2_11_Out_0,
                [1] = self.f_box_OutputOrder_v2_11_Out_1,
                [2] = self.f_box_OutputOrder_v2_11_Out_2,
                [3] = self.f_box_OutputOrder_v2_11_Out_3,
                [4] = self.f_box_OutputOrder_v2_11_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_33()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_47()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2103096163247930807",
        -- UserFilter,
        [1] = "2099224806567189392",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_44()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103093360706205144",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\F3\\F3_CultLocation_01.domino|@F3_CultLocation_01_LVL01|1906355185");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2104467211660834030",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_64()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2103898634912284741",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_50()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103096610222259786",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_53()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103096620257132112",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_60()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_20_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_ProximityRadiusListener_v3_10;
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
