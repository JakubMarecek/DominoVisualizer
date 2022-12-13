LUAC�Z -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/fc5_intro/intro_010/intro_010_b50.domino
-- User graph: Player_Progression_Trigger_First_seconds
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
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/MovementListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B50.globals.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.INTRO_010_B50 = nil;
    Globals.INTRO_010_B50 = {
        TutorialPlayed = false,
        player = nil,
        Players = nil,
        bReloaded = false,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B50.Player_Progression_Trigger_First_seconds.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/MovementListener_v2.lua")] = {
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
                name = "Idle",
                delayed = true,
            },
            [3] = {
                name = "Moving",
                delayed = true,
            },
            [4] = {
                name = "pitch_Changed",
                delayed = true,
            },
            [5] = {
                name = "roll_Changed",
                delayed = true,
            },
            [6] = {
                name = "x_Changed",
                delayed = true,
            },
            [7] = {
                name = "y_Changed",
                delayed = true,
            },
            [8] = {
                name = "yaw_Changed",
                delayed = true,
            },
            [9] = {
                name = "z_Changed",
                delayed = true,
            },
        },
        controlOutCount = 10,
        dataIn = {
            [0] = {
                name = "angleThreshold",
                type = "float",
            },
            [1] = {
                name = "autoDisable",
                type = "bool",
            },
            [2] = {
                name = "entityGroup",
                type = "group",
            },
            [3] = {
                name = "movingThreshold",
                type = "float",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "instigator",
                type = "entity",
            },
            [1] = {
                name = "isMoving",
                type = "bool",
            },
        },
        dataOutCount = 2,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Player_Progression_Trigger_First_seconds";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds";
    self.player = nil;
    self.players = nil;
    self.box_Delay_v5_4 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|238155656");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_4_TimeElapsed,
    });
    self.box_PositionModifier_v2_30 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|277313415");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_30_Done,
    });
    self.box_Delay_v5_29 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|336943059");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_29_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_38 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|338387441");
    l0:SetConnections({
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_38_OnOccupied,
    });
    self.box_MultipleOR_51 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|419109147");
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
        [0] = self.f_box_MultipleOR_51_Out,
    });
    self.box_ProximityTrigger_v2_39 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|431655405");
    l0:SetConnections({
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_39_OnOccupied,
    });
    self.box_MultipleOR_34 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|449874123");
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
        [0] = self.f_box_MultipleOR_34_Out,
    });
    self.box_PositionModifier_v2_16 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|548703463");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_16_Done,
    });
    self.box_MultipleOR_45 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|553747765");
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
        [0] = self.f_box_MultipleOR_45_Out,
    });
    self.box_ProximityTrigger_v2_18 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|583762955");
    l0:SetConnections({
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_18_OnOccupied,
    });
    self.box_ProximityTrigger_v2_35 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|593211494");
    l0:SetConnections({
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_35_OnOccupied,
    });
    self.box_Delay_v5_9 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|623298285");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_9_TimeElapsed,
    });
    self.box_EntityStatusListener_37 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|630411445");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_37_Loaded,
    });
    self.box_EntityStatusListener_27 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|658765358");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_27_Loaded,
    });
    self.box_Delay_v5_40 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|662920088");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_40_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_47 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|705012103");
    l0:SetConnections({
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_47_OnOccupied,
    });
    self.box_ProximityTrigger_v2_3 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|722665487");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_3_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_3_Leave,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_3_OnOccupied,
    });
    self.box_MovementListener_v2_7 = cbox:CreateBox("Domino/System/MovementListener_v2.lua");
    l0 = self.box_MovementListener_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MovementListener_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|738490975");
    l0:SetConnections({
        -- Moving,
        [3] = self.f_box_MovementListener_v2_7_Moving,
    });
    self.box_MultipleOR_41 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|769659300");
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
        [0] = self.f_box_MultipleOR_41_Out,
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|796153187");
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
        [0] = self.f_box_MultipleOR_25_Out,
    });
    self.box_EntityStatusListener_22 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|825145727");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_22_Loaded,
    });
    self.box_PositionModifier_v2_42 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|891132675");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_42_Done,
    });
    self.box_EntityStatusListener_36 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|978487288");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_36_Loaded,
    });
    self.box_PositionModifier_v2_26 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1212843570");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_26_Done,
    });
    self.box_MultipleOR_20 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1381069427");
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
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1456549080");
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
    self.box_EntityStatusListener_49 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1607697534");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_49_Loaded,
    });
    self.box_Delay_v5_21 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1686883932");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_21_TimeElapsed,
    });
    self.box_PositionModifier_v2_10 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1752439522");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_10_Done,
    });
    self.box_PositionModifier_v2_43 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1835226330");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_43_Done,
    });
    self.box_EntityStatusListener_23 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1842113809");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_23_Loaded,
    });
    self.box_Delay_v5_28 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1901678423");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_28_TimeElapsed,
    });
    self.box_EntityStatusListener_48 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1957436806");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_48_Loaded,
    });
    self.box_PositionModifier_v2_33 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1959350716");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_33_Done,
    });
    self.box_ProximityTrigger_v2_17 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1965154490");
    l0:SetConnections({
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_17_OnOccupied,
    });
    self.box_Delay_v5_14 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|2038497115");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_14_TimeElapsed,
    });
    self.box_MultipleOR_46 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|2129987535");
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
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_SetContextualStrategy_52();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|111867496", "111867496", "Player_Progression_Trigger_First_seconds", "In", "box_SetContextualStrategy_52.SetContextualStrategy", self, l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|2012907962", "2012907962", "Player_Progression_Trigger_First_seconds", "box_OutputOrder_v2_24.Out", "box_MultipleOR_34.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_17();
    l0 = self.box_ProximityTrigger_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1490156985", "1490156985", "Player_Progression_Trigger_First_seconds", "box_OutputOrder_v2_24.Out", "box_ProximityTrigger_v2_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_44_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1011809641", "1011809641", "Player_Progression_Trigger_First_seconds", "box_OutputOrder_v2_44.Out", "box_MultipleOR_20.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_44_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_18();
    l0 = self.box_ProximityTrigger_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|262450683", "262450683", "Player_Progression_Trigger_First_seconds", "box_OutputOrder_v2_44.Out", "box_ProximityTrigger_v2_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_4_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_44();
    l0 = self.box_Delay_v5_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|30155882", "30155882", "Player_Progression_Trigger_First_seconds", "box_Delay_v5_4.TimeElapsed", "box_OutputOrder_v2_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_30_Done()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_19();
    l0 = self.box_PositionModifier_v2_30;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|996187030", "996187030", "Player_Progression_Trigger_First_seconds", "box_PositionModifier_v2_30.Done", "box_SetContextualStrategy_19.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_29_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = self.box_Delay_v5_29;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|412455506", "412455506", "Player_Progression_Trigger_First_seconds", "box_Delay_v5_29.TimeElapsed", "box_OutputOrder_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_38_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_33();
    l0 = self.box_ProximityTrigger_v2_38;
    l1 = self.box_PositionModifier_v2_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|2110886219", "2110886219", "Player_Progression_Trigger_First_seconds", "box_ProximityTrigger_v2_38.OnOccupied", "box_PositionModifier_v2_33.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_51_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_29();
    l0 = self.box_MultipleOR_51;
    l1 = self.box_Delay_v5_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|831711046", "831711046", "Player_Progression_Trigger_First_seconds", "box_MultipleOR_51.Out", "box_Delay_v5_29.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v2_39_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_43();
    l0 = self.box_ProximityTrigger_v2_39;
    l1 = self.box_PositionModifier_v2_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|681033897", "681033897", "Player_Progression_Trigger_First_seconds", "box_ProximityTrigger_v2_39.OnOccupied", "box_PositionModifier_v2_43.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_34_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_9();
    l0 = self.box_MultipleOR_34;
    l1 = self.box_Delay_v5_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1385095110", "1385095110", "Player_Progression_Trigger_First_seconds", "box_MultipleOR_34.Out", "box_Delay_v5_9.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|175733495", "175733495", "Player_Progression_Trigger_First_seconds", "box_OutputOrder_v2_31.Out", "box_MultipleOR_25.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_31_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_47();
    l0 = self.box_ProximityTrigger_v2_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1008126968", "1008126968", "Player_Progression_Trigger_First_seconds", "box_OutputOrder_v2_31.Out", "box_ProximityTrigger_v2_47.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_48();
    l0 = self.box_EntityStatusListener_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|546744016", "546744016", "Player_Progression_Trigger_First_seconds", "box_OutputOrder_v2_12.Out", "box_EntityStatusListener_48.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_36();
    l0 = self.box_EntityStatusListener_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|137056516", "137056516", "Player_Progression_Trigger_First_seconds", "box_OutputOrder_v2_12.Out", "box_EntityStatusListener_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_27();
    l0 = self.box_EntityStatusListener_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|737087906", "737087906", "Player_Progression_Trigger_First_seconds", "box_OutputOrder_v2_12.Out", "box_EntityStatusListener_27.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_37();
    l0 = self.box_EntityStatusListener_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|324019414", "324019414", "Player_Progression_Trigger_First_seconds", "box_OutputOrder_v2_12.Out", "box_EntityStatusListener_37.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_23();
    l0 = self.box_EntityStatusListener_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1660372925", "1660372925", "Player_Progression_Trigger_First_seconds", "box_OutputOrder_v2_12.Out", "box_EntityStatusListener_23.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_22();
    l0 = self.box_EntityStatusListener_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|241658638", "241658638", "Player_Progression_Trigger_First_seconds", "box_OutputOrder_v2_12.Out", "box_EntityStatusListener_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_53();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|869182205", "869182205", "Player_Progression_Trigger_First_seconds", "box_OutputOrder_v2_12.Out", "box_SetContextualStrategy_53.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_49();
    l0 = self.box_EntityStatusListener_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1887134816", "1887134816", "Player_Progression_Trigger_First_seconds", "box_OutputOrder_v2_12.Out", "box_EntityStatusListener_49.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_16_Done()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_5();
    l0 = self.box_PositionModifier_v2_16;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1988760966", "1988760966", "Player_Progression_Trigger_First_seconds", "box_PositionModifier_v2_16.Done", "box_SetContextualStrategy_5.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_45_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_28();
    l0 = self.box_MultipleOR_45;
    l1 = self.box_Delay_v5_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|659237415", "659237415", "Player_Progression_Trigger_First_seconds", "box_MultipleOR_45.Out", "box_Delay_v5_28.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v2_18_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_16();
    l0 = self.box_ProximityTrigger_v2_18;
    l1 = self.box_PositionModifier_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|230452924", "230452924", "Player_Progression_Trigger_First_seconds", "box_ProximityTrigger_v2_18.OnOccupied", "box_PositionModifier_v2_16.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_35_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_30();
    l0 = self.box_ProximityTrigger_v2_35;
    l1 = self.box_PositionModifier_v2_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1457899005", "1457899005", "Player_Progression_Trigger_First_seconds", "box_ProximityTrigger_v2_35.OnOccupied", "box_PositionModifier_v2_30.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_9_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = self.box_Delay_v5_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|73957055", "73957055", "Player_Progression_Trigger_First_seconds", "box_Delay_v5_9.TimeElapsed", "box_OutputOrder_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1696440817", "1696440817", "Player_Progression_Trigger_First_seconds", "box_OutputOrder_v2_8.Out", "box_MultipleOR_51.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_39();
    l0 = self.box_ProximityTrigger_v2_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1341625591", "1341625591", "Player_Progression_Trigger_First_seconds", "box_OutputOrder_v2_8.Out", "box_ProximityTrigger_v2_39.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_37_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_37;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|151036802", "151036802", "Player_Progression_Trigger_First_seconds", "box_EntityStatusListener_37.Loaded", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_27_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_27;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|918968661", "918968661", "Player_Progression_Trigger_First_seconds", "box_EntityStatusListener_27.Loaded", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_40_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_Delay_v5_40;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1566816401", "1566816401", "Player_Progression_Trigger_First_seconds", "box_Delay_v5_40.TimeElapsed", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_47_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_42();
    l0 = self.box_ProximityTrigger_v2_47;
    l1 = self.box_PositionModifier_v2_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|535913276", "535913276", "Player_Progression_Trigger_First_seconds", "box_ProximityTrigger_v2_47.OnOccupied", "box_PositionModifier_v2_42.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_3_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_3;
    l1 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|915932273", "915932273", "Player_Progression_Trigger_First_seconds", "box_ProximityTrigger_v2_3.Enter", "box_MultipleOR_41.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_3_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_21();
    l0 = self.box_ProximityTrigger_v2_3;
    l1 = self.box_Delay_v5_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|966148268", "966148268", "Player_Progression_Trigger_First_seconds", "box_ProximityTrigger_v2_3.Leave", "box_Delay_v5_21.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_ProximityTrigger_v2_3_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_3;
    l1 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|503612048", "503612048", "Player_Progression_Trigger_First_seconds", "box_ProximityTrigger_v2_3.OnOccupied", "box_MultipleOR_41.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MovementListener_v2_7_Moving()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = self.box_MovementListener_v2_7;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1956734934", "1956734934", "Player_Progression_Trigger_First_seconds", "box_MovementListener_v2_7.Moving", "box_OutputOrder_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_41_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_41;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|550081889", "550081889", "Player_Progression_Trigger_First_seconds", "box_MultipleOR_41.Out", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_14();
    l0 = self.box_MultipleOR_25;
    l1 = self.box_Delay_v5_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|125502644", "125502644", "Player_Progression_Trigger_First_seconds", "box_MultipleOR_25.Out", "box_Delay_v5_14.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetContextualStrategy_52_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_50();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|608622023", "608622023", "Player_Progression_Trigger_First_seconds", "box_SetContextualStrategy_52.Out", "box_SetContextualStrategy_50.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_22_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_22;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|635456186", "635456186", "Player_Progression_Trigger_First_seconds", "box_EntityStatusListener_22.Loaded", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|307853483", "307853483", "Player_Progression_Trigger_First_seconds", "box_OutputOrder_v2_15.Out", "box_MultipleOR_45.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_38();
    l0 = self.box_ProximityTrigger_v2_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1861091549", "1861091549", "Player_Progression_Trigger_First_seconds", "box_OutputOrder_v2_15.Out", "box_ProximityTrigger_v2_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_42_Done()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_1();
    l0 = self.box_PositionModifier_v2_42;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1800446009", "1800446009", "Player_Progression_Trigger_First_seconds", "box_PositionModifier_v2_42.Done", "box_SetContextualStrategy_1.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_36_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_36;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1458648794", "1458648794", "Player_Progression_Trigger_First_seconds", "box_EntityStatusListener_36.Loaded", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1189747063", "1189747063", "Player_Progression_Trigger_First_seconds", "box_OutputOrder_v2_13.Out", "box_MultipleOR_46.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_35();
    l0 = self.box_ProximityTrigger_v2_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|862941490", "862941490", "Player_Progression_Trigger_First_seconds", "box_OutputOrder_v2_13.Out", "box_ProximityTrigger_v2_35.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_26_Done()
    local l0, l1;
    l0 = self.box_PositionModifier_v2_26;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1134392334", "1134392334", "Player_Progression_Trigger_First_seconds", "box_PositionModifier_v2_26.Done", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_4();
    l0 = self.box_MultipleOR_20;
    l1 = self.box_Delay_v5_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|726490840", "726490840", "Player_Progression_Trigger_First_seconds", "box_MultipleOR_20.Out", "box_Delay_v5_4.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_21();
    l0 = self.box_MultipleOR_11;
    l1 = self.box_Delay_v5_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1404129765", "1404129765", "Player_Progression_Trigger_First_seconds", "box_MultipleOR_11.Out", "box_Delay_v5_21.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_49_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_3();
    l0 = self.box_EntityStatusListener_49;
    l1 = self.box_ProximityTrigger_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|887936764", "887936764", "Player_Progression_Trigger_First_seconds", "box_EntityStatusListener_49.Loaded", "box_ProximityTrigger_v2_3.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_21_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_26();
    l0 = self.box_Delay_v5_21;
    l1 = self.box_PositionModifier_v2_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1010442728", "1010442728", "Player_Progression_Trigger_First_seconds", "box_Delay_v5_21.TimeElapsed", "box_PositionModifier_v2_26.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_10_Done()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_6();
    l0 = self.box_PositionModifier_v2_10;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1195150691", "1195150691", "Player_Progression_Trigger_First_seconds", "box_PositionModifier_v2_10.Done", "box_SetContextualStrategy_6.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_43_Done()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_32();
    l0 = self.box_PositionModifier_v2_43;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|440054767", "440054767", "Player_Progression_Trigger_First_seconds", "box_PositionModifier_v2_43.Done", "box_SetContextualStrategy_32.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_23_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_23;
    l1 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1135945372", "1135945372", "Player_Progression_Trigger_First_seconds", "box_EntityStatusListener_23.Loaded", "box_MultipleOR_34.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_28_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = self.box_Delay_v5_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1712506554", "1712506554", "Player_Progression_Trigger_First_seconds", "box_Delay_v5_28.TimeElapsed", "box_OutputOrder_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_48_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_48;
    l1 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|784591054", "784591054", "Player_Progression_Trigger_First_seconds", "box_EntityStatusListener_48.Loaded", "box_MultipleOR_51.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PositionModifier_v2_33_Done()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_2();
    l0 = self.box_PositionModifier_v2_33;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|802597310", "802597310", "Player_Progression_Trigger_First_seconds", "box_PositionModifier_v2_33.Done", "box_SetContextualStrategy_2.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_17_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_10();
    l0 = self.box_ProximityTrigger_v2_17;
    l1 = self.box_PositionModifier_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1321155827", "1321155827", "Player_Progression_Trigger_First_seconds", "box_ProximityTrigger_v2_17.OnOccupied", "box_PositionModifier_v2_10.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_50_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MovementListener_v2_7();
    l0 = self.box_MovementListener_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1920196753", "1920196753", "Player_Progression_Trigger_First_seconds", "box_SetContextualStrategy_50.Out", "box_MovementListener_v2_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_14_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = self.box_Delay_v5_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1187762235", "1187762235", "Player_Progression_Trigger_First_seconds", "box_Delay_v5_14.TimeElapsed", "box_OutputOrder_v2_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_46_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_40();
    l0 = self.box_MultipleOR_46;
    l1 = self.box_Delay_v5_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|981153230", "981153230", "Player_Progression_Trigger_First_seconds", "box_MultipleOR_46.Out", "box_Delay_v5_40.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|15214659");
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

function export:OnEnter_box_SetContextualStrategy_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|23416646");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104462719137636752",
        -- Group,
        [1] = "#55313847",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|149054829");
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

function export:OnEnter_box_Delay_v5_4()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|268726275");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104462719137636752",
        -- Group,
        [1] = "#55313847",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_30()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = Globals.INTRO_010_B50.player,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104462758148858265",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_29()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_38()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = Globals.INTRO_010_B50.player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104462308381057393",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_39()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = Globals.INTRO_010_B50.player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104574745715440924",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|454661915");
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
                [0] = self.f_box_OutputOrder_v2_31_Out_0,
                [1] = self.f_box_OutputOrder_v2_31_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|466619780");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 8,
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
                [6] = self.f_box_OutputOrder_v2_12_Out_6,
                [7] = self.f_box_OutputOrder_v2_12_Out_7,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_16()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = Globals.INTRO_010_B50.player,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104462758148858265",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_18()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = Globals.INTRO_010_B50.player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104739995326624624",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_35()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = Globals.INTRO_010_B50.player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104462667015020934",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_9()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|625687535");
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

function export:OnEnter_box_EntityStatusListener_37()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104462699334230411",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_27()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104462667015020934",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|661840001");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104462138350264495",
        -- Group,
        [1] = "#55313847",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_40()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_47()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = Globals.INTRO_010_B50.player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104462699334230411",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_3()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = Globals.INTRO_010_B50.player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104562332404293230",
    };
    return params;
end;

function export:OnEnter_box_MovementListener_v2_7()
    local params;
    params = {
        -- angleThreshold,
        [0] = 0.1,
        -- autoDisable,
        [1] = true,
        -- entityGroup,
        [2] = "#ED455357",
        -- movingThreshold,
        [3] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|807770770");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_52_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104574784196083091",
        -- Group,
        [1] = "#55313847",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_22()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104739995326624624",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|864840444");
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_42()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = Globals.INTRO_010_B50.player,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104462758148858265",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|949579079");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104462134506184871",
        -- Group,
        [1] = "#55313847",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_36()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104462308381057393",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|992365967");
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

function export:OnEnter_box_PositionModifier_v2_26()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = Globals.INTRO_010_B50.player,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104462758148858265",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1415002499");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104574784196083091",
        -- Group,
        [1] = "#55313847",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_49()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104562332404293230",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_21()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 35,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_10()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = Globals.INTRO_010_B50.player,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104462758148858265",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1757335440");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104462137452683435",
        -- Group,
        [1] = "#55313847",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1829836947");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104521096442222742",
        -- Group,
        [1] = "#ED8F46E1",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_43()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = Globals.INTRO_010_B50.player,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104462758148858265",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_23()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104463191818920437",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_28()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_48()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104574745715440924",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_33()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = Globals.INTRO_010_B50.player,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104462758148858265",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_17()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = Globals.INTRO_010_B50.player,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104463191818920437",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Player_Progression_Trigger_First_seconds|1988802606");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_50_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104574784196083091",
        -- Group,
        [1] = "#ED8F46E1",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_14()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 1,
    };
    return params;
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
