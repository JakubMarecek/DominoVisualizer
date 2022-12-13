LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/d2/d2_outpost_01.domino
-- User graph: D2_Outpost_01_Cinematic
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Cinematic_V2_Main.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.CultLocation_Cleanup_Manager.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/IsPawnAlive_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PhysicsModifier.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/FC5_main/FC5_Outposts/D2/D2_Outpost_01.globals.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.D2_Outpost_01 = nil;
    Globals.D2_Outpost_01 = {
        Veh_List = {
        },
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Outposts/D2/D2_Outpost_01.D2_Outpost_01_Cinematic.debug.lua")] = {
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Cinematic_V2_Main.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "FadedOut",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "bUseFadeInAtEnd",
                type = "bool",
            },
            [1] = {
                name = "CS_CINEMA_Outpost_Animals",
                type = "entity",
            },
            [2] = {
                name = "eSceneEntity",
                type = "entity",
            },
            [3] = {
                name = "IsFaithCelebration",
                type = "bool",
            },
            [4] = {
                name = "sSequenceFile",
                type = "sequence",
            },
            [5] = {
                name = "TeleportDestination",
                type = "entity",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Raids.CultLocation_Cleanup_Manager.debug.lua")] = {
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
                name = "Global_Veh_List",
                type = "list",
            },
            [1] = {
                name = "Other_Group",
                type = "group",
            },
            [2] = {
                name = "Vehicle_Group",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityEnd.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "EndHardSave",
            },
            [1] = {
                name = "EndNoSave",
            },
            [2] = {
                name = "EndSoftSave",
            },
        },
        controlInCount = 3,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "Success",
                type = "bool",
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
    metadataTable[GetPathID("Domino/System/IsPawnAlive_v2.lua")] = {
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
                name = "Pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "D2_Outpost_01_Cinematic";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic";
    self.Out = DummyFunction;
    self.raggingbull = 0;
    self.box_Brick_Cult_Location_Cinematic_V2_Main_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Cinematic_V2_Main.debug.lua");
    l0 = self.box_Brick_Cult_Location_Cinematic_V2_Main_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Cinematic_V2_Main_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|251862566");
    l0:SetConnections({
        -- FadedOut,
        [0] = self.f_box_Brick_Cult_Location_Cinematic_V2_Main_1_FadedOut,
        -- Out,
        [1] = self.f_box_Brick_Cult_Location_Cinematic_V2_Main_1_Out,
    });
    self.box_CultLocation_Cleanup_Manager_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Cleanup_Manager.debug.lua");
    l0 = self.box_CultLocation_Cleanup_Manager_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Cleanup_Manager_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|495700620");
    l0:SetConnections({
    });
    self.box_PhysicsModifier_10 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|1314124027");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_7 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|1372270164");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_7_Done,
    });
    self.box_PhysicsModifier_9 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|1720367895");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_9_Disabled,
    });
    self.box_Delay_v5_8 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|2138875288");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_8_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Brick_Cult_Location_Cinematic_V2_Main_1();
    l0 = self.box_Brick_Cult_Location_Cinematic_V2_Main_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|652500001", "652500001", "D2_Outpost_01_Cinematic", "In", "box_Brick_Cult_Location_Cinematic_V2_Main_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_16_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_CultLocation_Cleanup_Manager_2();
    l0 = self.box_CultLocation_Cleanup_Manager_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|1965833413", "1965833413", "D2_Outpost_01_Cinematic", "box_MissionBlockLayer_16.Activated", "box_CultLocation_Cleanup_Manager_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Brick_Cult_Location_Cinematic_V2_Main_1_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = self.box_Brick_Cult_Location_Cinematic_V2_Main_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|151216255", "151216255", "D2_Outpost_01_Cinematic", "box_Brick_Cult_Location_Cinematic_V2_Main_1.FadedOut", "box_OutputOrder_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Cinematic_V2_Main_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = self.box_Brick_Cult_Location_Cinematic_V2_Main_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|541919818", "541919818", "D2_Outpost_01_Cinematic", "box_Brick_Cult_Location_Cinematic_V2_Main_1.Out", "box_OutputOrder_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_6();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|1322077294", "1322077294", "D2_Outpost_01_Cinematic", "box_OutputOrder_v2_14.Out", "box_IsEntityLoaded_v3_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_13();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|2047441184", "2047441184", "D2_Outpost_01_Cinematic", "box_OutputOrder_v2_14.Out", "box_SetContextualStrategy_13.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_6_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v2_5();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|1800073647", "1800073647", "D2_Outpost_01_Cinematic", "box_IsEntityLoaded_v3_6.False", "box_IsPawnAlive_v2_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_15();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|1953545333", "1953545333", "D2_Outpost_01_Cinematic", "box_OutputOrder_v2_17.Out", "box_SetContextualStrategy_15.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_3();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|438460920", "438460920", "D2_Outpost_01_Cinematic", "box_OutputOrder_v2_17.Out", "box_ActivityEnd_3.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_7_Done()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_10();
    l0 = self.box_PositionModifier_v2_7;
    l1 = self.box_PhysicsModifier_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|789388741", "789388741", "D2_Outpost_01_Cinematic", "box_PositionModifier_v2_7.Done", "box_PhysicsModifier_10.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_16();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|1806925391", "1806925391", "D2_Outpost_01_Cinematic", "box_OutputOrder_v2_12.Out", "box_MissionBlockLayer_16.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_8();
    l0 = self.box_Delay_v5_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|1319860080", "1319860080", "D2_Outpost_01_Cinematic", "box_OutputOrder_v2_12.Out", "box_Delay_v5_8.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PhysicsModifier_9_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_7();
    l0 = self.box_PhysicsModifier_9;
    l1 = self.box_PositionModifier_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|294902861", "294902861", "D2_Outpost_01_Cinematic", "box_PhysicsModifier_9.Disabled", "box_PositionModifier_v2_7.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_4_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_9();
    l0 = self.box_PhysicsModifier_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|1432596713", "1432596713", "D2_Outpost_01_Cinematic", "box_SetContextualStrategy_4.Out", "box_PhysicsModifier_9.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_IsPawnAlive_v2_5_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_4();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|47965960", "47965960", "D2_Outpost_01_Cinematic", "box_IsPawnAlive_v2_5.True", "box_SetContextualStrategy_4.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_8_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = self.box_Delay_v5_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|72125547", "72125547", "D2_Outpost_01_Cinematic", "box_Delay_v5_8.TimeElapsed", "box_OutputOrder_v2_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_MissionBlockLayer_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|84992993");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_16_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "18152987365172948",
        -- missionLayerId,
        [1] = "36167385874654938",
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Cinematic_V2_Main_1()
    local params;
    params = {
        -- bUseFadeInAtEnd,
        [0] = false,
        -- CS_CINEMA_Outpost_Animals,
        [1] = "2095053194529870857",
        -- eSceneEntity,
        [2] = "2098424445159895685",
        -- IsFaithCelebration,
        [3] = false,
        -- sSequenceFile,
        [4] = "sequences/zeta_main/D2/kilburn_farm_celebration_cin.seq",
        -- TeleportDestination,
        [5] = "2095079472184172679",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|340769769");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105737743127562305",
        -- Group,
        [1] = "#CF7FE9D0",
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Cleanup_Manager_2()
    local params;
    params = {
        -- Global_Veh_List,
        [0] = Globals.D2_Outpost_01.Veh_List,
        -- Vehicle_Group,
        [2] = "#AEDD6856",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|516682150");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|551549366");
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
                [0] = self.f_box_OutputOrder_v2_14_Out_0,
                [1] = self.f_box_OutputOrder_v2_14_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|1011707797");
    l0:SetConnections({
    });
    params = {
        -- Group,
        [1] = "#CF7FE9D0",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|1134731094");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_6_False,
    });
    params = {
        -- entityId,
        [0] = "2104049310999004034",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|1183017405");
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
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_10()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104049310999004032",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_7()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2104147972783623025",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104049310999004032",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|1696688713");
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_9()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104049310999004032",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|1883672656");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_4_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2102706064163092245",
        -- Group,
        [1] = "#6BB76BF3",
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_01.domino|@D2_Outpost_01_Cinematic|2026165724");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsPawnAlive_v2_5_True,
    });
    params = {
        -- Pawn,
        [0] = "2104049310999004032",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_8()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
